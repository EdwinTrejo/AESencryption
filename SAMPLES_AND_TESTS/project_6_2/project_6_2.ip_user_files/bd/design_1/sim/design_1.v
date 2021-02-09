//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sat Jan 30 20:15:08 2021
//Host        : MobileSickHorse running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=1,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (AN,
    BTNC,
    LED,
    SSD,
    UART_RXD_OUT,
    UART_TXD_IN,
    clk);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.AN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.AN, LAYERED_METADATA undef" *) output [7:0]AN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BTNC DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BTNC, LAYERED_METADATA undef" *) input BTNC;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED, LAYERED_METADATA undef" *) output [2:0]LED;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SSD DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SSD, LAYERED_METADATA undef" *) output [6:0]SSD;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UART_RXD_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UART_RXD_OUT, LAYERED_METADATA undef" *) output UART_RXD_OUT;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UART_TXD_IN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UART_TXD_IN, LAYERED_METADATA undef" *) input UART_TXD_IN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;

  wire BTNC_1;
  wire UART_TXD_IN_1;
  wire axi_uartlite_0_interrupt;
  wire axi_uartlite_0_s_axi_arready;
  wire axi_uartlite_0_s_axi_awready;
  wire [1:0]axi_uartlite_0_s_axi_bresp;
  wire axi_uartlite_0_s_axi_bvalid;
  wire [31:0]axi_uartlite_0_s_axi_rdata;
  wire [1:0]axi_uartlite_0_s_axi_rresp;
  wire axi_uartlite_0_s_axi_rvalid;
  wire axi_uartlite_0_s_axi_wready;
  wire axi_uartlite_0_tx;
  wire clk_1;
  wire [7:0]ssd_0_AN;
  wire [6:0]ssd_0_SSD;
  wire [2:0]uart_axi_master_block_0_LED;
  wire [127:0]uart_axi_master_block_0_held_data;
  wire [3:0]uart_axi_master_block_0_s_axi_araddr;
  wire uart_axi_master_block_0_s_axi_arvalid;
  wire [3:0]uart_axi_master_block_0_s_axi_awaddr;
  wire uart_axi_master_block_0_s_axi_awvalid;
  wire uart_axi_master_block_0_s_axi_bready;
  wire uart_axi_master_block_0_s_axi_rready;
  wire [31:0]uart_axi_master_block_0_s_axi_wdata;
  wire [3:0]uart_axi_master_block_0_s_axi_wstrb;
  wire uart_axi_master_block_0_s_axi_wvalid;

  assign AN[7:0] = ssd_0_AN;
  assign BTNC_1 = BTNC;
  assign LED[2:0] = uart_axi_master_block_0_LED;
  assign SSD[6:0] = ssd_0_SSD;
  assign UART_RXD_OUT = axi_uartlite_0_tx;
  assign UART_TXD_IN_1 = UART_TXD_IN;
  assign clk_1 = clk;
  design_1_axi_uartlite_0_1 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(UART_TXD_IN_1),
        .s_axi_aclk(clk_1),
        .s_axi_araddr(uart_axi_master_block_0_s_axi_araddr),
        .s_axi_aresetn(1'b1),
        .s_axi_arready(axi_uartlite_0_s_axi_arready),
        .s_axi_arvalid(uart_axi_master_block_0_s_axi_arvalid),
        .s_axi_awaddr(uart_axi_master_block_0_s_axi_awaddr),
        .s_axi_awready(axi_uartlite_0_s_axi_awready),
        .s_axi_awvalid(uart_axi_master_block_0_s_axi_awvalid),
        .s_axi_bready(uart_axi_master_block_0_s_axi_bready),
        .s_axi_bresp(axi_uartlite_0_s_axi_bresp),
        .s_axi_bvalid(axi_uartlite_0_s_axi_bvalid),
        .s_axi_rdata(axi_uartlite_0_s_axi_rdata),
        .s_axi_rready(uart_axi_master_block_0_s_axi_rready),
        .s_axi_rresp(axi_uartlite_0_s_axi_rresp),
        .s_axi_rvalid(axi_uartlite_0_s_axi_rvalid),
        .s_axi_wdata(uart_axi_master_block_0_s_axi_wdata),
        .s_axi_wready(axi_uartlite_0_s_axi_wready),
        .s_axi_wstrb(uart_axi_master_block_0_s_axi_wstrb),
        .s_axi_wvalid(uart_axi_master_block_0_s_axi_wvalid),
        .tx(axi_uartlite_0_tx));
  design_1_ssd_0_0 ssd_0
       (.AN(ssd_0_AN),
        .SSD(ssd_0_SSD),
        .clk(clk_1),
        .data(uart_axi_master_block_0_held_data));
  design_1_uart_axi_master_block_0_0 uart_axi_master_block_0
       (.LED(uart_axi_master_block_0_LED),
        .clk(clk_1),
        .held_data(uart_axi_master_block_0_held_data),
        .interrupt(axi_uartlite_0_interrupt),
        .s_axi_araddr(uart_axi_master_block_0_s_axi_araddr),
        .s_axi_arready(axi_uartlite_0_s_axi_arready),
        .s_axi_arvalid(uart_axi_master_block_0_s_axi_arvalid),
        .s_axi_awaddr(uart_axi_master_block_0_s_axi_awaddr),
        .s_axi_awready(axi_uartlite_0_s_axi_awready),
        .s_axi_awvalid(uart_axi_master_block_0_s_axi_awvalid),
        .s_axi_bready(uart_axi_master_block_0_s_axi_bready),
        .s_axi_bresp(axi_uartlite_0_s_axi_bresp),
        .s_axi_bvalid(axi_uartlite_0_s_axi_bvalid),
        .s_axi_rdata(axi_uartlite_0_s_axi_rdata),
        .s_axi_rready(uart_axi_master_block_0_s_axi_rready),
        .s_axi_rresp(axi_uartlite_0_s_axi_rresp),
        .s_axi_rvalid(axi_uartlite_0_s_axi_rvalid),
        .s_axi_wdata(uart_axi_master_block_0_s_axi_wdata),
        .s_axi_wready(axi_uartlite_0_s_axi_wready),
        .s_axi_wstrb(uart_axi_master_block_0_s_axi_wstrb),
        .s_axi_wvalid(uart_axi_master_block_0_s_axi_wvalid),
        .send_button(BTNC_1));
endmodule
