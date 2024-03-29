`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2021 08:33:17 PM
// Design Name: 
// Module Name: times_two
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


module times_two(word_in, word_out);

    input [7:0] word_in;
    output reg [7:0] word_out;
    
    always @(*) begin
        // shift left 1 bit
        word_out = word_in << 1;
    
        if (word_in[7] == 1'b1) begin
            word_out = word_out ^ 8'h1B;
        end
    end

endmodule
