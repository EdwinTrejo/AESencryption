`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2020 10:37:02 AM
// Design Name: 
// Module Name: mixColumns
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

`define PolynomialMatrix1_1 8'h02
`define PolynomialMatrix1_2 8'h03
`define PolynomialMatrix1_3 8'h01
`define PolynomialMatrix1_4 8'h01


`define PolynomialMatrix2_1 8'h01
`define PolynomialMatrix2_2 8'h02
`define PolynomialMatrix2_3 8'h03
`define PolynomialMatrix2_4 8'h01

`define PolynomialMatrix3_1 8'h01
`define PolynomialMatrix3_2 8'h01
`define PolynomialMatrix3_3 8'h02
`define PolynomialMatrix3_4 8'h03

`define PolynomialMatrix4_1 8'h03
`define PolynomialMatrix4_2 8'h01
`define PolynomialMatrix4_3 8'h01
`define PolynomialMatrix4_4 8'h02

module mixColumns(in_col1, in_col2, in_col3, in_col4, enable, out_col1, out_col2, out_col3, out_col4);

    input [31:0] in_col1, in_col2, in_col3, in_col4;
    input enable;
    output reg [31:0]out_col1, out_col2, out_col3, out_col4;
    
    // I am not 100% this is the right implementation for this one
    
always @(enable) begin
    out_col1 <= (in_col1[31:24] * `PolynomialMatrix1_1) ^ (in_col1[23:16] * `PolynomialMatrix1_2) ^ (in_col1[15:8] * `PolynomialMatrix1_3) ^ (in_col1[7:0] * `PolynomialMatrix1_4);
    out_col1 <= (in_col1[31:24] * `PolynomialMatrix2_1) ^ (in_col1[23:16] * `PolynomialMatrix2_2) ^ (in_col1[15:8] * `PolynomialMatrix2_3) ^ (in_col1[7:0] * `PolynomialMatrix2_4);
    out_col1 <= (in_col1[31:24] * `PolynomialMatrix3_1) ^ (in_col1[23:16] * `PolynomialMatrix3_2) ^ (in_col1[15:8] * `PolynomialMatrix3_3) ^ (in_col1[7:0] * `PolynomialMatrix3_4);
    out_col1 <= (in_col1[31:24] * `PolynomialMatrix4_1) ^ (in_col1[23:16] * `PolynomialMatrix4_2) ^ (in_col1[15:8] * `PolynomialMatrix4_3) ^ (in_col1[7:0] * `PolynomialMatrix4_4);

    out_col2 <= (in_col2[31:24] * `PolynomialMatrix1_1) ^ (in_col2[23:16] * `PolynomialMatrix1_2) ^ (in_col2[15:8] * `PolynomialMatrix1_3) ^ (in_col2[7:0] * `PolynomialMatrix1_4);
    out_col2 <= (in_col2[31:24] * `PolynomialMatrix2_1) ^ (in_col2[23:16] * `PolynomialMatrix2_2) ^ (in_col2[15:8] * `PolynomialMatrix2_3) ^ (in_col2[7:0] * `PolynomialMatrix2_4);
    out_col2 <= (in_col2[31:24] * `PolynomialMatrix3_1) ^ (in_col2[23:16] * `PolynomialMatrix3_2) ^ (in_col2[15:8] * `PolynomialMatrix3_3) ^ (in_col2[7:0] * `PolynomialMatrix3_4);
    out_col2 <= (in_col2[31:24] * `PolynomialMatrix4_1) ^ (in_col2[23:16] * `PolynomialMatrix4_2) ^ (in_col2[15:8] * `PolynomialMatrix4_3) ^ (in_col2[7:0] * `PolynomialMatrix4_4);

    out_col3 <= (in_col3[31:24] * `PolynomialMatrix1_1) ^ (in_col3[23:16] * `PolynomialMatrix1_2) ^ (in_col3[15:8] * `PolynomialMatrix1_3) ^ (in_col3[7:0] * `PolynomialMatrix1_4);
    out_col3 <= (in_col3[31:24] * `PolynomialMatrix2_1) ^ (in_col3[23:16] * `PolynomialMatrix2_2) ^ (in_col3[15:8] * `PolynomialMatrix2_3) ^ (in_col3[7:0] * `PolynomialMatrix2_4);
    out_col3 <= (in_col3[31:24] * `PolynomialMatrix3_1) ^ (in_col3[23:16] * `PolynomialMatrix3_2) ^ (in_col3[15:8] * `PolynomialMatrix3_3) ^ (in_col3[7:0] * `PolynomialMatrix3_4);
    out_col3 <= (in_col3[31:24] * `PolynomialMatrix4_1) ^ (in_col3[23:16] * `PolynomialMatrix4_2) ^ (in_col3[15:8] * `PolynomialMatrix4_3) ^ (in_col3[7:0] * `PolynomialMatrix4_4);

    out_col4 <= (in_col4[31:24] * `PolynomialMatrix1_1) ^ (in_col4[23:16] * `PolynomialMatrix1_2) ^ (in_col4[15:8] * `PolynomialMatrix1_3) ^ (in_col4[7:0] * `PolynomialMatrix1_4);
    out_col4 <= (in_col4[31:24] * `PolynomialMatrix2_1) ^ (in_col4[23:16] * `PolynomialMatrix2_2) ^ (in_col4[15:8] * `PolynomialMatrix2_3) ^ (in_col4[7:0] * `PolynomialMatrix2_4);
    out_col4 <= (in_col4[31:24] * `PolynomialMatrix3_1) ^ (in_col4[23:16] * `PolynomialMatrix3_2) ^ (in_col4[15:8] * `PolynomialMatrix3_3) ^ (in_col4[7:0] * `PolynomialMatrix3_4);
    out_col4 <= (in_col4[31:24] * `PolynomialMatrix4_1) ^ (in_col4[23:16] * `PolynomialMatrix4_2) ^ (in_col4[15:8] * `PolynomialMatrix4_3) ^ (in_col4[7:0] * `PolynomialMatrix4_4);
    
    // out_col1 <= (in_col1 * `PolynomialMatrix1_1) ^ (in_col2 * `PolynomialMatrix1_2) ^ (in_col3 * `PolynomialMatrix1_3) ^ (in_col4 * `PolynomialMatrix1_4);
    // out_col2 <= (in_col1 * `PolynomialMatrix2_1) ^ (in_col2 * `PolynomialMatrix2_2) ^ (in_col3 * `PolynomialMatrix2_3) ^ (in_col4 * `PolynomialMatrix2_4);
    // out_col3 <= (in_col1 * `PolynomialMatrix3_1) ^ (in_col2 * `PolynomialMatrix3_2) ^ (in_col3 * `PolynomialMatrix3_3) ^ (in_col4 * `PolynomialMatrix3_4);
    // out_col4 <= (in_col1 * `PolynomialMatrix4_1) ^ (in_col2 * `PolynomialMatrix4_2) ^ (in_col3 * `PolynomialMatrix4_3) ^ (in_col4 * `PolynomialMatrix4_4);
end
endmodule
