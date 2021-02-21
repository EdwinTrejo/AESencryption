//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Feb 21 16:17:29 2021
//Host        : MobileSickHorse running 64-bit major release  (build 9200)
//Command     : generate_target MAES_wrapper.bd
//Design      : MAES_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MAES_wrapper
   (BTNC,
    CPU_RESETN,
    LED,
    UART_RXD,
    UART_TXD,
    clk);
  input BTNC;
  input CPU_RESETN;
  output [2:0]LED;
  input UART_RXD;
  output UART_TXD;
  input clk;

  wire BTNC;
  wire CPU_RESETN;
  wire [2:0]LED;
  wire UART_RXD;
  wire UART_TXD;
  wire clk;

  MAES MAES_i
       (.BTNC(BTNC),
        .CPU_RESETN(CPU_RESETN),
        .LED(LED),
        .UART_RXD(UART_RXD),
        .UART_TXD(UART_TXD),
        .clk(clk));
endmodule
