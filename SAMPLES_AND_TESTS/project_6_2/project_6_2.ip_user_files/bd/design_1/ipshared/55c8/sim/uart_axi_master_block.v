//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sat Jan 30 16:41:28 2021
//Host        : MobileSickHorse running 64-bit major release  (build 9200)
//Command     : generate_target uart_axi_master_block.bd
//Design      : uart_axi_master_block
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "uart_axi_master_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=uart_axi_master_block,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "uart_axi_master_block.hwdef" *) 
module uart_axi_master_block
   (LED,
    clk,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED, LAYERED_METADATA undef" *) output [2:0]LED;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF s_axi, CLK_DOMAIN uart_axi_master_block_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.HELD_DATA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.HELD_DATA, LAYERED_METADATA undef" *) output [127:0]held_data;
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

  wire clk_1;
  wire interrupt_1;
  wire send_button_1;
  wire [2:0]uart_axi_master_0_LED;
  wire [127:0]uart_axi_master_0_held_data;
  wire [3:0]uart_axi_master_0_s_axi_ARADDR;
  wire uart_axi_master_0_s_axi_ARREADY;
  wire uart_axi_master_0_s_axi_ARVALID;
  wire [3:0]uart_axi_master_0_s_axi_AWADDR;
  wire uart_axi_master_0_s_axi_AWREADY;
  wire uart_axi_master_0_s_axi_AWVALID;
  wire uart_axi_master_0_s_axi_BREADY;
  wire [1:0]uart_axi_master_0_s_axi_BRESP;
  wire uart_axi_master_0_s_axi_BVALID;
  wire [31:0]uart_axi_master_0_s_axi_RDATA;
  wire uart_axi_master_0_s_axi_RREADY;
  wire [1:0]uart_axi_master_0_s_axi_RRESP;
  wire uart_axi_master_0_s_axi_RVALID;
  wire [31:0]uart_axi_master_0_s_axi_WDATA;
  wire uart_axi_master_0_s_axi_WREADY;
  wire [3:0]uart_axi_master_0_s_axi_WSTRB;
  wire uart_axi_master_0_s_axi_WVALID;

  assign LED[2:0] = uart_axi_master_0_LED;
  assign clk_1 = clk;
  assign held_data[127:0] = uart_axi_master_0_held_data;
  assign interrupt_1 = interrupt;
  assign s_axi_araddr[3:0] = uart_axi_master_0_s_axi_ARADDR;
  assign s_axi_arvalid = uart_axi_master_0_s_axi_ARVALID;
  assign s_axi_awaddr[3:0] = uart_axi_master_0_s_axi_AWADDR;
  assign s_axi_awvalid = uart_axi_master_0_s_axi_AWVALID;
  assign s_axi_bready = uart_axi_master_0_s_axi_BREADY;
  assign s_axi_rready = uart_axi_master_0_s_axi_RREADY;
  assign s_axi_wdata[31:0] = uart_axi_master_0_s_axi_WDATA;
  assign s_axi_wstrb[3:0] = uart_axi_master_0_s_axi_WSTRB;
  assign s_axi_wvalid = uart_axi_master_0_s_axi_WVALID;
  assign send_button_1 = send_button;
  assign uart_axi_master_0_s_axi_ARREADY = s_axi_arready;
  assign uart_axi_master_0_s_axi_AWREADY = s_axi_awready;
  assign uart_axi_master_0_s_axi_BRESP = s_axi_bresp[1:0];
  assign uart_axi_master_0_s_axi_BVALID = s_axi_bvalid;
  assign uart_axi_master_0_s_axi_RDATA = s_axi_rdata[31:0];
  assign uart_axi_master_0_s_axi_RRESP = s_axi_rresp[1:0];
  assign uart_axi_master_0_s_axi_RVALID = s_axi_rvalid;
  assign uart_axi_master_0_s_axi_WREADY = s_axi_wready;
  uart_axi_master_block_uart_axi_master_0_2 uart_axi_master_0
       (.LED(uart_axi_master_0_LED),
        .S_AXI_ACLK(clk_1),
        .held_data(uart_axi_master_0_held_data),
        .interrupt(interrupt_1),
        .s_axi_araddr(uart_axi_master_0_s_axi_ARADDR),
        .s_axi_arready(uart_axi_master_0_s_axi_ARREADY),
        .s_axi_arvalid(uart_axi_master_0_s_axi_ARVALID),
        .s_axi_awaddr(uart_axi_master_0_s_axi_AWADDR),
        .s_axi_awready(uart_axi_master_0_s_axi_AWREADY),
        .s_axi_awvalid(uart_axi_master_0_s_axi_AWVALID),
        .s_axi_bready(uart_axi_master_0_s_axi_BREADY),
        .s_axi_bresp(uart_axi_master_0_s_axi_BRESP),
        .s_axi_bvalid(uart_axi_master_0_s_axi_BVALID),
        .s_axi_rdata(uart_axi_master_0_s_axi_RDATA),
        .s_axi_rready(uart_axi_master_0_s_axi_RREADY),
        .s_axi_rresp(uart_axi_master_0_s_axi_RRESP),
        .s_axi_rvalid(uart_axi_master_0_s_axi_RVALID),
        .s_axi_wdata(uart_axi_master_0_s_axi_WDATA),
        .s_axi_wready(uart_axi_master_0_s_axi_WREADY),
        .s_axi_wstrb(uart_axi_master_0_s_axi_WSTRB),
        .s_axi_wvalid(uart_axi_master_0_s_axi_WVALID),
        .send_button(send_button_1));
endmodule
