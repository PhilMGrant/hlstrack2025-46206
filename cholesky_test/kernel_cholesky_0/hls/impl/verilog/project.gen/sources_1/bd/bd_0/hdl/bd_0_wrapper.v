//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Sun Nov  2 11:30:18 2025
//Host        : TheJackdaw running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_return,
    ap_rst,
    matrixAStrm_empty_n,
    matrixAStrm_rd_data,
    matrixAStrm_rd_en,
    matrixLStrm_full_n,
    matrixLStrm_wr_data,
    matrixLStrm_wr_en);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  output [31:0]ap_return;
  input ap_rst;
  input matrixAStrm_empty_n;
  input [31:0]matrixAStrm_rd_data;
  output matrixAStrm_rd_en;
  input matrixLStrm_full_n;
  output [31:0]matrixLStrm_wr_data;
  output matrixLStrm_wr_en;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire [31:0]ap_return;
  wire ap_rst;
  wire matrixAStrm_empty_n;
  wire [31:0]matrixAStrm_rd_data;
  wire matrixAStrm_rd_en;
  wire matrixLStrm_full_n;
  wire [31:0]matrixLStrm_wr_data;
  wire matrixLStrm_wr_en;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_return(ap_return),
        .ap_rst(ap_rst),
        .matrixAStrm_empty_n(matrixAStrm_empty_n),
        .matrixAStrm_rd_data(matrixAStrm_rd_data),
        .matrixAStrm_rd_en(matrixAStrm_rd_en),
        .matrixLStrm_full_n(matrixLStrm_full_n),
        .matrixLStrm_wr_data(matrixLStrm_wr_data),
        .matrixLStrm_wr_en(matrixLStrm_wr_en));
endmodule
