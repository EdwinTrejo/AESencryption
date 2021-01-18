`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2020 08:35:10 PM
// Design Name: 
// Module Name: state_machine
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


module state_machine(clk, message_in, key, message_out);

// if they're equal, it's full, move to state 3
// need to keep track of number of things read out of FIFO
// did not have time to implement above parts of state machine
    parameter message_size = 128;
    parameter block_size = 32;
    
    input clk;
    input [message_size-1:0] message_in;
    input [message_size-1:0] key;
    output reg [message_size-1:0] message_out;
    
    reg [message_size-1:0] state;
    wire [block_size-1:0] row1, row2, row3, row4;
    wire [block_size-1:0] col1, col2, col3, col4;

    reg [message_size-1:0] key_state;
    wire [block_size-1:0] key_row1, key_row2, key_row3, key_row4;
    wire [block_size-1:0] key_col1, key_col2, key_col3, key_col4;
    
    /*
    row1 = 127 to 96
    row2 95 to 64
    row3 63 to 32
    row4 31 to 0
    */
    
    assign row1 = state[127:96];
    assign row2 = state[95:64];
    assign row3 = state[63:63];
    assign row4 = state[31:0];
    
    assign key_row1 = key_state[127:96];
    assign key_row2 = key_state[95:64];
    assign key_row3 = key_state[63:63];
    assign key_row4 = key_state[31:0];
    
    /*
    cccc 127 to 120 | 95 to 88 | 63 to 56 | 31 to 24
    oooo 119 to 112 | 87 to 80 | 55 to 48 | 23 to 16
    llll 111 to 104 | 79 to 72 | 47 to 40 | 15 to 8
    1234 103 to 96 | 71 to 64 | 39 to 32 | 7 to 0
    */
    
     assign col1 = {state[127:120], state[95:88], state[63:55], state[31:24]};
     assign col2 = {state[119:112], state[87:80], state[55:48], state[23:16]};
     assign col3 = {state[111:104], state[79:72], state[47:40], state[15:8]};
     assign col4 = {state[103:96], state[71:64], state[39:32], state[7:0]};
     
     assign key_col1 = {key_state[127:120], key_state[95:88], key_state[63:55], key_state[31:24]};
     assign key_col2 = {key_state[119:112], key_state[87:80], key_state[55:48], key_state[23:16]};
     assign key_col3 = {key_state[111:104], key_state[79:72], key_state[47:40], key_state[15:8]};
     assign key_col4 = {key_state[103:96], key_state[71:64], key_state[39:32], key_state[7:0]};
     
    addRoundKey(
    .msg_row1(), 
    .msg_row2(), 
    .msg_row3(), 
    .msg_row4(), 
    .key_row1(), 
    .key_row2(), 
    .key_row3(), 
    .key_row4(), 
    .out_row1(), 
    .out_row2(), 
    .out_row3(), 
    .out_row4(), 
    .enable());
    
    byte_substitution(
    .msg1_row1(), 
    .msg1_row2(), 
    .msg1_row3(), 
    .msg1_row4(), 
    .msg2_row1(), 
    .msg2_row2(), 
    .msg2_row3(), 
    .msg2_row4(), 
    .msg3_row1(), 
    .msg3_row2(), 
    .msg3_row3(), 
    .msg3_row4(), 
    .msg4_row1(), 
    .msg4_row2(), 
    .msg4_row3(), 
    .msg4_row4(), 
    .enable(), 
    .out_row1(), 
    .out_row2(), 
    .out_row3(), 
    .out_row4());
    
    shiftRows(
    .in_row1(), 
    .in_row2(), 
    .in_row3(), 
    .in_row4(), 
    .enable(), 
    .out_row1(), 
    .out_row2(), 
    .out_row3(), 
    .out_row4());
    
    mixColumns(
    .in_col1(), 
    .in_col2(), 
    .in_col3(), 
    .in_col4(), 
    .enable(), 
    .out_col1(), 
    .out_col2(), 
    .out_col3(), 
    .out_col4());
    
                    // add round key
    // FF? - storage in block ram
    // sub bytes
    // shift rows
    // mix columns
    // go to next state
    reg [3:0] i;
    reg [1:0] j;
    reg addRoundKey_en, subBytes_en, shiftRows_en, mixCol_en;
   
   
    always @(posedge clk) begin
      for (i=0; i<10; i = i + 1) begin
        for (j=0; j<4; j = j + 1) begin
            addRoundKey_en = 0;
            subBytes_en = 0;
            shiftRows_en = 0;
            mixCol_en = 0;
            
            if (j == 0) begin
                addRoundKey_en = 1;
            end
            else if (j == 1) begin
                subBytes_en = 1;
            end
            else if (j == 2) begin
                shiftRows_en = 1;
            end
            else if (j == 3) begin
                mixCol_en = 1;
            end
        end
      end
  end
  
endmodule
