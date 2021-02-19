//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sat Jan 30 20:16:43 2021
//Host        : MobileSickHorse running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (AN,
    BTNC,
    LED,
    SSD,
    UART_RXD_OUT,
    UART_TXD_IN,
    clk);
  output [7:0]AN;
  input BTNC;
  output [2:0]LED;
  output [6:0]SSD;
  output UART_RXD_OUT;
  input UART_TXD_IN;
  input clk;

  wire [7:0]AN;
  wire BTNC;
  wire [2:0]LED;
  wire [6:0]SSD;
  wire UART_RXD_OUT;
  wire UART_TXD_IN;
  wire clk;

  design_1 design_1_i
       (.AN(AN),
        .BTNC(BTNC),
        .LED(LED),
        .SSD(SSD),
        .UART_RXD_OUT(UART_RXD_OUT),
        .UART_TXD_IN(UART_TXD_IN),
        .clk(clk));
endmodule
