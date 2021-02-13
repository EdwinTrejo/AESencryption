`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2021 08:41:27 PM
// Design Name: 
// Module Name: times_three
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


module times_three(word_in, word_out);

    input [7:0] word_in;
    output reg [7:0] word_out;
//    output wire [7:0] word_out;
    wire [7:0] temp_word;
    
    times_two time_two_uut1(word_in, temp_word);
    
//    assign word_out = temp_word ^ word_in;
    
    always @(*) begin
        word_out = temp_word ^ word_in;
    end

endmodule
