// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jan 25 14:21:19 2021
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
    s_axi_wvalid);
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) output s_axi_wvalid;

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
        .s_axi_wvalid(NLW_inst_s_axi_wvalid_UNCONNECTED));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master
   (s_axi_wdata,
    s_axi_rdata,
    interrupt);
  output [31:0]s_axi_wdata;
  input [31:0]s_axi_rdata;
  input interrupt;

  wire interrupt;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[0] 
       (.CLR(1'b0),
        .D(s_axi_rdata[0]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[10] 
       (.CLR(1'b0),
        .D(s_axi_rdata[10]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[10]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[11] 
       (.CLR(1'b0),
        .D(s_axi_rdata[11]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[11]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[12] 
       (.CLR(1'b0),
        .D(s_axi_rdata[12]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[12]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[13] 
       (.CLR(1'b0),
        .D(s_axi_rdata[13]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[13]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[14] 
       (.CLR(1'b0),
        .D(s_axi_rdata[14]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[14]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[15] 
       (.CLR(1'b0),
        .D(s_axi_rdata[15]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[15]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[16] 
       (.CLR(1'b0),
        .D(s_axi_rdata[16]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[16]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[17] 
       (.CLR(1'b0),
        .D(s_axi_rdata[17]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[17]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[18] 
       (.CLR(1'b0),
        .D(s_axi_rdata[18]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[18]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[19] 
       (.CLR(1'b0),
        .D(s_axi_rdata[19]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[19]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[1] 
       (.CLR(1'b0),
        .D(s_axi_rdata[1]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[1]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[20] 
       (.CLR(1'b0),
        .D(s_axi_rdata[20]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[20]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[21] 
       (.CLR(1'b0),
        .D(s_axi_rdata[21]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[21]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[22] 
       (.CLR(1'b0),
        .D(s_axi_rdata[22]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[22]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[23] 
       (.CLR(1'b0),
        .D(s_axi_rdata[23]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[23]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[24] 
       (.CLR(1'b0),
        .D(s_axi_rdata[24]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[24]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[25] 
       (.CLR(1'b0),
        .D(s_axi_rdata[25]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[25]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[26] 
       (.CLR(1'b0),
        .D(s_axi_rdata[26]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[26]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[27] 
       (.CLR(1'b0),
        .D(s_axi_rdata[27]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[27]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[28] 
       (.CLR(1'b0),
        .D(s_axi_rdata[28]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[28]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[29] 
       (.CLR(1'b0),
        .D(s_axi_rdata[29]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[29]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[2] 
       (.CLR(1'b0),
        .D(s_axi_rdata[2]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[2]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[30] 
       (.CLR(1'b0),
        .D(s_axi_rdata[30]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[30]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[31] 
       (.CLR(1'b0),
        .D(s_axi_rdata[31]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[31]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[3] 
       (.CLR(1'b0),
        .D(s_axi_rdata[3]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[3]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[4] 
       (.CLR(1'b0),
        .D(s_axi_rdata[4]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[4]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[5] 
       (.CLR(1'b0),
        .D(s_axi_rdata[5]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[5]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[6] 
       (.CLR(1'b0),
        .D(s_axi_rdata[6]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[6]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[7] 
       (.CLR(1'b0),
        .D(s_axi_rdata[7]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[7]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[8] 
       (.CLR(1'b0),
        .D(s_axi_rdata[8]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[8]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_axi_wdata_reg[9] 
       (.CLR(1'b0),
        .D(s_axi_rdata[9]),
        .G(interrupt),
        .GE(1'b1),
        .Q(s_axi_wdata[9]));
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
    s_axi_wvalid);
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

  wire \<const0> ;
  wire interrupt;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;

  assign held_data[31:0] = s_axi_rdata;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block_uart_axi_master_0_0 uart_axi_master_0
       (.interrupt(interrupt),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block_uart_axi_master_0_0
   (s_axi_wdata,
    s_axi_rdata,
    interrupt);
  output [31:0]s_axi_wdata;
  input [31:0]s_axi_rdata;
  input interrupt;

  wire interrupt;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master inst
       (.interrupt(interrupt),
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
