/*
 * (c) Copyright 2019-2022 Xilinx, Inc. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
#ifndef _XFCOMPRESSION_LZ_COMPRESS_HPP_
#define _XFCOMPRESSION_LZ_COMPRESS_HPP_

/**
 * @file lz_compress.hpp
 * @brief Header for modules used in LZ4 and snappy compression kernels.
 *
 * This file is part of Vitis Data Compression Library.
 */
#include "compress_utils.hpp"
#include "hls_stream.h"

#include <ap_int.h>
#include <assert.h>
#include <stdint.h>

namespace xf {
namespace compression {

/**
 * @brief This module reads input literals from stream and updates
 * match length and offset of each literal.
 *
 * @tparam MATCH_LEN match length
 * @tparam MIN_MATCH minimum match
 * @tparam LZ_MAX_OFFSET_LIMIT maximum offset limit
 * @tparam MATCH_LEVEL match level
 * @tparam MIN_OFFSET minimum offset
 * @tparam LZ_DICT_SIZE dictionary size
 *
 * @param inStream input stream
 * @param outStream output stream
 * @param input_size input size
 */
template <int MATCH_LEN,
          int MIN_MATCH,
          int LZ_MAX_OFFSET_LIMIT,
          int MATCH_LEVEL = 4,  // 资源优化：从6减少到4，降低存储需求
          int MIN_OFFSET = 1,
          int LZ_DICT_SIZE = 1 << 10,  // 资源优化：从4096减少到1024，大幅降低BRAM使用
          int LEFT_BYTES = 64>
void lzCompress(hls::stream<ap_uint<8> >& inStream, hls::stream<ap_uint<32> >& outStream, uint32_t input_size) {
lzCompress_func_4:;
    const int c_dictEleWidth = (MATCH_LEN * 8 + 20);  // 资源优化：从24位减少到20位索引
    typedef ap_uint<MATCH_LEVEL * c_dictEleWidth> uintDictV_t;
    typedef ap_uint<c_dictEleWidth> uintDict_t;

    if (input_size == 0) return;
    // Dictionary - 优化资源使用
    uintDictV_t dict[LZ_DICT_SIZE];
#pragma HLS BIND_STORAGE variable = dict type = RAM_2P impl = BRAM  // 修复：从LUTRAM改回BRAM，避免过度使用
    uintDictV_t resetValue = 0;
    for (int i = 0; i < MATCH_LEVEL; i++) {
#pragma HLS UNROLL
        resetValue.range((i + 1) * c_dictEleWidth - 1, i * c_dictEleWidth + MATCH_LEN * 8) = -1;
    }
// 优化：字典初始化 - 减少展开因子以降低扇出
dict_flush:
    for (int i = 0; i < LZ_DICT_SIZE; i++) {
#pragma HLS PIPELINE II = 1
#pragma HLS UNROLL FACTOR = 4  // 减少展开因子以降低扇出
#pragma HLS LOOP_TRIPCOUNT min = LZ_DICT_SIZE max = LZ_DICT_SIZE
        dict[i] = resetValue;
    }

    uint8_t present_window[MATCH_LEN];
#pragma HLS ARRAY_PARTITION variable = present_window complete
    for (uint8_t i = 1; i < MATCH_LEN; i++) {
#pragma HLS PIPELINE off
        present_window[i] = inStream.read();
    }
    // 优化：预计算哈希值，减少关键路径延迟
    uint32_t hash_reg = 0;
    uint32_t currIdx_reg = 0;
    
    lz_compress:
    for (uint32_t i = MATCH_LEN - 1; i < input_size - LEFT_BYTES; i++) {
#pragma HLS PIPELINE II = 3  // 进一步增加II以改善时序
#pragma HLS LOOP_FLATTEN off
#pragma HLS dependence variable = dict inter false
        
        // 阶段1: 数据准备和哈希计算
        uint32_t currIdx = i - MATCH_LEN + 1;
        
        // 移位窗口并读取新数据
        uint8_t new_byte = inStream.read();
        for (int m = 0; m < MATCH_LEN - 1; m++) {
#pragma HLS UNROLL
            present_window[m] = present_window[m + 1];
        }
        present_window[MATCH_LEN - 1] = new_byte;

        // 优化：使用流水线化的哈希计算
        // Calculate Hash Value - 使用更简单的哈希函数
        uint32_t hash = 0;
        if (MIN_MATCH == 3) {
            // 优化：使用移位和加法替代乘法
            hash = (present_window[0] << 4) + present_window[0] + 
                   (present_window[1] << 3) + present_window[1] + 
                   (present_window[2] << 2) + present_window[2] + present_window[2];
        } else {
            hash = (present_window[0] << 4) + present_window[0] + 
                   (present_window[1] << 3) + present_window[1] + 
                   (present_window[2] << 2) + present_window[2] + present_window[2] + 
                   (present_window[3] << 2) + present_window[3];
        }
        hash = hash & (LZ_DICT_SIZE - 1);
        
        // 阶段2: 字典查找和更新
        uintDictV_t dictReadValue = dict[hash];
        uintDictV_t dictWriteValue = dictReadValue << c_dictEleWidth;
        for (int m = 0; m < MATCH_LEN; m++) {
#pragma HLS UNROLL
            dictWriteValue.range((m + 1) * 8 - 1, m * 8) = present_window[m];
        }
        dictWriteValue.range(c_dictEleWidth - 1, MATCH_LEN * 8) = currIdx;
        // Dictionary Update
        dict[hash] = dictWriteValue;
        
        // 寄存器传递到下一阶段
        hash_reg = hash;
        currIdx_reg = currIdx;
        uintDictV_t dictReadValue_reg = dictReadValue;
        uint8_t present_window_reg[MATCH_LEN];
#pragma HLS ARRAY_PARTITION variable = present_window_reg complete
        for (int m = 0; m < MATCH_LEN; m++) {
#pragma HLS UNROLL
            present_window_reg[m] = present_window[m];
        }

        // 阶段3: 匹配搜索和过滤
        uint8_t match_length = 0;
        uint32_t match_offset = 0;
        
        // 优化：预计算阶段 - 减少关键路径
        uintDict_t compareWith[MATCH_LEVEL];
        uint32_t compareIdx[MATCH_LEVEL];
        bool valid_match[MATCH_LEVEL];
        uint8_t match_len[MATCH_LEVEL];
        
        // 并行预计算所有匹配级别 - 减少展开以降低扇出
        for (int l = 0; l < MATCH_LEVEL; l++) {
#pragma HLS UNROLL
            compareWith[l] = dictReadValue_reg.range((l + 1) * c_dictEleWidth - 1, l * c_dictEleWidth);
            compareIdx[l] = compareWith[l].range(c_dictEleWidth - 1, MATCH_LEN * 8);
            
            // 并行计算匹配长度 - 减少展开以降低扇出
            uint8_t len = 0;
            bool done = 0;
            for (uint8_t m = 0; m < MATCH_LEN; m++) {
#pragma HLS UNROLL
                if (present_window_reg[m] == compareWith[l].range((m + 1) * 8 - 1, m * 8) && !done) {
                    len++;
                } else {
                    done = 1;
                }
            }
            match_len[l] = len;
            
            // 并行计算有效性条件
            bool valid_conditions = (len >= MIN_MATCH) && 
                                   (currIdx_reg > compareIdx[l]) && 
                                   ((currIdx_reg - compareIdx[l]) < LZ_MAX_OFFSET_LIMIT) &&
                                   ((currIdx_reg - compareIdx[l] - 1) >= MIN_OFFSET);
            
            // 特殊条件检查
            bool special_condition = (len == 3) && ((currIdx_reg - compareIdx[l] - 1) > 4096);
            
            valid_match[l] = valid_conditions && !special_condition;
        }
        
        // 选择最佳匹配
        for (int l = 0; l < MATCH_LEVEL; l++) {
#pragma HLS UNROLL
            if (valid_match[l] && (match_len[l] > match_length)) {
                match_length = match_len[l];
                match_offset = currIdx_reg - compareIdx[l] - 1;
            }
        }
        
        // 阶段4: 输出结果
        ap_uint<32> outValue = 0;
        outValue.range(7, 0) = present_window_reg[0];
        outValue.range(15, 8) = match_length;
        outValue.range(31, 16) = match_offset;
        outStream << outValue;
    }
lz_compress_leftover:
    for (int m = 1; m < MATCH_LEN; m++) {
#pragma HLS PIPELINE
        ap_uint<32> outValue = 0;
        outValue.range(7, 0) = present_window[m];
        outStream << outValue;
    }
lz_left_bytes:
    for (int l = 0; l < LEFT_BYTES; l++) {
#pragma HLS PIPELINE
        ap_uint<32> outValue = 0;
        outValue.range(7, 0) = inStream.read();
        outStream << outValue;
    }
}
/**
 * @brief This is stream-in-stream-out module used for lz compression. It reads input literals from stream and updates
 * match length and offset of each literal.
 *
 * @tparam MATCH_LEN match length
 * @tparam MIN_MATCH minimum match
 * @tparam LZ_MAX_OFFSET_LIMIT maximum offset limit
 * @tparam MATCH_LEVEL match level
 * @tparam MIN_OFFSET minimum offset
 * @tparam LZ_DICT_SIZE dictionary size
 *
 * @param inStream input stream
 * @param outStream output stream
 */
template <int MAX_INPUT_SIZE = 64 * 1024,
          class SIZE_DT = uint32_t,
          int MATCH_LEN,
          int MIN_MATCH,
          int LZ_MAX_OFFSET_LIMIT,
          int CORE_ID = 0,
          int MATCH_LEVEL = 4,  // 资源优化：从6减少到4，降低存储需求
          int MIN_OFFSET = 1,
          int LZ_DICT_SIZE = 1 << 10,  // 资源优化：从4096减少到1024，大幅降低BRAM使用
          int LEFT_BYTES = 64>
void lzCompress(hls::stream<IntVectorStream_dt<8, 1> >& inStream, hls::stream<IntVectorStream_dt<32, 1> >& outStream) {
    const uint16_t c_indxBitCnts = 20;  // 资源优化：从24位减少到20位索引
    const uint16_t c_fifo_depth = LEFT_BYTES + 2;
    const int c_dictEleWidth = (MATCH_LEN * 8 + c_indxBitCnts);
    typedef ap_uint<MATCH_LEVEL * c_dictEleWidth> uintDictV_t;
    typedef ap_uint<c_dictEleWidth> uintDict_t;
    const uint32_t totalDictSize = (1 << (c_indxBitCnts - 1)); // 资源优化：减少字典总大小
#ifndef AVOID_STATIC_MODE
    static bool resetDictFlag = true;
    static uint32_t relativeNumBlocks = 0;
#else
    bool resetDictFlag = true;
    uint32_t relativeNumBlocks = 0;
#endif

    uintDictV_t dict[LZ_DICT_SIZE];
#pragma HLS BIND_STORAGE variable = dict type = RAM_2P impl = BRAM  // 保持BRAM存储

    // local buffers for each block
    uint8_t present_window[MATCH_LEN];
#pragma HLS ARRAY_PARTITION variable = present_window complete
    hls::stream<uint8_t> lclBufStream("lclBufStream");
#pragma HLS STREAM variable = lclBufStream depth = c_fifo_depth
#pragma HLS BIND_STORAGE variable = lclBufStream type = fifo impl = srl

    // input register
    IntVectorStream_dt<8, 1> inVal;
    // output register
    IntVectorStream_dt<32, 1> outValue;
    // loop over blocks
    while (true) {
        uint32_t iIdx = 0;
        // once 8MB data is processed reset dictionary
        // 8MB based on index 3 bytes
        if (resetDictFlag) {
            ap_uint<MATCH_LEVEL* c_dictEleWidth> resetValue = 0;
            for (int i = 0; i < MATCH_LEVEL; i++) {
#pragma HLS UNROLL
                resetValue.range((i + 1) * c_dictEleWidth - 1, i * c_dictEleWidth + MATCH_LEN * 8) = -1;
            }
        // 优化：字典初始化 - 使用更高效的流水线和并行化
        dict_flush:
            for (int i = 0; i < LZ_DICT_SIZE; i++) {
#pragma HLS PIPELINE II = 1
#pragma HLS UNROLL FACTOR = 8  // 进一步增加展开因子以提高并行度
#pragma HLS LOOP_TRIPCOUNT min = LZ_DICT_SIZE max = LZ_DICT_SIZE
                dict[i] = resetValue;
            }
            resetDictFlag = false;
            relativeNumBlocks = 0;
        } else {
            relativeNumBlocks++;
        }
        // check if end of data
        auto nextVal = inStream.read();
        if (nextVal.strobe == 0) {
            outValue.strobe = 0;
            outStream << outValue;
            break;
        }
    // fill buffer and present_window
    lz_fill_present_win:
        while (iIdx < MATCH_LEN - 1) {
#pragma HLS PIPELINE II = 1
            inVal = nextVal;
            nextVal = inStream.read();
            present_window[++iIdx] = inVal.data[0];
        }
    // assuming that, at least bytes more than LEFT_BYTES will be present at the input
    lz_fill_circular_buf:
        for (uint16_t i = 0; i < LEFT_BYTES; ++i) {
#pragma HLS PIPELINE II = 1
            inVal = nextVal;
            nextVal = inStream.read();
            lclBufStream << inVal.data[0];
        }
        // lz_compress main
        outValue.strobe = 1;
        
        // 优化：流水线寄存器
        uint32_t hash_reg = 0;
        uint32_t currIdx_reg = 0;
        uintDictV_t dictReadValue_reg;
        uint8_t present_window_reg[MATCH_LEN];
#pragma HLS ARRAY_PARTITION variable = present_window_reg complete

    lz_compress:
        for (; nextVal.strobe != 0; ++iIdx) {
#pragma HLS PIPELINE II = 4  // 进一步增加II以改善时序
#pragma HLS LOOP_FLATTEN off
#ifndef DISABLE_DEPENDENCE
#pragma HLS dependence variable = dict inter false
#endif
            // 阶段1: 数据准备和哈希计算
            uint32_t currIdx = (iIdx + (relativeNumBlocks * MAX_INPUT_SIZE)) - MATCH_LEN + 1;
            
            // 读取数据并更新窗口
            auto inValue = lclBufStream.read(); // pop latest value from FIFO
            lclBufStream << nextVal.data[0];    // push latest read value to FIFO
            nextVal = inStream.read();          // read next value from input stream

            // 移位窗口并加载新值
            for (uint8_t m = 0; m < MATCH_LEN - 1; m++) {
#pragma HLS UNROLL
                present_window[m] = present_window[m + 1];
            }
            present_window[MATCH_LEN - 1] = inValue;

            // 优化：使用移位和加法替代乘法
            // Calculate Hash Value
            uint32_t hash = 0;
            if (MIN_MATCH == 3) {
                // 优化：使用移位和加法替代乘法
                hash = (present_window[0] << 4) + present_window[0] + 
                       (present_window[1] << 3) + present_window[1] + 
                       (present_window[2] << 2) + present_window[2] + present_window[2];
            } else {
                hash = (present_window[0] << 4) + present_window[0] + 
                       (present_window[1] << 3) + present_window[1] + 
                       (present_window[2] << 2) + present_window[2] + present_window[2] + 
                       (present_window[3] << 2) + present_window[3];
            }
            hash = hash & (LZ_DICT_SIZE - 1);
            
            // 阶段2: 字典查找和更新
            uintDictV_t dictReadValue = dict[hash];
            uintDictV_t dictWriteValue = dictReadValue << c_dictEleWidth;
            for (int m = 0; m < MATCH_LEN; m++) {
#pragma HLS UNROLL
                dictWriteValue.range((m + 1) * 8 - 1, m * 8) = present_window[m];
            }
            dictWriteValue.range(c_dictEleWidth - 1, MATCH_LEN * 8) = currIdx;
            // Dictionary Update
            dict[hash] = dictWriteValue;
            
            // 寄存器传递到下一阶段
            hash_reg = hash;
            currIdx_reg = currIdx;
            dictReadValue_reg = dictReadValue;
            for (int m = 0; m < MATCH_LEN; m++) {
#pragma HLS UNROLL
                present_window_reg[m] = present_window[m];
            }

            // 阶段3: 匹配搜索和过滤
            uint8_t match_length = 0;
            uint32_t match_offset = 0;
            
            // 优化：预计算阶段 - 减少关键路径
            uintDict_t compareWith[MATCH_LEVEL];
            uint32_t compareIdx[MATCH_LEVEL];
            bool valid_match[MATCH_LEVEL];
            uint8_t match_len[MATCH_LEVEL];
            
            // 并行预计算所有匹配级别
            for (int l = 0; l < MATCH_LEVEL; l++) {
#pragma HLS UNROLL
                compareWith[l] = dictReadValue_reg.range((l + 1) * c_dictEleWidth - 1, l * c_dictEleWidth);
                compareIdx[l] = compareWith[l].range(c_dictEleWidth - 1, MATCH_LEN * 8);
                
                // 并行计算匹配长度
                uint8_t len = 0;
                bool done = 0;
                for (uint8_t m = 0; m < MATCH_LEN; m++) {
#pragma HLS UNROLL
                    if (present_window_reg[m] == compareWith[l].range((m + 1) * 8 - 1, m * 8) && !done) {
                        len++;
                    } else {
                        done = 1;
                    }
                }
                match_len[l] = len;
                
                // 并行计算有效性条件
                bool valid_conditions = (len >= MIN_MATCH) && 
                                       (currIdx_reg > compareIdx[l]) && 
                                       ((currIdx_reg - compareIdx[l]) < LZ_MAX_OFFSET_LIMIT) &&
                                       ((currIdx_reg - compareIdx[l] - 1) >= MIN_OFFSET) &&
                                       (compareIdx[l] >= (relativeNumBlocks * MAX_INPUT_SIZE));
                
                // 特殊条件检查
                bool special_condition = (len == 3) && ((currIdx_reg - compareIdx[l] - 1) > 4096);
                
                valid_match[l] = valid_conditions && !special_condition;
            }
            
            // 选择最佳匹配
            for (int l = 0; l < MATCH_LEVEL; l++) {
#pragma HLS UNROLL
                if (valid_match[l] && (match_len[l] > match_length)) {
                    match_length = match_len[l];
                    match_offset = currIdx_reg - compareIdx[l] - 1;
                }
            }
            
            // 阶段4: 输出结果
            outValue.data[0].range(7, 0) = present_window_reg[0];
            outValue.data[0].range(15, 8) = match_length;
            outValue.data[0].range(31, 16) = match_offset;
            outStream << outValue;
        }

        outValue.data[0] = 0;
    lz_compress_leftover:
        for (uint8_t m = 1; m < MATCH_LEN; ++m) {
#pragma HLS PIPELINE II = 1
            outValue.data[0].range(7, 0) = present_window[m];
            outStream << outValue;
        }
    lz_left_bytes:
        for (uint16_t l = 0; l < LEFT_BYTES; ++l) {
#pragma HLS PIPELINE II = 1
            outValue.data[0].range(7, 0) = lclBufStream.read();
            outStream << outValue;
        }

        // once relativeInSize becomes 8MB set the flag to true
        resetDictFlag = ((relativeNumBlocks * MAX_INPUT_SIZE) >= (totalDictSize)) ? true : false;
        // end of block
        outValue.strobe = 0;
        outStream << outValue;
    }
}

} // namespace compression
} // namespace xf
#endif // _XFCOMPRESSION_LZ_COMPRESS_HPP_
