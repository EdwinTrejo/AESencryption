`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2021 02:13:09 PM
// Design Name: 
// Module Name: SubByte_tb
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


module SubByte_tb();

    //module SubByte(
    //input [7:0] b,
    //output [7:0] si
    //);
    
    reg [7:0] b;
    wire [7:0] si;
    
    getSBoxValue SubByte_uut(b, si);
    
    initial begin
        b = 8'h00;
        //si should be 63
        #1
        b = 8'hd4;
        //si should be 48
        #1
        b = 8'hff;
        //si should be 16
        #1
        $finish;
    end
    
endmodule