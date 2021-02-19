`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Company : 
//Engineer : 
//
//Create Date : 10/02/2020 10 : 37 : 02 AM
//Design Name : 
//Module Name : shiftRows
//Project Name : 
//Target Devices : 
//Tool Versions : 
//Description : 
//
//Dependencies : 
//
//Revision : 
//Revision 0.01 - File Created
//Additional Comments : 
//
//////////////////////////////////////////////////////////////////////////////////

module shiftRows(in_row1, in_row2, in_row3, in_row4, enable, out_row1, out_row2, out_row3, out_row4) ;

    input [31 : 0] in_row1, in_row2, in_row3, in_row4;
    input enable;
    output reg [31 : 0] out_row1, out_row2, out_row3, out_row4;

    // reg [31 : 0] temp1, temp2, temp3, temp4;

always @(enable) begin

    out_row1[31:24] <= in_row1[31:24];
    out_row1[23:16] <= in_row1[23:16];
    out_row1[15:8] <= in_row1[15:8];
    out_row1[7:0] <= in_row1[7:0];

    out_row2[31:24] <= in_row2[7:0];
    out_row2[23:16] <= in_row2[31:24];
    out_row2[15:8] <= in_row2[23:16];
    out_row2[7:0] <= in_row2[15:8];

    out_row3[31:24] <= in_row3[15:8];
    out_row3[23:16] <= in_row3[7:0];
    out_row3[15:8] <= in_row3[31:24];
    out_row3[7:0] <= in_row3[23:16];

    out_row4[31:24] <= in_row4[23:16];
    out_row4[23:16] <= in_row4[15:8];
    out_row4[15:8] <= in_row4[7:0];
    out_row4[7:0] <= in_row4[31:24];

end
endmodule
    
// always @(enable) begin
//     temp1 <= in_row1;
//     temp2 <= in_row2;
//     temp3 <= in_row3;
//     temp4 <= in_row4;
//     case (row)
//         1 : begin
//             out_row1 <= temp1;
//             out_row2 <= temp2;
//             out_row3 <= temp3;
//             out_row4 <= temp4;
//         end
//         2 : begin
//             out_row1 <= temp2;
//             out_row2 <= temp3;
//             out_row3 <= temp4;
//             out_row4 <= temp1;
//         end
//         3 : begin
//             out_row1 <= temp3;
//             out_row2 <= temp4;
//             out_row3 <= temp1;
//             out_row4 <= temp2;
//         end
//         4 : begin
//             out_row1 <= temp4;
//             out_row2 <= temp1;
//             out_row3 <= temp2;
//             out_row4 <= temp3;
//         end
//     endcase
// end
// endmodule