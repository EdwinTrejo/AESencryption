`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2020 10:37:02 AM
// Design Name: 
// Module Name: addRoundKey
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

module addRoundKey(msg_row1, msg_row2, msg_row3, msg_row4, key_row1, key_row2, key_row3, key_row4, out_row1, out_row2, out_row3, out_row4, enable);

    input [31:0] msg_row1, msg_row2, msg_row3, msg_row4;
    input [31:0] key_row1, key_row2, key_row3, key_row4;
    input enable;
    output reg [31:0] out_row1, out_row2, out_row3, out_row4;
    
always @(enable) begin
    out_row1[31:24] <= msg_row1[31:24] ^ key_row1[31:24];
    out_row1[23:16] <= msg_row1[23:16] ^ key_row1[23:16];
    out_row1[15:8] <= msg_row1[15:8] ^ key_row1[15:8];
    out_row1[7:0] <= msg_row1[7:0] ^ key_row1[7:0];
    
    out_row2[31:24] <= msg_row2[31:24] ^ key_row2[31:24];
    out_row2[23:16] <= msg_row2[23:16] ^ key_row2[23:16];
    out_row2[15:8] <= msg_row2[15:8] ^ key_row2[15:8];
    out_row2[7:0] <= msg_row2[7:0] ^ key_row2[7:0];
    
    out_row3[31:24] <= msg_row3[31:24] ^ key_row3[31:24];
    out_row3[23:16] <= msg_row3[23:16] ^ key_row3[23:16];
    out_row3[15:8] <= msg_row3[15:8] ^ key_row3[15:8];
    out_row3[7:0] <= msg_row3[7:0] ^ key_row3[7:0];
    
    out_row4[31:24] <= msg_row4[31:24] ^ key_row4[31:24];
    out_row4[23:16] <= msg_row4[23:16] ^ key_row4[23:16];
    out_row4[15:8] <= msg_row4[15:8] ^ key_row4[15:8];
    out_row4[7:0] <= msg_row4[7:0] ^ key_row4[7:0];
end
endmodule
//module addRoundKey(msg_row1, msg_row2, msg_row3, msg_row4, key_row1, key_row2, key_row3, key_row4, out_row1, out_row2, out_row3, out_row4, enable);

//    input [7:0] msg_row1, msg_row2, msg_row3, msg_row4;
//    input [7:0] key_row1, key_row2, key_row3, key_row4;
//    input enable;
//    output reg [7:0] out_row1, out_row2, out_row3, out_row4;
    
//always @(enable) begin
//    out_row1 <= msg_row1 ^ key_row1;
//    out_row2 <= msg_row2 ^ key_row2;
//    out_row3 <= msg_row3 ^ key_row3;
//    out_row4 <= msg_row4 ^ key_row4;
//end
//endmodule
