`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 07:37:35 PM
// Design Name: 
// Module Name: byte_substitution
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

module byte_substitution(msg1_row1, msg1_row2, msg1_row3, msg1_row4, msg2_row1, msg2_row2, msg2_row3, msg2_row4, msg3_row1, msg3_row2, msg3_row3, msg3_row4, msg4_row1, msg4_row2, msg4_row3, msg4_row4, enable, out_row1, out_row2, out_row3, out_row4);

//reg [7:0]b[100]; // declares 100 8-bit entries, if we need it later

    // not sure the matrix we're working with is actually 4-wide, but idk
    input [7:0] msg1_row1, msg1_row2, msg1_row3, msg1_row4, msg2_row1, msg2_row2, msg2_row3, msg2_row4, msg3_row1, msg3_row2, msg3_row3, msg3_row4, msg4_row1, msg4_row2, msg4_row3, msg4_row4; // 00 22 56 34
    input enable;
    output reg [7:0] out_row1, out_row2, out_row3, out_row4;

    // not sure this should be clocked with enable
    
    // replace each byte of the state matrix with a byte from the lookup table (SBox) as defined in FIPS
    SBox_lookup_table(msg1_row1, enable, out1_row1);
    SBox_lookup_table(msg1_row2, enable, out1_row2);
    SBox_lookup_table(msg1_row3, enable, out1_row3);
    SBox_lookup_table(msg1_row4, enable, out1_row4);
    SBox_lookup_table(msg2_row1, enable, out2_row1);
    SBox_lookup_table(msg2_row2, enable, out2_row2);
    SBox_lookup_table(msg2_row3, enable, out2_row3);
    SBox_lookup_table(msg2_row4, enable, out2_row4);
    SBox_lookup_table(msg3_row1, enable, out3_row1);
    SBox_lookup_table(msg3_row2, enable, out3_row2);
    SBox_lookup_table(msg3_row3, enable, out3_row3);
    SBox_lookup_table(msg3_row4, enable, out3_row4);
    SBox_lookup_table(msg4_row1, enable, out4_row1);
    SBox_lookup_table(msg4_row2, enable, out4_row2);
    SBox_lookup_table(msg4_row3, enable, out4_row3);
    SBox_lookup_table(msg4_row4, enable, out4_row4);

endmodule
