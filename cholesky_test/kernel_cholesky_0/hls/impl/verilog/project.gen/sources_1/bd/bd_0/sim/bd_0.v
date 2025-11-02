//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Sun Nov  2 11:30:18 2025
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
    ap_return,
    ap_rst,
    matrixAStrm_empty_n,
    matrixAStrm_rd_data,
    matrixAStrm_rd_en,
    matrixLStrm_full_n,
    matrixLStrm_wr_data,
    matrixLStrm_wr_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 166000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) (* X_INTERFACE_MODE = "Slave" *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.AP_RETURN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.AP_RETURN, LAYERED_METADATA undef" *) output [31:0]ap_return;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 matrixAStrm EMPTY_N" *) (* X_INTERFACE_MODE = "Master" *) input matrixAStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 matrixAStrm RD_DATA" *) input [31:0]matrixAStrm_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 matrixAStrm RD_EN" *) output matrixAStrm_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 matrixLStrm FULL_N" *) (* X_INTERFACE_MODE = "Master" *) input matrixLStrm_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 matrixLStrm WR_DATA" *) output [31:0]matrixLStrm_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 matrixLStrm WR_EN" *) output matrixLStrm_wr_en;

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

  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk),
        .ap_done(ap_ctrl_done),
        .ap_idle(ap_ctrl_idle),
        .ap_ready(ap_ctrl_ready),
        .ap_return(ap_return),
        .ap_rst(ap_rst),
        .ap_start(ap_ctrl_start),
        .matrixAStrm_dout(matrixAStrm_rd_data),
        .matrixAStrm_empty_n(matrixAStrm_empty_n),
        .matrixAStrm_read(matrixAStrm_rd_en),
        .matrixLStrm_din(matrixLStrm_wr_data),
        .matrixLStrm_full_n(matrixLStrm_full_n),
        .matrixLStrm_write(matrixLStrm_wr_en));
endmodule
