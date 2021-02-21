`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2020 05:04:11 PM
// Design Name: 
// Module Name: EncDecController_tb
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


module EncDecController_tb();

//    h1111111111111111
    reg [63:0] in_stream;
    wire [63:0] out_stream;
    reg clk, rx_complete, tx_free;
    wire tx_start;
    reg reset = 0;
    
    //KEY
    //H 2B7E151628AED2A6 H ABF7158809CF4F3C
    //2B 7E 15 16 28 AE D2 A6 AB F7 15 88 09 CF 4F 3C
    //STATE
    //H 0011223344556677 H 8899AABBCCDDEEFF
    //00 11 22 33 44 55 66 77 88 99 AA BB CC DD EE FF
    
    //27d8d055d6e4d64b 8df4e9aac5c7573a
    
    
    EncDecController EncDecController_uut(
        .in_stream(in_stream),
        .out_stream(out_stream),
        .clk(clk),
        .rx_complete(rx_complete),
        .tx_start(tx_start),
        .tx_free(tx_free),
        .reset(reset)
        );
    
    always #0.5 clk = ~clk;
    
    initial begin
        clk = 0;
        tx_free = 0;
        #4.5
        in_stream = 64'h1111111111111111;
        rx_complete = 1;
        #1
        rx_complete = 0;
        #4
        in_stream = 64'H2B7E151628AED2A6;
        rx_complete = 1;
        #1
        rx_complete = 0;
        #4
        in_stream = 64'HABF7158809CF4F3C;
        rx_complete = 1;
        #1
        rx_complete = 0;
        #4
        in_stream = 64'H0011223344556677;
        rx_complete = 1;
        #1
        rx_complete = 0;
        #4
        in_stream = 64'H8899AABBCCDDEEFF;
        rx_complete = 1;
        #1
        rx_complete = 0;
        #4
        in_stream = 64'hZZZZZZZZZZZZZZZZ;
        tx_free = 1;
        #1
        @(posedge tx_start)
        tx_free = 0;        
        #80
        tx_free = 1;
        #1
        //@(posedge tx_start)
        tx_free = 0;
        #500
        $finish;
    end
    
    always @(posedge clk) begin
        if (out_stream == 64'h8df4e9aac5c7573a) begin
            #80
            tx_free = 1;
            #40
            $finish;
        end
    end
    
endmodule
