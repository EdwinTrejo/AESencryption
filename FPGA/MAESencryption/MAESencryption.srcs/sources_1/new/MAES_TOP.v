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
        input UART_TXD_IN,
        output wire UART_RXD_OUT,
        
        input clk
    );
        
    wire [63:0] tx_msg;
    wire [63:0] rx_msg;
    wire tx_start;
    wire rx_complete;
    
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
        .UART_RXD_OUT(UART_RXD_OUT),
        .tx_msg(tx_msg),
        .tx_start(tx_start),
        .rx_msg(rx_msg),
        .rx_complete(rx_complete)
    );
    
endmodule









