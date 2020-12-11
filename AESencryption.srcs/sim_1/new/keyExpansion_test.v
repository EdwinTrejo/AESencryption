`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2020 05:21:50 PM
// Design Name: 
// Module Name: keyExpansion_test
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


module keyExpansion_test();
    parameter message_size = 128;
    parameter block_size = 32;
    
    wire [message_size-1:0] state;
    reg [message_size-1:0] plaintext;
//    wire [block_size-1:0] row1, row2, row3, row4;
//    wire [block_size-1:0] prow1, prow2, prow3, prow4;
//    wire [block_size-1:0] col1, col2, col3, col4;

    
    reg [message_size-1:0] key_state;
//    wire [block_size-1:0] key_row1, key_row2, key_row3, key_row4;
//    wire [block_size-1:0] key_col1, key_col2, key_col3, key_col4;
    
    reg addRoundKey_en;//, subBytes_en, shiftRows_en, mixCol_en;
    
    /*
    row1 = 127 to 96
    row2 95 to 64
    row3 63 to 32
    row4 31 to 0
    */
    
//    assign row1 = state[127:96];
//    assign row2 = state[95:64];
//    assign row3 = state[63:32];
//    assign row4 = state[31:0];
    
//    assign prow1 = plaintext[127:96];
//    assign prow2 = plaintext[95:64];
//    assign prow3 = plaintext[63:32];
//    assign prow4 = plaintext[31:0];
    
//    assign key_row1 = key_state[127:96];
//    assign key_row2 = key_state[95:64];
//    assign key_row3 = key_state[63:32];
//    assign key_row4 = key_state[31:0];
    
    /*
    cccc 127 to 120 | 95 to 88 | 63 to 56 | 31 to 24
    oooo 119 to 112 | 87 to 80 | 55 to 48 | 23 to 16
    llll 111 to 104 | 79 to 72 | 47 to 40 | 15 to 8
    1234 103 to 96 | 71 to 64 | 39 to 32 | 7 to 0
    */
    
//     assign col1 = {state[127:120], state[95:88], state[63:55], state[31:24]};
//     assign col2 = {state[119:112], state[87:80], state[55:48], state[23:16]};
//     assign col3 = {state[111:104], state[79:72], state[47:40], state[15:8]};
//     assign col4 = {state[103:96], state[71:64], state[39:32], state[7:0]};
     
//     assign key_col1 = {key_state[127:120], key_state[95:88], key_state[63:55], key_state[31:24]};
//     assign key_col2 = {key_state[119:112], key_state[87:80], key_state[55:48], key_state[23:16]};
//     assign key_col3 = {key_state[111:104], key_state[79:72], key_state[47:40], key_state[15:8]};
//     assign key_col4 = {key_state[103:96], key_state[71:64], key_state[39:32], key_state[7:0]};
     
     
    addRoundKey addRoundKey_uut(
    .msg_row1(plaintext[127:96]),
    .msg_row2(plaintext[95:64]),
    .msg_row3(plaintext[63:32]),
    .msg_row4(plaintext[31:0]),
    .key_row1(key_state[127:96]),
    .key_row2(key_state[95:64]),
    .key_row3(key_state[63:32]),
    .key_row4(key_state[31:0]),
    .out_row1(state[127:96]),
    .out_row2(state[95:64]),
    .out_row3(state[63:32]),
    .out_row4(state[31:0]),
    .enable(addRoundKey_en));
    
    //31 24
    //23 16
    //15 8
    //7 0
//    byte_substitution(
//    .msg1_row1(row1[31:24]),
//    .msg1_row2(row1[23:16]),
//    .msg1_row3(row1[15:8]),
//    .msg1_row4(row1[7:0]),
//    .msg2_row1(row2[31:24]),
//    .msg2_row2(row2[23:16]),
//    .msg2_row3(row2[15:8]),
//    .msg2_row4(row2[7:0]),
//    .msg3_row1(row3[31:24]),
//    .msg3_row2(row3[23:16]),
//    .msg3_row3(row3[15:8]),
//    .msg3_row4(row3[7:0]),
//    .msg4_row1(row4[31:24]),
//    .msg4_row2(row4[23:16]),
//    .msg4_row3(row4[15:8]),
//    .msg4_row4(row4[7:0]),
//    .enable(subBytes_en),
//    .out_row1(),
//    .out_row2(),s
//    .out_row3(),
//    .out_row4());
    
//    shiftRows(
//    .in_row1(row1),
//    .in_row2(row2),
//    .in_row3(row3),
//    .in_row4(row4),
//    .enable(shiftRows_en),
//    .out_row1(row1),
//    .out_row2(row2),
//    .out_row3(row3),
//    .out_row4(row4));
    
//    mixColumns(
//    .in_col1(col1),
//    .in_col2(col2),
//    .in_col3(col3),
//    .in_col4(col4),
//    .enable(mixCol_en),
//    .out_col1(col1),
//    .out_col2(col2),
//    .out_col3(col3),
//    .out_col4(col4));

initial begin
    addRoundKey_en = 1'b1;
//    subBytes_en = 1'b0;
//    shiftRows_en = 1'b0;
//    mixCol_en = 1'b0;
    key_state = 128'h2b7e151628aed2a6abf7158809cf4f3c;
    plaintext = 128'hffffffffffffffffffffffff09cf4f3c;
//    state = 128'hffffffffffffffffffffffff09cf4f3c;
end

always @(*) begin
    #10;
end

endmodule
