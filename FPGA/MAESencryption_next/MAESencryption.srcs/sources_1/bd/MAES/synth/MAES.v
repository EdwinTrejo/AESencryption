//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Feb 21 16:17:29 2021
//Host        : MobileSickHorse running 64-bit major release  (build 9200)
//Command     : generate_target MAES.bd
//Design      : MAES
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MAES,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MAES,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "MAES.hwdef" *) 
module MAES
   (BTNC,
    CPU_RESETN,
    LED,
    UART_RXD,
    UART_TXD,
    clk);
  input BTNC;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CPU_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CPU_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input CPU_RESETN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED, LAYERED_METADATA undef" *) output [2:0]LED;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UART_RXD DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UART_RXD, LAYERED_METADATA undef" *) input UART_RXD;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UART_TXD DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UART_TXD, LAYERED_METADATA undef" *) output UART_TXD;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET CPU_RESETN, CLK_DOMAIN MAES_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;

  wire BTNC_1;
  wire [63:0]EncDecController_0_out_stream;
  wire EncDecController_0_tx_start;
  wire [2:0]MAES_MANAGER_0_LED;
  wire MAES_MANAGER_0_UART_TXD_OUT;
  wire UART_RXD_1;
  wire clk_wiz_0_clk_out1;
  wire reset_1;
  wire uart_logger_0_UART_RXD_OUT;
  wire uart_logger_0_rx_complete;
  wire [63:0]uart_logger_0_rx_msg;
  wire uart_logger_0_tx_free;

  assign BTNC_1 = BTNC;
  assign LED[2:0] = MAES_MANAGER_0_LED;
  assign UART_RXD_1 = UART_RXD;
  assign UART_TXD = MAES_MANAGER_0_UART_TXD_OUT;
  assign clk_wiz_0_clk_out1 = clk;
  assign reset_1 = CPU_RESETN;
  MAES_EncDecController_0_0 EncDecController_0
       (.clk(clk_wiz_0_clk_out1),
        .in_stream(uart_logger_0_rx_msg),
        .out_stream(EncDecController_0_out_stream),
        .reset(reset_1),
        .rx_complete(uart_logger_0_rx_complete),
        .tx_free(uart_logger_0_tx_free),
        .tx_start(EncDecController_0_tx_start));
  MAES_MAES_MANAGER_0_0 MAES_MANAGER_0
       (.BTNC(BTNC_1),
        .LED(MAES_MANAGER_0_LED),
        .UART_RXD_IN(UART_RXD_1),
        .UART_TXD_IN(uart_logger_0_UART_RXD_OUT),
        .UART_TXD_OUT(MAES_MANAGER_0_UART_TXD_OUT),
        .tx_start(EncDecController_0_tx_start));
  MAES_uart_logger_0_0 uart_logger_0
       (.UART_RXD_OUT(uart_logger_0_UART_RXD_OUT),
        .UART_TXD_IN(UART_RXD_1),
        .clk(clk_wiz_0_clk_out1),
        .rx_complete(uart_logger_0_rx_complete),
        .rx_msg(uart_logger_0_rx_msg),
        .tx_free(uart_logger_0_tx_free),
        .tx_msg(EncDecController_0_out_stream),
        .tx_start(EncDecController_0_tx_start));
endmodule
