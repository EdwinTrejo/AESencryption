// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Feb 21 16:18:33 2021
// Host        : MobileSickHorse running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/Xilinx_Projects/AESencryption/FPGA/MAESencryption_next/MAESencryption.srcs/sources_1/bd/MAES/ip/MAES_uart_logger_0_0/MAES_uart_logger_0_0_stub.v
// Design      : MAES_uart_logger_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_logger,Vivado 2020.2" *)
module MAES_uart_logger_0_0(clk, UART_TXD_IN, UART_RXD_OUT, tx_msg, tx_start, 
  tx_free, rx_msg, rx_complete)
/* synthesis syn_black_box black_box_pad_pin="clk,UART_TXD_IN,UART_RXD_OUT,tx_msg[63:0],tx_start,tx_free,rx_msg[63:0],rx_complete" */;
  input clk;
  input UART_TXD_IN;
  output UART_RXD_OUT;
  input [63:0]tx_msg;
  input tx_start;
  output tx_free;
  output [63:0]rx_msg;
  output rx_complete;
endmodule
