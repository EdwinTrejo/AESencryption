`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2020 02:47:48 AM
// Design Name: 
// Module Name: hamming_check_tb
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


module hamming_check_tb();

    reg clk;
    reg [6:0] code;
    wire [6:0] return_sequence;
    wire DED;

    hamming_check hamming_check_uut(.clk(clk), .code(code), .return_sequence(return_sequence), .DED(DED));
    
    always begin
        #1 clk = ~clk;
    end
    
    initial begin
        clk = 0;
        code = 7'b1111000;
        #2
        code = 7'b0111010;
        #2
        $finish;
    end
endmodule
