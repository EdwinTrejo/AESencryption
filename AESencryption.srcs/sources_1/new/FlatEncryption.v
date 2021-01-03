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

    parameter PARTIAL_MSG_SIZE = 64;
    parameter FULL_MSG_SIZE = 128;
    parameter EXPANDED_KEYS = 44;
    parameter EXPANDED_KEY_PART_SIZE = 32;
    parameter INSTRUCTION_SIZE = 8;
    parameter STATE_COUNTER_SIZE = 8;
    parameter state0 = 0, state1 = 1, state2 = 2, state3 = 3, state4 = 4, state5 = 5, state6 = 6, state7 = 7, state8 = 8, state9 = 9, state10 = 10, state11 = 11, state12 = 12, state13 = 13, state14 = 14, state15 = 15;

    parameter RCON0 = 32'h8d000000, RCON1 = 32'h01000000, RCON2 = 32'h02000000, RCON3 = 32'h04000000, RCON4 = 32'h08000000, RCON5 = 32'h10000000;
    parameter RCON6 = 32'h20000000, RCON7 = 32'h40000000, RCON8 = 32'h80000000, RCON9 = 32'h1B000000, RCON10 = 32'h36000000;
    
    input [PARTIAL_MSG_SIZE-1:0] in_stream;
    input [INSTRUCTION_SIZE-1:0] in_instruction;
    input clk;
    output reg [PARTIAL_MSG_SIZE-1:0] out_stream;
    output reg [INSTRUCTION_SIZE-1:0] out_instruction;
    
    reg [FULL_MSG_SIZE-1:0] key;
    reg [FULL_MSG_SIZE-1:0] state;
    reg [STATE_COUNTER_SIZE-1:0] current_sm_state, next_sm_state;

    reg [STATE_COUNTER_SIZE-1:0] KeySchedule, KeySchedule_next, KeySchedule_part;
    reg [STATE_COUNTER_SIZE-1:0] KeySchedule_current_1, KeySchedule_current_2, KeySchedule_current_3, KeySchedule_current_4;
    reg [STATE_COUNTER_SIZE-1:0] KeySchedule_prev_1, KeySchedule_prev_2, KeySchedule_prev_3, KeySchedule_prev_4;
    reg [EXPANDED_KEY_PART_SIZE-1:0] KeySchedule_current_rcon;
    reg KeyExpansionDone;
    
    reg [EXPANDED_KEY_PART_SIZE-1:0] expanded_key [0:EXPANDED_KEYS-1];

    reg [EXPANDED_KEY_PART_SIZE-1:0] msg_in_subword, msg_in_rotword;
    wire [EXPANDED_KEY_PART_SIZE-1:0] msg_out_subword, msg_out_rotword;
    
    RotWord RotWord_uut(msg_in_rotword, msg_out_rotword);
    SubWord SubWord_uut(msg_in_subword, msg_out_subword);

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
            KeySchedule = 0;
            KeyExpansionDone = 0;
            KeySchedule_next = 1;
        end
    end
    
    //run key expansion here and store in block ram
    always @(posedge clk) begin
        if (current_sm_state == 3 && KeyExpansionDone == 1'b0 && KeySchedule == 0) begin
            //load key into from original key
            expanded_key[3] = key[31:0];
            expanded_key[2] = key[63:32];
            expanded_key[1] = key[95:64];
            expanded_key[0] = key[127:96];
            KeySchedule = KeySchedule_next;
            KeySchedule_part = 1;
        end
        else if (current_sm_state == 3 && KeyExpansionDone == 1'b0 && KeySchedule > 0) begin
            //for clarity I dont want to do this but it appears this will/might be nessesary for synthesis
            case (KeySchedule)
                1: begin
                    KeySchedule_current_1 = 4; KeySchedule_current_2 = 5; KeySchedule_current_3 = 6; KeySchedule_current_4 = 7;
                    KeySchedule_prev_1 = 0; KeySchedule_prev_2 = 1; KeySchedule_prev_3 = 2; KeySchedule_prev_4 = 3;
                    KeySchedule_current_rcon = RCON1;
                    KeySchedule_next = 2;
                end
                2: begin
                    KeySchedule_current_1 = 8; KeySchedule_current_2 = 9; KeySchedule_current_3 = 10; KeySchedule_current_4 = 11;
                    KeySchedule_prev_1 = 4; KeySchedule_prev_2 = 5; KeySchedule_prev_3 = 6; KeySchedule_prev_4 = 7;
                    KeySchedule_current_rcon = RCON2;
                    KeySchedule_next = 3;
                end
                3: begin
                    KeySchedule_current_1 = 12; KeySchedule_current_2 = 13; KeySchedule_current_3 = 14; KeySchedule_current_4 = 15;
                    KeySchedule_prev_1 = 8; KeySchedule_prev_2 = 9; KeySchedule_prev_3 = 10; KeySchedule_prev_4 = 11;
                    KeySchedule_current_rcon = RCON3;
                    KeySchedule_next = 4;
                end
                4: begin
                    KeySchedule_current_1 = 16; KeySchedule_current_2 = 17; KeySchedule_current_3 = 18; KeySchedule_current_4 = 19;
                    KeySchedule_prev_1 = 12; KeySchedule_prev_2 = 13; KeySchedule_prev_3 = 14; KeySchedule_prev_4 = 15;
                    KeySchedule_current_rcon = RCON4;
                    KeySchedule_next = 5;
                end
                5: begin
                    KeySchedule_current_1 = 20; KeySchedule_current_2 = 21; KeySchedule_current_3 = 22; KeySchedule_current_4 = 23;
                    KeySchedule_prev_1 = 16; KeySchedule_prev_2 = 17; KeySchedule_prev_3 = 18; KeySchedule_prev_4 = 19;
                    KeySchedule_current_rcon = RCON5;
                    KeySchedule_next = 6;
                end
                6: begin
                    KeySchedule_current_1 = 24; KeySchedule_current_2 = 25; KeySchedule_current_3 = 26; KeySchedule_current_4 = 27;
                    KeySchedule_prev_1 = 20; KeySchedule_prev_2 = 21; KeySchedule_prev_3 = 22; KeySchedule_prev_4 = 23;
                    KeySchedule_current_rcon = RCON6;
                    KeySchedule_next = 7;
                end
                7: begin
                    KeySchedule_current_1 = 28; KeySchedule_current_2 = 29; KeySchedule_current_3 = 30; KeySchedule_current_4 = 31;
                    KeySchedule_prev_1 = 24; KeySchedule_prev_2 = 25; KeySchedule_prev_3 = 26; KeySchedule_prev_4 = 27;
                    KeySchedule_current_rcon = RCON7;
                    KeySchedule_next = 8;
                end
                8: begin
                    KeySchedule_current_1 = 32; KeySchedule_current_2 = 33; KeySchedule_current_3 = 34; KeySchedule_current_4 = 35;
                    KeySchedule_prev_1 = 28; KeySchedule_prev_2 = 29; KeySchedule_prev_3 = 30; KeySchedule_prev_4 = 31;
                    KeySchedule_current_rcon = RCON8;
                    KeySchedule_next = 9;
                end
                9: begin
                    KeySchedule_current_1 = 36; KeySchedule_current_2 = 37; KeySchedule_current_3 = 38; KeySchedule_current_4 = 39;
                    KeySchedule_prev_1 = 32; KeySchedule_prev_2 = 33; KeySchedule_prev_3 = 34; KeySchedule_prev_4 = 35;
                    KeySchedule_current_rcon = RCON9;
                    KeySchedule_next = 10;
                end
                10: begin
                    KeySchedule_current_1 = 40; KeySchedule_current_2 = 41; KeySchedule_current_3 = 42; KeySchedule_current_4 = 43;
                    KeySchedule_prev_1 = 36; KeySchedule_prev_2 = 37; KeySchedule_prev_3 = 38; KeySchedule_prev_4 = 39;
                    KeySchedule_current_rcon = RCON10;
                    KeySchedule_next = 11;
                end
                11: begin
                end
            endcase
            
            case (KeySchedule_part)
                1: begin
                    //do the next part of the key
                    expanded_key[KeySchedule_current_1] = expanded_key[KeySchedule_prev_4];
                    KeySchedule_part = 2;
                end
                2: begin
                    //rotate word 1
                    msg_in_rotword = expanded_key[KeySchedule_current_1];
                    KeySchedule_part = 3;
                end
                3: begin
                    //rotate word 2
                    expanded_key[KeySchedule_current_1] = msg_out_rotword;
                    KeySchedule_part = 4;
                end
                4: begin
                    //subword 1
                    msg_in_subword = expanded_key[KeySchedule_current_1];
                    KeySchedule_part = 5;
                end
                5: begin
                    //subword 2
                    expanded_key[KeySchedule_current_1] = msg_out_subword;
                    KeySchedule_part = 6;
                end
                6: begin
                    //rcon
                    expanded_key[KeySchedule_current_1] = expanded_key[KeySchedule_current_1] ^ KeySchedule_current_rcon;
                    KeySchedule_part = 7;
                end
                7: begin
                    //addkey
                    expanded_key[KeySchedule_current_1] = expanded_key[KeySchedule_current_1] ^ expanded_key[KeySchedule_prev_1];
                    KeySchedule_part = 8;
                end
                8: begin
                    expanded_key[KeySchedule_current_2] = expanded_key[KeySchedule_current_1] ^ expanded_key[KeySchedule_prev_2];
                    KeySchedule_part = 9;
                end
                9: begin
                    expanded_key[KeySchedule_current_3] = expanded_key[KeySchedule_current_2] ^ expanded_key[KeySchedule_prev_3];
                    KeySchedule_part = 10;
                end
                10: begin
                    expanded_key[KeySchedule_current_4] = expanded_key[KeySchedule_current_3] ^ expanded_key[KeySchedule_prev_4];
                    //advance counter for loop
                    KeySchedule = KeySchedule_next;
                    KeySchedule_part = 1;
                end
            endcase
            
            //done
            if (KeySchedule > 10) begin
                KeyExpansionDone = 1'b1;
            end
        end
        else if (current_sm_state == 3 && KeyExpansionDone == 1'b1) begin
            next_sm_state = state4;
            KeyExpansionDone = 1'b0;
            KeySchedule = 0;
            KeySchedule_next = 0;
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