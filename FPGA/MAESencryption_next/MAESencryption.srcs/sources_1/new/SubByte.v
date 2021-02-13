`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2021 01:42:39 PM
// Design Name: 
// Module Name: SubByte
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


module SubByte(
        input [7:0] input_b,
        output [7:0] si
    );
    
    //assign si = (b * 31 % 257) ^ 99;
    //{b[7:1], b[0:0]}
//    assign si = b ^ (b <<< 1) ^ (b <<< 2) ^ (b <<< 3) ^ (8'h63);
    
    wire [7:0] b;
    wire [7:0] left1;
    wire [7:0] left2;
    wire [7:0] left3;
    wire [7:0] left4;
    
    assign b = 1/input_b;
    
    assign left1 = {b[6:0], b[7]};
    assign left2 = {b[5:0], b[7:6]};
    assign left3 = {b[4:0], b[7:5]};
    assign left4 = {b[3:0], b[7:4]};
    
    assign si = (b ^ left1 ^ left2 ^ left3 ^ left4) ^ (8'h63);
      
endmodule
