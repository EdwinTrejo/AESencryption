`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2020 03:03:14 PM
// Design Name: 
// Module Name: FlatEncryption
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


module FlatEncryption(in_stream, in_instruction, out_stream, out_instruction, clk);
    input [63:0] in_stream;
    input [7:0] in_instruction;
    input clk;
    output reg [63:0] out_stream;
    output reg [7:0] out_instruction;
    
    reg [127:0] key;
    reg [127:0] state;
    reg [7:0] current_sm_state, next_sm_state;
    
    parameter state0 = 0, state1 = 1, state2 = 2, state3 = 3, state4 = 4, state5 = 5, state6 = 6, state7 = 7, state8 = 8;
    
    //NOT SYNTHESIZABLE
    initial begin
        current_sm_state = 0;
        next_sm_state = state0;
        out_instruction = 1;
    end
    
    always @(posedge clk) begin
        current_sm_state = next_sm_state;
    end
    
    //waiting state
    always @(posedge clk) begin
        if (current_sm_state == 0 && in_instruction == 1) begin
            //end waiting state
            next_sm_state = state1;
            out_instruction = 2;
        end
        else if (current_sm_state == 0) begin
            //waiting state
            out_instruction = 1;
            next_sm_state = state0;
        end
    end
    
    //receiving the key
    always @(posedge clk) begin
        if (current_sm_state == 1 && in_instruction == 2) begin
            //from 128 to 64
            key[127:64] = in_stream;
        end
        else if (current_sm_state == 1 && in_instruction == 3) begin
            key[63:0] = in_stream;
            next_sm_state = state2;
        end
    end
    
    //receiving the state
    always @(posedge clk) begin
        if (current_sm_state == 2 && in_instruction == 4) begin
            //from 128 to 64
            state[127:64] = in_stream;
        end
        else if (current_sm_state == 2 && in_instruction == 5) begin
            state[63:0] = in_stream;
            next_sm_state = state3;
        end
    end
    
    //run key expansion here and store in block ram
    always @(posedge clk) begin
        if (current_sm_state == 3) begin
            next_sm_state = state4;
        end
    end
    
    //add initial key
    always @(posedge clk) begin
        if (current_sm_state == 4) begin
            next_sm_state = state5;
            state = state ^ key;
        end
    end
    
    //run full encryption
    always @(posedge clk) begin
        if (current_sm_state == 5) begin
            //blocking statement logic here
            //it might be best to break this down as well as keyexpansion into multiple always blocks to reduce wait
            next_sm_state = state6;
        end
    end
    
    //send encryption done signal
    always @(posedge clk) begin
        if (current_sm_state == 6) begin
            next_sm_state = state7;
            out_instruction = 3;
        end
    end
    
    //send the output
    always @(posedge clk) begin
        if (current_sm_state == 7) begin
            out_stream = state[127:64];
            next_sm_state = 8;
            out_instruction = state4;
        end
        else if (current_sm_state == 8) begin
            out_stream = state[63:0];
            next_sm_state = state0;
            out_instruction = 5;
        end
    end
endmodule
