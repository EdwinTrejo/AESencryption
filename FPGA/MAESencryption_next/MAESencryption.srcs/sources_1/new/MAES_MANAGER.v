`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2021 02:07:33 PM
// Design Name: 
// Module Name: MAES_MANAGER
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


module MAES_MANAGER(BTNC, LED, UART_RXD_IN, tx_start, UART_TXD_IN, UART_TXD_OUT);

    input wire UART_RXD_IN;
    input wire UART_TXD_IN;
    output wire UART_TXD_OUT;
    input wire BTNC;
    output wire [2:0] LED;
    input wire tx_start;
    
    wire output_disable;
    
    assign output_disable = (BTNC == 1'b1) ? 1'b1 : 1'b0;
    assign UART_TXD_OUT = output_disable ? 1'b1 : UART_TXD_IN;
    assign LED[0] = UART_RXD_IN;
    assign LED[1] = UART_TXD_IN ? 1'b0 : 1'b1;
    assign LED[2] = tx_start;
    
endmodule