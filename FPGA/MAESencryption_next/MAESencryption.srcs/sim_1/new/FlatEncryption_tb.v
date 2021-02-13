`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2020 03:48:20 PM
// Design Name: 
// Module Name: FlatEncryption_tb
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


module FlatEncryption_tb();

    reg [63:0] in_stream;
    reg [7:0] in_instruction;
    reg clk;
    wire [63:0] out_stream;
    wire [7:0] out_instruction;
    
    reg [127:0] full_out_state;
    
    FlatEncryption FlatEncryption_uut(.in_stream(in_stream), .in_instruction(in_instruction), .out_stream(out_stream), .out_instruction(out_instruction), .clk(clk));
    
    initial begin
        clk = 0;
        #1;
        //KEY
        //H 2B7E151628AED2A6 HABF7158809CF4F3C
        //2B 7E 15 16 28 AE D2 A6 AB F7 15 88 09 CF 4F 3C
        //STATE
        //H0011223344556677 H8899AABBCCDDEEFF
        //00 11 22 33 44 55 66 77 88 99 AA BB CC DD EE FF
        in_stream = 64'hZZZZZZZZZZZZZZZZ;
        in_instruction = 1;
        #2;
        in_stream = 64'H2B7E151628AED2A6;
        in_instruction = 2;
        #1;
        in_stream = 64'HABF7158809CF4F3C;
        in_instruction = 3;
        #1;
        in_stream = 64'H0011223344556677;
        in_instruction = 4;
        #1;
        in_stream = 64'H8899AABBCCDDEEFF;
        in_instruction = 5;
        #1;
        in_stream = 64'hZZZZZZZZZZZZZZZZ;
        #450;
        $finish;
    end
    
    always @(*) begin
        if (out_instruction == 4) begin
            full_out_state[127:64] = out_stream;
        end
        else if (out_instruction == 5) begin
            full_out_state[63:0] = out_stream;
        end
    end
    
    always #0.5 clk = ~clk;

endmodule
