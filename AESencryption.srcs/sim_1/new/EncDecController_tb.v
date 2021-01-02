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
    reg clk;
    
    EncDecController EncDecController_uut(.in_stream(in_stream), .out_stream(out_stream), .clk(clk));
    
    always #0.5 clk = ~clk;
    
    initial begin
        clk = 0;
        #1;
        in_stream = 64'h1111111111111111;
        #3;
        in_stream = 64'hEEEEEEEEEEEEEEEE;
        #2;
        #20;
        $finish;
    end
    
endmodule
