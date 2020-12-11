`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2020 08:28:26 PM
// Design Name: 
// Module Name: keyExpansion
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


// a word is 4 bytes


module keyExpansion(enable, key, expanded_key);

    input enable;
    input [127:0] key;
    output reg [1407:0] expanded_key;

    reg [31:0] temp;
    
    integer i, j;
    
    always @(posedge enable) begin
//        for (i=0; i<4; i = i + 1) begin
//            //0 to be from 1407 to 
//            expanded_key[i];
//        end
        //supposed to be in order 
        expanded_key[1407:1279] = key;
        for (j=0; j<44; j = j + 1) begin
            //temp  = w [i-1];
            //if ( i mod 4 == 0) 
            //  temp = subword(rotword(temp)) xor rcon(i/4);
            //else
            //  w[i] = w[i-4] xor temp
            temp = expanded_key[];
        end
    end
endmodule
