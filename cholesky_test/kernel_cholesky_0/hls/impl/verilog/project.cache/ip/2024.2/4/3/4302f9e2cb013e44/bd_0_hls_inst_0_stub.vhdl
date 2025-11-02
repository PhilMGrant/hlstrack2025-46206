-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Nov  2 11:32:31 2025
-- Host        : TheJackdaw running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    matrixAStrm_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    matrixAStrm_empty_n : in STD_LOGIC;
    matrixAStrm_read : out STD_LOGIC;
    matrixLStrm_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    matrixLStrm_full_n : in STD_LOGIC;
    matrixLStrm_write : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,kernel_cholesky_0,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,kernel_cholesky_0,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=kernel_cholesky_0,x_ipVersion=1.0,x_ipCoreRevision=2114330489,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst,ap_done,ap_idle,ap_ready,ap_start,ap_return[31:0],matrixAStrm_dout[31:0],matrixAStrm_empty_n,matrixAStrm_read,matrixLStrm_din[31:0],matrixLStrm_full_n,matrixLStrm_write";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 166000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_MODE of ap_rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_MODE of ap_done : signal is "slave";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of ap_return : signal is "xilinx.com:signal:data:1.0 ap_return DATA";
  attribute X_INTERFACE_MODE of ap_return : signal is "master";
  attribute X_INTERFACE_PARAMETER of ap_return : signal is "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of matrixAStrm_dout : signal is "xilinx.com:interface:acc_fifo_read:1.0 matrixAStrm RD_DATA";
  attribute X_INTERFACE_MODE of matrixAStrm_dout : signal is "master";
  attribute X_INTERFACE_INFO of matrixAStrm_empty_n : signal is "xilinx.com:interface:acc_fifo_read:1.0 matrixAStrm EMPTY_N";
  attribute X_INTERFACE_INFO of matrixAStrm_read : signal is "xilinx.com:interface:acc_fifo_read:1.0 matrixAStrm RD_EN";
  attribute X_INTERFACE_INFO of matrixLStrm_din : signal is "xilinx.com:interface:acc_fifo_write:1.0 matrixLStrm WR_DATA";
  attribute X_INTERFACE_MODE of matrixLStrm_din : signal is "master";
  attribute X_INTERFACE_INFO of matrixLStrm_full_n : signal is "xilinx.com:interface:acc_fifo_write:1.0 matrixLStrm FULL_N";
  attribute X_INTERFACE_INFO of matrixLStrm_write : signal is "xilinx.com:interface:acc_fifo_write:1.0 matrixLStrm WR_EN";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "kernel_cholesky_0,Vivado 2024.2";
begin
end;
