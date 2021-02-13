`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2021 10:45:11 AM
// Design Name: 
// Module Name: MAES_TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module MAES_TOP(
        input wire UART_TXD_IN,
        output wire UART_RXD_OUT,
        input wire clk,
        input wire BTNC,
        output wire LEDS[2:0],
        input wire CPU_RESETN
    );
    
    wire output_disable;
    wire UART_RXD_OUT_REPLACE;
    wire normal_reset;
           
    wire [63:0] tx_msg;
    wire [63:0] rx_msg;
    wire tx_start;
    wire rx_complete;
    
    assign output_disable = (BTNC == 1'b1) ? 1'b1 : 1'b0;
    assign UART_RXD_OUT = output_disable ? 1'b1 : UART_RXD_OUT_REPLACE;
    assign LEDS[0] = UART_TXD_IN ? 1'b0 : 1'b1;
    assign LEDS[1] = UART_RXD_OUT ? 1'b0 : 1'b1;
    assign LEDS[2] = tx_start;
    assign normal_reset = CPU_RESETN ? 1'b0 : 1'b1;
    
    //input wire clk,
    //input wire [63:0] in_stream,
    //output reg [63:0] out_stream,
    //input wire rx_complete,
    //output reg tx_start
    EncDecController EncDecController_uut(
        .clk(clk),
        .in_stream(rx_msg),
        .out_stream(tx_msg),
        .rx_complete(rx_complete),
        .tx_start(tx_start)
    );
    
    ////hardware interfaces
    //input wire clk,
    //input wire UART_TXD_IN,
    //output wire UART_RXD_OUT,
    ////software interfaces
    //input wire [63:0] tx_msg,
    //input wire tx_start,
    //output wire [63:0] rx_msg,
    //output wire rx_complete
    uart_logger uart_logger_uut(
        .clk(clk),
        .UART_TXD_IN(UART_TXD_IN),
        .UART_RXD_OUT(UART_RXD_OUT_REPLACE),
        .tx_msg(tx_msg),
        .tx_start(tx_start),
        .rx_msg(rx_msg),
        .rx_complete(rx_complete)
    );
    
endmodule









