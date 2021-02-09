// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jan 25 21:03:47 2021
// Host        : DESKTOP-07B1725 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_axi_master_block_0_0_sim_netlist.v
// Design      : design_1_uart_axi_master_block_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_axi_master_block_0_0,uart_axi_master_block,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "IPI" *) 
(* X_CORE_INFO = "uart_axi_master_block,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    held_data,
    interrupt,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    send_button);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_axi, FREQ_TOLERANCE_HZ 0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.HELD_DATA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.HELD_DATA, LAYERED_METADATA undef" *) output [31:0]held_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.INTERRUPT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.INTERRUPT, LAYERED_METADATA undef" *) input interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) output [3:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) input s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) output s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) output [3:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) input s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) output s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) output s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) input [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) input s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) input [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) output s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) input [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) input s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) output [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) input s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) output [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) output s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SEND_BUTTON DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SEND_BUTTON, LAYERED_METADATA undef" *) input send_button;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]held_data;
  wire interrupt;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;
  wire NLW_inst_s_axi_arvalid_UNCONNECTED;
  wire NLW_inst_s_axi_awvalid_UNCONNECTED;
  wire NLW_inst_s_axi_bready_UNCONNECTED;
  wire NLW_inst_s_axi_rready_UNCONNECTED;
  wire NLW_inst_s_axi_wvalid_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_araddr_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_awaddr_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_wstrb_UNCONNECTED;

  assign s_axi_araddr[3] = \<const0> ;
  assign s_axi_araddr[2] = \<const0> ;
  assign s_axi_araddr[1] = \<const0> ;
  assign s_axi_araddr[0] = \<const0> ;
  assign s_axi_arvalid = \<const1> ;
  assign s_axi_awaddr[3] = \<const0> ;
  assign s_axi_awaddr[2] = \<const0> ;
  assign s_axi_awaddr[1] = \<const0> ;
  assign s_axi_awaddr[0] = \<const0> ;
  assign s_axi_awvalid = \<const1> ;
  assign s_axi_bready = \<const0> ;
  assign s_axi_rready = \<const1> ;
  assign s_axi_wstrb[3] = \<const1> ;
  assign s_axi_wstrb[2] = \<const1> ;
  assign s_axi_wstrb[1] = \<const1> ;
  assign s_axi_wstrb[0] = \<const1> ;
  assign s_axi_wvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* HW_HANDOFF = "uart_axi_master_block.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block inst
       (.clk(1'b0),
        .held_data(held_data),
        .interrupt(interrupt),
        .s_axi_araddr(NLW_inst_s_axi_araddr_UNCONNECTED[3:0]),
        .s_axi_arready(1'b0),
        .s_axi_arvalid(NLW_inst_s_axi_arvalid_UNCONNECTED),
        .s_axi_awaddr(NLW_inst_s_axi_awaddr_UNCONNECTED[3:0]),
        .s_axi_awready(1'b0),
        .s_axi_awvalid(NLW_inst_s_axi_awvalid_UNCONNECTED),
        .s_axi_bready(NLW_inst_s_axi_bready_UNCONNECTED),
        .s_axi_bresp({1'b0,1'b0}),
        .s_axi_bvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(NLW_inst_s_axi_rready_UNCONNECTED),
        .s_axi_rresp({1'b0,1'b0}),
        .s_axi_rvalid(1'b0),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(1'b0),
        .s_axi_wstrb(NLW_inst_s_axi_wstrb_UNCONNECTED[3:0]),
        .s_axi_wvalid(NLW_inst_s_axi_wvalid_UNCONNECTED),
        .send_button(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master
   (held_data,
    s_axi_wdata,
    s_axi_rdata,
    interrupt);
  output [31:0]held_data;
  output [31:0]s_axi_wdata;
  input [31:0]s_axi_rdata;
  input interrupt;

  wire [31:0]held_data;
  wire interrupt;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;

  FDRE \held_data_reg[0] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[0]),
        .Q(held_data[0]),
        .R(1'b0));
  FDRE \held_data_reg[10] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[10]),
        .Q(held_data[10]),
        .R(1'b0));
  FDRE \held_data_reg[11] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[11]),
        .Q(held_data[11]),
        .R(1'b0));
  FDRE \held_data_reg[12] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[12]),
        .Q(held_data[12]),
        .R(1'b0));
  FDRE \held_data_reg[13] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[13]),
        .Q(held_data[13]),
        .R(1'b0));
  FDRE \held_data_reg[14] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[14]),
        .Q(held_data[14]),
        .R(1'b0));
  FDRE \held_data_reg[15] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[15]),
        .Q(held_data[15]),
        .R(1'b0));
  FDRE \held_data_reg[16] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[16]),
        .Q(held_data[16]),
        .R(1'b0));
  FDRE \held_data_reg[17] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[17]),
        .Q(held_data[17]),
        .R(1'b0));
  FDRE \held_data_reg[18] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[18]),
        .Q(held_data[18]),
        .R(1'b0));
  FDRE \held_data_reg[19] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[19]),
        .Q(held_data[19]),
        .R(1'b0));
  FDRE \held_data_reg[1] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[1]),
        .Q(held_data[1]),
        .R(1'b0));
  FDRE \held_data_reg[20] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[20]),
        .Q(held_data[20]),
        .R(1'b0));
  FDRE \held_data_reg[21] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[21]),
        .Q(held_data[21]),
        .R(1'b0));
  FDRE \held_data_reg[22] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[22]),
        .Q(held_data[22]),
        .R(1'b0));
  FDRE \held_data_reg[23] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[23]),
        .Q(held_data[23]),
        .R(1'b0));
  FDRE \held_data_reg[24] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[24]),
        .Q(held_data[24]),
        .R(1'b0));
  FDRE \held_data_reg[25] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[25]),
        .Q(held_data[25]),
        .R(1'b0));
  FDRE \held_data_reg[26] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[26]),
        .Q(held_data[26]),
        .R(1'b0));
  FDRE \held_data_reg[27] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[27]),
        .Q(held_data[27]),
        .R(1'b0));
  FDRE \held_data_reg[28] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[28]),
        .Q(held_data[28]),
        .R(1'b0));
  FDRE \held_data_reg[29] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[29]),
        .Q(held_data[29]),
        .R(1'b0));
  FDRE \held_data_reg[2] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[2]),
        .Q(held_data[2]),
        .R(1'b0));
  FDRE \held_data_reg[30] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[30]),
        .Q(held_data[30]),
        .R(1'b0));
  FDRE \held_data_reg[31] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[31]),
        .Q(held_data[31]),
        .R(1'b0));
  FDRE \held_data_reg[3] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[3]),
        .Q(held_data[3]),
        .R(1'b0));
  FDRE \held_data_reg[4] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[4]),
        .Q(held_data[4]),
        .R(1'b0));
  FDRE \held_data_reg[5] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[5]),
        .Q(held_data[5]),
        .R(1'b0));
  FDRE \held_data_reg[6] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[6]),
        .Q(held_data[6]),
        .R(1'b0));
  FDRE \held_data_reg[7] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[7]),
        .Q(held_data[7]),
        .R(1'b0));
  FDRE \held_data_reg[8] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[8]),
        .Q(held_data[8]),
        .R(1'b0));
  FDRE \held_data_reg[9] 
       (.C(interrupt),
        .CE(1'b1),
        .D(s_axi_rdata[9]),
        .Q(held_data[9]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[0] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[0]),
        .Q(s_axi_wdata[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[10] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[10]),
        .Q(s_axi_wdata[10]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[11] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[11]),
        .Q(s_axi_wdata[11]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[12] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[12]),
        .Q(s_axi_wdata[12]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[13] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[13]),
        .Q(s_axi_wdata[13]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[14] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[14]),
        .Q(s_axi_wdata[14]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[15] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[15]),
        .Q(s_axi_wdata[15]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[16] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[16]),
        .Q(s_axi_wdata[16]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[17] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[17]),
        .Q(s_axi_wdata[17]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[18] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[18]),
        .Q(s_axi_wdata[18]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[19] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[19]),
        .Q(s_axi_wdata[19]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[1] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[1]),
        .Q(s_axi_wdata[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[20] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[20]),
        .Q(s_axi_wdata[20]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[21] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[21]),
        .Q(s_axi_wdata[21]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[22] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[22]),
        .Q(s_axi_wdata[22]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[23] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[23]),
        .Q(s_axi_wdata[23]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[24] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[24]),
        .Q(s_axi_wdata[24]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[25] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[25]),
        .Q(s_axi_wdata[25]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[26] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[26]),
        .Q(s_axi_wdata[26]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[27] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[27]),
        .Q(s_axi_wdata[27]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[28] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[28]),
        .Q(s_axi_wdata[28]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[29] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[29]),
        .Q(s_axi_wdata[29]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[2] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[2]),
        .Q(s_axi_wdata[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[30] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[30]),
        .Q(s_axi_wdata[30]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[31] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[31]),
        .Q(s_axi_wdata[31]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[3] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[3]),
        .Q(s_axi_wdata[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[4] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[4]),
        .Q(s_axi_wdata[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[5] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[5]),
        .Q(s_axi_wdata[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[6] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[6]),
        .Q(s_axi_wdata[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[7] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[7]),
        .Q(s_axi_wdata[7]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[8] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[8]),
        .Q(s_axi_wdata[8]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \s_axi_wdata_reg[9] 
       (.C(interrupt),
        .CE(1'b1),
        .D(held_data[9]),
        .Q(s_axi_wdata[9]),
        .R(1'b0));
endmodule

(* HW_HANDOFF = "uart_axi_master_block.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block
   (clk,
    held_data,
    interrupt,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    send_button);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF s_axi, CLK_DOMAIN uart_axi_master_block_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.HELD_DATA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.HELD_DATA, LAYERED_METADATA undef" *) output [31:0]held_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.INTERRUPT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.INTERRUPT, LAYERED_METADATA undef" *) input interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN uart_axi_master_block_clk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [3:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) input s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) output s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) output [3:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) input s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) output s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) output s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) input [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) input s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) input [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) output s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) input [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) input s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) output [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) input s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) output [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) output s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SEND_BUTTON DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SEND_BUTTON, LAYERED_METADATA undef" *) input send_button;

  wire \<const0> ;
  wire [31:0]held_data;
  wire interrupt;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;

  assign s_axi_araddr[3] = \<const0> ;
  assign s_axi_araddr[2] = \<const0> ;
  assign s_axi_araddr[1] = \<const0> ;
  assign s_axi_araddr[0] = \<const0> ;
  assign s_axi_arvalid = \<const0> ;
  assign s_axi_awaddr[3] = \<const0> ;
  assign s_axi_awaddr[2] = \<const0> ;
  assign s_axi_awaddr[1] = \<const0> ;
  assign s_axi_awaddr[0] = \<const0> ;
  assign s_axi_awvalid = \<const0> ;
  assign s_axi_bready = \<const0> ;
  assign s_axi_rready = \<const0> ;
  assign s_axi_wstrb[3] = \<const0> ;
  assign s_axi_wstrb[2] = \<const0> ;
  assign s_axi_wstrb[1] = \<const0> ;
  assign s_axi_wstrb[0] = \<const0> ;
  assign s_axi_wvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* X_CORE_INFO = "uart_axi_master,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block_uart_axi_master_0_2 uart_axi_master_0
       (.held_data(held_data),
        .interrupt(interrupt),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block_uart_axi_master_0_2
   (held_data,
    s_axi_wdata,
    s_axi_rdata,
    interrupt);
  output [31:0]held_data;
  output [31:0]s_axi_wdata;
  input [31:0]s_axi_rdata;
  input interrupt;

  wire [31:0]held_data;
  wire interrupt;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master inst
       (.held_data(held_data),
        .interrupt(interrupt),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
