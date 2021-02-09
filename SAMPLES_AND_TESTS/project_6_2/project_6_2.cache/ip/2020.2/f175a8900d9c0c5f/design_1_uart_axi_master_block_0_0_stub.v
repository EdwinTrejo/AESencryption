// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jan 25 14:35:21 2021
// Host        : DESKTOP-07B1725 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_axi_master_block_0_0_stub.v
// Design      : design_1_uart_axi_master_block_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_axi_master_block,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, held_data, interrupt, s_axi_araddr, 
  s_axi_arready, s_axi_arvalid, s_axi_awaddr, s_axi_awready, s_axi_awvalid, s_axi_bready, 
  s_axi_bresp, s_axi_bvalid, s_axi_rdata, s_axi_rready, s_axi_rresp, s_axi_rvalid, s_axi_wdata, 
  s_axi_wready, s_axi_wstrb, s_axi_wvalid)
/* synthesis syn_black_box black_box_pad_pin="clk,held_data[31:0],interrupt,s_axi_araddr[3:0],s_axi_arready,s_axi_arvalid,s_axi_awaddr[3:0],s_axi_awready,s_axi_awvalid,s_axi_bready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_rdata[31:0],s_axi_rready,s_axi_rresp[1:0],s_axi_rvalid,s_axi_wdata[31:0],s_axi_wready,s_axi_wstrb[3:0],s_axi_wvalid" */;
  input clk;
  output [31:0]held_data;
  input interrupt;
  output [3:0]s_axi_araddr;
  input s_axi_arready;
  output s_axi_arvalid;
  output [3:0]s_axi_awaddr;
  input s_axi_awready;
  output s_axi_awvalid;
  output s_axi_bready;
  input [1:0]s_axi_bresp;
  input s_axi_bvalid;
  input [31:0]s_axi_rdata;
  output s_axi_rready;
  input [1:0]s_axi_rresp;
  input s_axi_rvalid;
  output [31:0]s_axi_wdata;
  input s_axi_wready;
  output [3:0]s_axi_wstrb;
  output s_axi_wvalid;
endmodule
