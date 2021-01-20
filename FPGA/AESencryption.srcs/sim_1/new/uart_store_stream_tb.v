`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2021 03:03:06 PM
// Design Name: 
// Module Name: uart_store_stream_tb
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


module uart_store_stream_tb();

    reg clk, UART_TXD_IN;
    wire UART_RXD_OUT;


    uart_store_stream uart_store_stream_uut(.clk(clk),
 .UART_TXD_IN(UART_TXD_IN),
 .UART_RXD_OUT(UART_RXD_OUT));
   
    
    always #0.5 clk = ~clk;
    
    initial begin
        clk = 0;    
        #1
        
        // start signal 8 times
        UART_TXD_IN = 8'b11111111;
        #8
        
        // send 64 bits of signal
        UART_TXD_IN = 8'b00000001;
        #1
        UART_TXD_IN = 8'b00000010;
        #1
        UART_TXD_IN = 8'b00000011;
        #1
        UART_TXD_IN = 8'b00000100;
        #1
        UART_TXD_IN = 8'b00000101;
        #1
        UART_TXD_IN = 8'b00000110;
        #1
        UART_TXD_IN = 8'b00000111;
        #1
        UART_TXD_IN = 8'b00001000;
        #1
        
        // send 128 bits of state
        UART_TXD_IN = 8'b10000000;
        #1
        UART_TXD_IN = 8'b01000000;
        #1
        UART_TXD_IN = 8'b11000000;
        #1
        UART_TXD_IN = 8'b00100000;
        #1
        UART_TXD_IN = 8'b10100000;
        #1
        UART_TXD_IN = 8'b01100000;
        #1
        UART_TXD_IN = 8'b11100000;
        #1
        UART_TXD_IN = 8'b00010000;
        #1
        UART_TXD_IN = 8'b10010000;
        #1
        UART_TXD_IN = 8'b11010000;
        #1
        UART_TXD_IN = 8'b11110000;
        #1
        UART_TXD_IN = 8'b00001000;
        #1
        UART_TXD_IN = 8'b10001000;
        #1
        UART_TXD_IN = 8'b11001000;
        #1
        UART_TXD_IN = 8'b11101000;
        #1
        UART_TXD_IN = 8'b11111000;
        #1
        
        // send 128 bits of key
        UART_TXD_IN = 8'b00000001;
        #1
        UART_TXD_IN = 8'b00000010;
        #1
        UART_TXD_IN = 8'b00000011;
        #1
        UART_TXD_IN = 8'b00000100;
        #1
        UART_TXD_IN = 8'b00000101;
        #1
        UART_TXD_IN = 8'b00000110;
        #1
        UART_TXD_IN = 8'b00000111;
        #1
        UART_TXD_IN = 8'b00001000;
        #1
        UART_TXD_IN = 8'b00000001;
        #1
        UART_TXD_IN = 8'b00000010;
        #1
        UART_TXD_IN = 8'b00000011;
        #1
        UART_TXD_IN = 8'b00000100;
        #1
        UART_TXD_IN = 8'b00000101;
        #1
        UART_TXD_IN = 8'b00000110;
        #1
        UART_TXD_IN = 8'b00000111;
        #1
        UART_TXD_IN = 8'b00001000;
        #10
        
        $finish;
    end
    
endmodule
