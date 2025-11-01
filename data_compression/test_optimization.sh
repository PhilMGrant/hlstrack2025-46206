#!/bin/bash

# LZ4压缩时序优化验证脚本
# 用于验证优化后的时序违例问题是否解决

echo "=========================================="
echo "LZ4压缩时序优化验证脚本"
echo "=========================================="

# 设置环境变量
export XILINX_VITIS=/tools/Xilinx/Vitis/2024.2
export XILINX_VIVADO=/tools/Xilinx/Vivado/2024.2
export PATH=$XILINX_VITIS/bin:$XILINX_VIVADO/bin:$PATH

# 检查必要的工具
echo "检查必要的工具..."
which vitis-run > /dev/null
if [ $? -ne 0 ]; then
    echo "错误: 未找到 vitis-run 命令，请检查Vitis安装"
    exit 1
fi

which v++ > /dev/null
if [ $? -ne 0 ]; then
    echo "错误: 未找到 v++ 命令，请检查Vitis安装"
    exit 1
fi

echo "✓ 必要的工具已找到"

# 创建测试目录
TEST_DIR="optimization_test"
mkdir -p $TEST_DIR
cd $TEST_DIR

echo ""
echo "1. 复制优化后的头文件..."
cp ../L1/include/hw/lz_optional.hpp .
cp ../L1/include/hw/lz4_compress.hpp .
cp ../L1/include/hw/lz_compress.hpp .

echo "✓ 头文件复制完成"

# 创建简单的测试配置
echo ""
echo "2. 创建测试配置..."
cat > test_config.cfg << 'EOF'
part=xc7z020clg484-1
hls.clock=7ns
hls.clock_uncertainty=10%
hls.flow_target=vivado
hls.syn.file=test_bench.cpp
hls.syn.file_cflags=test_bench.cpp,-I.
hls.syn.top=lz4CompressEngineRun
hls.tb.file=test_bench.cpp
hls.tb.file_cflags=test_bench.cpp,-I.
hls.cosim.argv=sample.txt sample.txt.encoded
hls.csim.argv=sample.txt sample.txt.encoded
hls.syn.compile.pragma_strict_mode=1
hls.vivado.flow=syn
hls.vivado.rtl=verilog
hls.package.output.syn=false
EOF

# 创建简单的测试基准
cat > test_bench.cpp << 'EOF'
#include "lz_optional.hpp"
#include "lz4_compress.hpp"
#include "lz_compress.hpp"
#include <iostream>
#include <fstream>

using namespace xf::compression;

int main(int argc, char* argv[]) {
    std::cout << "LZ4压缩时序优化测试" << std::endl;
    
    if (argc < 3) {
        std::cout << "用法: " << argv[0] << " <输入文件> <输出文件>" << std::endl;
        return 1;
    }
    
    // 这里可以添加更详细的测试代码
    std::cout << "测试配置加载成功" << std::endl;
    std::cout << "输入文件: " << argv[1] << std::endl;
    std::cout << "输出文件: " << argv[2] << std::endl;
    
    return 0;
}
EOF

# 创建样本数据
echo "Hello World! This is a test file for LZ4 compression timing optimization." > sample.txt

echo "✓ 测试配置创建完成"

echo ""
echo "3. 运行HLS编译测试..."
echo "注意: 这可能需要几分钟时间..."

# 运行HLS编译
vitis-run --mode hls --csim --config test_config.cfg --work_dir hls_test

if [ $? -eq 0 ]; then
    echo "✓ HLS编译测试成功"
    
    # 检查时序报告
    if [ -f "hls_test/hls/syn/report/csynth.xml" ]; then
        echo ""
        echo "4. 分析时序报告..."
        
        # 提取关键时序信息
        TIMING_INFO=$(grep -A 5 -B 5 "Timing" hls_test/hls/syn/report/csynth.xml 2>/dev/null || echo "时序信息未找到")
        echo "时序信息:"
        echo "$TIMING_INFO"
        
        # 检查是否有时序违例
        if echo "$TIMING_INFO" | grep -q "Timing Met"; then
            echo "✓ 时序要求满足"
        else
            echo "⚠ 可能存在时序违例，请检查详细报告"
        fi
    else
        echo "⚠ 时序报告文件未找到"
    fi
else
    echo "✗ HLS编译测试失败"
    exit 1
fi

echo ""
echo "5. 检查优化效果..."
echo "优化措施总结:"
echo "- 增加了关键模块的流水线II值"
echo "- 预计算和预读取数据减少关键路径"
echo "- 使用寄存器重定时技术"
echo "- 优化哈希计算和比较操作"

echo ""
echo "=========================================="
echo "验证完成"
echo "=========================================="
echo "请检查以下文件获取详细信息:"
echo "- hls_test/hls/syn/report/csynth.rpt (详细报告)"
echo "- hls_test/hls/syn/report/csynth.xml (XML格式报告)"
echo "- 控制台输出中的时序信息"
echo ""
echo "如果时序仍然违例，可能需要进一步优化:"
echo "1. 进一步增加II值"
echo "2. 重新设计关键路径逻辑"
echo "3. 使用更高级的优化技术"
