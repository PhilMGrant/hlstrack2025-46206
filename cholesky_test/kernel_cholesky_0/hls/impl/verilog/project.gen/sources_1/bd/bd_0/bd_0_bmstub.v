// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module bd_0 (
  ap_clk,
  ap_return,
  ap_rst,
  ap_ctrl_done,
  ap_ctrl_idle,
  ap_ctrl_ready,
  ap_ctrl_start,
  matrixAStrm_rd_data,
  matrixAStrm_empty_n,
  matrixAStrm_rd_en,
  matrixLStrm_wr_data,
  matrixLStrm_full_n,
  matrixLStrm_wr_en
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.AP_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, FREQ_HZ 166000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, ASSOCIATED_RESET ap_rst, INSERT_VIP 0" *)
  input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.AP_RETURN DATA" *)
  (* X_INTERFACE_MODE = "master DATA.AP_RETURN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.AP_RETURN, LAYERED_METADATA undef" *)
  output [31:0]ap_return;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *)
  (* X_INTERFACE_MODE = "slave RST.AP_RST" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
  (* X_INTERFACE_MODE = "slave ap_ctrl" *)
  output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
  output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
  output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
  input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 matrixAStrm RD_DATA" *)
  (* X_INTERFACE_MODE = "master matrixAStrm" *)
  input [31:0]matrixAStrm_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 matrixAStrm EMPTY_N" *)
  input matrixAStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 matrixAStrm RD_EN" *)
  output matrixAStrm_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 matrixLStrm WR_DATA" *)
  (* X_INTERFACE_MODE = "master matrixLStrm" *)
  output [31:0]matrixLStrm_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 matrixLStrm FULL_N" *)
  input matrixLStrm_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 matrixLStrm WR_EN" *)
  output matrixLStrm_wr_en;

  // stub module has no contents

endmodule
