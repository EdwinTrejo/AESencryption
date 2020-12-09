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


module state_machine(clk);

// if they're equal, it's full, move to state 3
// need to keep track of number of things read out of FIFO
// did not have time to implement above parts of state machine
    input clk;
    
    
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
    
    initial begin
        breakMessage128to8(clk, IncomingMessage, key);
    end

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
