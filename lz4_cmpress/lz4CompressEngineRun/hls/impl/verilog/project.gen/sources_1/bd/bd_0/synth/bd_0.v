//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Fri Oct 31 14:51:54 2025
//Host        : TheJackdaw running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    core_idx,
    inStream_empty_n,
    inStream_rd_data,
    inStream_rd_en,
    input_size,
    lz4OutSize_full_n,
    lz4OutSize_wr_data,
    lz4OutSize_wr_en,
    lz4Out_eos_full_n,
    lz4Out_eos_wr_data,
    lz4Out_eos_wr_en,
    lz4Out_full_n,
    lz4Out_wr_data,
    lz4Out_wr_en,
    max_lit_limit_address0,
    max_lit_limit_address1,
    max_lit_limit_ce0,
    max_lit_limit_ce1,
    max_lit_limit_d0,
    max_lit_limit_d1,
    max_lit_limit_q0,
    max_lit_limit_q1,
    max_lit_limit_we0,
    max_lit_limit_we1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 142000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) (* X_INTERFACE_MODE = "Slave" *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.CORE_IDX DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.CORE_IDX, LAYERED_METADATA undef" *) input [31:0]core_idx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 inStream EMPTY_N" *) (* X_INTERFACE_MODE = "Master" *) input inStream_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 inStream RD_DATA" *) input [7:0]inStream_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 inStream RD_EN" *) output inStream_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.INPUT_SIZE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.INPUT_SIZE, LAYERED_METADATA undef" *) input [31:0]input_size;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4OutSize FULL_N" *) (* X_INTERFACE_MODE = "Master" *) input lz4OutSize_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4OutSize WR_DATA" *) output [31:0]lz4OutSize_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4OutSize WR_EN" *) output lz4OutSize_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out_eos FULL_N" *) (* X_INTERFACE_MODE = "Master" *) input lz4Out_eos_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out_eos WR_DATA" *) output lz4Out_eos_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out_eos WR_EN" *) output lz4Out_eos_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out FULL_N" *) (* X_INTERFACE_MODE = "Master" *) input lz4Out_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out WR_DATA" *) output [7:0]lz4Out_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out WR_EN" *) output lz4Out_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MAX_LIT_LIMIT_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MAX_LIT_LIMIT_ADDRESS0, LAYERED_METADATA undef" *) output [2:0]max_lit_limit_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MAX_LIT_LIMIT_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MAX_LIT_LIMIT_ADDRESS1, LAYERED_METADATA undef" *) output [2:0]max_lit_limit_address1;
  output max_lit_limit_ce0;
  output max_lit_limit_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MAX_LIT_LIMIT_D0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MAX_LIT_LIMIT_D0, LAYERED_METADATA undef" *) output [31:0]max_lit_limit_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MAX_LIT_LIMIT_D1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MAX_LIT_LIMIT_D1, LAYERED_METADATA undef" *) output [31:0]max_lit_limit_d1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MAX_LIT_LIMIT_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MAX_LIT_LIMIT_Q0, LAYERED_METADATA undef" *) input [31:0]max_lit_limit_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MAX_LIT_LIMIT_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MAX_LIT_LIMIT_Q1, LAYERED_METADATA undef" *) input [31:0]max_lit_limit_q1;
  output max_lit_limit_we0;
  output max_lit_limit_we1;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [31:0]core_idx;
  wire inStream_empty_n;
  wire [7:0]inStream_rd_data;
  wire inStream_rd_en;
  wire [31:0]input_size;
  wire lz4OutSize_full_n;
  wire [31:0]lz4OutSize_wr_data;
  wire lz4OutSize_wr_en;
  wire lz4Out_eos_full_n;
  wire lz4Out_eos_wr_data;
  wire lz4Out_eos_wr_en;
  wire lz4Out_full_n;
  wire [7:0]lz4Out_wr_data;
  wire lz4Out_wr_en;
  wire [2:0]max_lit_limit_address0;
  wire [2:0]max_lit_limit_address1;
  wire max_lit_limit_ce0;
  wire max_lit_limit_ce1;
  wire [31:0]max_lit_limit_d0;
  wire [31:0]max_lit_limit_d1;
  wire [31:0]max_lit_limit_q0;
  wire [31:0]max_lit_limit_q1;
  wire max_lit_limit_we0;
  wire max_lit_limit_we1;

  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk),
        .ap_done(ap_ctrl_done),
        .ap_idle(ap_ctrl_idle),
        .ap_ready(ap_ctrl_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_ctrl_start),
        .core_idx(core_idx),
        .inStream_dout(inStream_rd_data),
        .inStream_empty_n(inStream_empty_n),
        .inStream_read(inStream_rd_en),
        .input_size(input_size),
        .lz4OutSize_din(lz4OutSize_wr_data),
        .lz4OutSize_full_n(lz4OutSize_full_n),
        .lz4OutSize_write(lz4OutSize_wr_en),
        .lz4Out_din(lz4Out_wr_data),
        .lz4Out_eos_din(lz4Out_eos_wr_data),
        .lz4Out_eos_full_n(lz4Out_eos_full_n),
        .lz4Out_eos_write(lz4Out_eos_wr_en),
        .lz4Out_full_n(lz4Out_full_n),
        .lz4Out_write(lz4Out_wr_en),
        .max_lit_limit_address0(max_lit_limit_address0),
        .max_lit_limit_address1(max_lit_limit_address1),
        .max_lit_limit_ce0(max_lit_limit_ce0),
        .max_lit_limit_ce1(max_lit_limit_ce1),
        .max_lit_limit_d0(max_lit_limit_d0),
        .max_lit_limit_d1(max_lit_limit_d1),
        .max_lit_limit_q0(max_lit_limit_q0),
        .max_lit_limit_q1(max_lit_limit_q1),
        .max_lit_limit_we0(max_lit_limit_we0),
        .max_lit_limit_we1(max_lit_limit_we1));
endmodule
