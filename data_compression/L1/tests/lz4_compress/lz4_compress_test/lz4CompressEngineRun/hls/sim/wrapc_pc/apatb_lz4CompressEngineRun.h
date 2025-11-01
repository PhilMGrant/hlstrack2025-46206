// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_lz4CompressEngineRun (
hls::stream<int > inStream,
hls::stream<int > lz4Out,
hls::stream<int > lz4Out_eos,
hls::stream<int > lz4OutSize,
volatile void* max_lit_limit,
int input_size,
int core_idx);
