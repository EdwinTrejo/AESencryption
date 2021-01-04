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
    //size references
    parameter PARTIAL_MSG_SIZE = 8'h40;//64
    parameter FULL_MSG_SIZE = 8'h80;//128
    parameter EXPANDED_KEYS = 8'h2C;//44
    parameter EXPANDED_KEY_PART_SIZE = 8'h20;//32
    parameter INSTRUCTION_SIZE = 8'h08;//8
    parameter STATE_COUNTER_SIZE = 8'h08;//8
    parameter state0 = 8'h00, state1 = 8'h01, state2 = 8'h02, state3 = 8'h03, state4 = 8'h04, state5 = 8'h05, state6 = 8'h06, state7 = 8'h07, state8 = 8'h08, state9 = 8'h09, state10 = 8'h0A, state11 = 8'h0B, state12 = 8'h0C, state13 = 8'h0D, state14 = 8'h0E, state15 = 8'h0F;

    //key expansin round addition value
    parameter RCON0 = 32'h8d000000, RCON1 = 32'h01000000, RCON2 = 32'h02000000, RCON3 = 32'h04000000, RCON4 = 32'h08000000, RCON5 = 32'h10000000;
    parameter RCON6 = 32'h20000000, RCON7 = 32'h40000000, RCON8 = 32'h80000000, RCON9 = 32'h1B000000, RCON10 = 32'h36000000;

    //inputs and outputs
    input [PARTIAL_MSG_SIZE-1:0] in_stream;
    input [INSTRUCTION_SIZE-1:0] in_instruction;
    input clk;
    output reg [PARTIAL_MSG_SIZE-1:0] out_stream;
    output reg [INSTRUCTION_SIZE-1:0] out_instruction;
    
    //state machine management
    reg [FULL_MSG_SIZE-1:0] key;
    reg [FULL_MSG_SIZE-1:0] state;
    reg [STATE_COUNTER_SIZE-1:0] current_sm_state, next_sm_state;

    //key expansion
    reg [STATE_COUNTER_SIZE-1:0] KeySchedule, KeySchedule_next, KeySchedule_part;
    reg [STATE_COUNTER_SIZE-1:0] KeySchedule_current_1, KeySchedule_current_2, KeySchedule_current_3, KeySchedule_current_4; //also will be used by encryption
    reg [STATE_COUNTER_SIZE-1:0] KeySchedule_prev_1, KeySchedule_prev_2, KeySchedule_prev_3, KeySchedule_prev_4;
    reg [EXPANDED_KEY_PART_SIZE-1:0] KeySchedule_current_rcon;
    reg KeyExpansionDone;
    reg [EXPANDED_KEY_PART_SIZE-1:0] expanded_key [0:EXPANDED_KEYS-1];

    reg [EXPANDED_KEY_PART_SIZE-1:0] msg_in_subword, msg_in_rotword;
    wire [EXPANDED_KEY_PART_SIZE-1:0] msg_out_subword, msg_out_rotword;
    RotWord RotWord_uut(msg_in_rotword, msg_out_rotword);
    SubWord SubWord_uut(msg_in_subword, msg_out_subword);

    //encryption
    parameter times_two_B = 8'h1B;
    parameter state_blocks = 8'h10;//16
    parameter state_block_size = 8'h08;//8
    reg [state_block_size-1:0] block_state [0:state_blocks-1];
    reg [state_block_size-1:0] block_key [0:state_blocks-1];
    reg [STATE_COUNTER_SIZE-1:0] xtime, xtime_next, xtime_part;
    reg [STATE_COUNTER_SIZE-1:0] MixColumns_current_1, MixColumns_current_2, MixColumns_current_3, MixColumns_current_4;
    reg times_two_eighth_digit, encryption_done;
    
    always @(negedge clk) begin
        current_sm_state <= next_sm_state;
    end
    
    //waiting state
    always @(posedge clk) begin
        if (in_instruction == 1) begin
            //end waiting state
            //current_sm_state <= state1; //only nessesary becuase of unkown states and fixed by using negative edges
            next_sm_state <= state1;
            out_instruction <= 2;
        end
        else if (current_sm_state == 0 && in_instruction != 1) begin
            //waiting state
            out_instruction <= 1;
            next_sm_state <= state0;
        end
    end
    
    //receiving the key
    always @(posedge clk) begin
        if (current_sm_state == 1 && in_instruction == 2) begin
            //from 128 to 64
            key[127:64] <= in_stream;
        end
        else if (current_sm_state == 1 && in_instruction == 3) begin
            key[63:0] <= in_stream;
            next_sm_state <= state2;
        end
    end
    
    //receiving the state
    always @(posedge clk) begin
        if (current_sm_state == 2 && in_instruction == 4) begin
            //from 128 to 64
            state[127:64] <= in_stream;
        end
        else if (current_sm_state == 2 && in_instruction == 5) begin
            state[63:0] <= in_stream;
            next_sm_state <= state3;
            KeySchedule <= 0;
            KeyExpansionDone <= 0;
            KeySchedule_next <= 1;
        end
    end
    
    //run key expansion here and store in block ram (NEGATIVE EDGE)
    always @(negedge clk) begin
        if (current_sm_state == 3 && KeyExpansionDone == 1'b0 && KeySchedule > 0) begin
            //for clarity I dont want to do this but it appears this will/might be nessesary for synthesis
            case (KeySchedule)
                1: begin
                    KeySchedule_current_1 <= 4; KeySchedule_current_2 <= 5; KeySchedule_current_3 <= 6; KeySchedule_current_4 <= 7;
                    KeySchedule_prev_1 <= 0; KeySchedule_prev_2 <= 1; KeySchedule_prev_3 <= 2; KeySchedule_prev_4 <= 3;
                    KeySchedule_current_rcon <= RCON1;
                    KeySchedule_next <= 2;
                end
                2: begin
                    KeySchedule_current_1 <= 8; KeySchedule_current_2 <= 9; KeySchedule_current_3 <= 10; KeySchedule_current_4 <= 11;
                    KeySchedule_prev_1 <= 4; KeySchedule_prev_2 <= 5; KeySchedule_prev_3 <= 6; KeySchedule_prev_4 <= 7;
                    KeySchedule_current_rcon <= RCON2;
                    KeySchedule_next <= 3;
                end
                3: begin
                    KeySchedule_current_1 <= 12; KeySchedule_current_2 <= 13; KeySchedule_current_3 <= 14; KeySchedule_current_4 <= 15;
                    KeySchedule_prev_1 <= 8; KeySchedule_prev_2 <= 9; KeySchedule_prev_3 <= 10; KeySchedule_prev_4 <= 11;
                    KeySchedule_current_rcon <= RCON3;
                    KeySchedule_next <= 4;
                end
                4: begin
                    KeySchedule_current_1 <= 16; KeySchedule_current_2 <= 17; KeySchedule_current_3 <= 18; KeySchedule_current_4 <= 19;
                    KeySchedule_prev_1 <= 12; KeySchedule_prev_2 <= 13; KeySchedule_prev_3 <= 14; KeySchedule_prev_4 <= 15;
                    KeySchedule_current_rcon <= RCON4;
                    KeySchedule_next <= 5;
                end
                5: begin
                    KeySchedule_current_1 <= 20; KeySchedule_current_2 <= 21; KeySchedule_current_3 <= 22; KeySchedule_current_4 <= 23;
                    KeySchedule_prev_1 <= 16; KeySchedule_prev_2 <= 17; KeySchedule_prev_3 <= 18; KeySchedule_prev_4 <= 19;
                    KeySchedule_current_rcon <= RCON5;
                    KeySchedule_next <= 6;
                end
                6: begin
                    KeySchedule_current_1 <= 24; KeySchedule_current_2 <= 25; KeySchedule_current_3 <= 26; KeySchedule_current_4 <= 27;
                    KeySchedule_prev_1 <= 20; KeySchedule_prev_2 <= 21; KeySchedule_prev_3 <= 22; KeySchedule_prev_4 <= 23;
                    KeySchedule_current_rcon <= RCON6;
                    KeySchedule_next <= 7;
                end
                7: begin
                    KeySchedule_current_1 <= 28; KeySchedule_current_2 <= 29; KeySchedule_current_3 <= 30; KeySchedule_current_4 <= 31;
                    KeySchedule_prev_1 <= 24; KeySchedule_prev_2 <= 25; KeySchedule_prev_3 <= 26; KeySchedule_prev_4 <= 27;
                    KeySchedule_current_rcon <= RCON7;
                    KeySchedule_next <= 8;
                end
                8: begin
                    KeySchedule_current_1 <= 32; KeySchedule_current_2 <= 33; KeySchedule_current_3 <= 34; KeySchedule_current_4 <= 35;
                    KeySchedule_prev_1 <= 28; KeySchedule_prev_2 <= 29; KeySchedule_prev_3 <= 30; KeySchedule_prev_4 <= 31;
                    KeySchedule_current_rcon <= RCON8;
                    KeySchedule_next <= 9;
                end
                9: begin
                    KeySchedule_current_1 <= 36; KeySchedule_current_2 <= 37; KeySchedule_current_3 <= 38; KeySchedule_current_4 <= 39;
                    KeySchedule_prev_1 <= 32; KeySchedule_prev_2 <= 33; KeySchedule_prev_3 <= 34; KeySchedule_prev_4 <= 35;
                    KeySchedule_current_rcon <= RCON9;
                    KeySchedule_next <= 10;
                end
                10: begin
                    KeySchedule_current_1 <= 40; KeySchedule_current_2 <= 41; KeySchedule_current_3 <= 42; KeySchedule_current_4 <= 43;
                    KeySchedule_prev_1 <= 36; KeySchedule_prev_2 <= 37; KeySchedule_prev_3 <= 38; KeySchedule_prev_4 <= 39;
                    KeySchedule_current_rcon <= RCON10;
                    KeySchedule_next <= 11;
                end
            endcase
        end
    end
    
    //run key expansion here and store in block ram
    always @(posedge clk) begin
        if (current_sm_state == 3 && KeyExpansionDone == 1'b0 && KeySchedule == 0) begin
            //load key into from original key
            expanded_key[3] <= key[31:0];
            expanded_key[2] <= key[63:32];
            expanded_key[1] <= key[95:64];
            expanded_key[0] <= key[127:96];
            KeySchedule <= KeySchedule_next;
            KeySchedule_part <= 1;
        end
        else if (current_sm_state == 3 && KeyExpansionDone == 1'b0 && KeySchedule > 0) begin            
            case (KeySchedule_part)
                1: begin
                    //do the next part of the key
                    expanded_key[KeySchedule_current_1] <= expanded_key[KeySchedule_prev_4];
                    KeySchedule_part <= 2;
                end
                2: begin
                    //rotate word 1
                    msg_in_rotword <= expanded_key[KeySchedule_current_1];
                    KeySchedule_part <= 3;
                end
                3: begin
                    //rotate word 2
                    expanded_key[KeySchedule_current_1] <= msg_out_rotword;
                    KeySchedule_part <= 4;
                end
                4: begin
                    //subword 1
                    msg_in_subword <= expanded_key[KeySchedule_current_1];
                    KeySchedule_part <= 5;
                end
                5: begin
                    //subword 2
                    expanded_key[KeySchedule_current_1] <= msg_out_subword;
                    KeySchedule_part <= 6;
                end
                6: begin
                    //rcon
                    expanded_key[KeySchedule_current_1] <= expanded_key[KeySchedule_current_1] ^ KeySchedule_current_rcon;
                    KeySchedule_part <= 7;
                end
                7: begin
                    //addkey
                    expanded_key[KeySchedule_current_1] <= expanded_key[KeySchedule_current_1] ^ expanded_key[KeySchedule_prev_1];
                    KeySchedule_part <= 8;
                end
                8: begin
                    expanded_key[KeySchedule_current_2] <= expanded_key[KeySchedule_current_1] ^ expanded_key[KeySchedule_prev_2];
                    KeySchedule_part <= 9;
                end
                9: begin
                    expanded_key[KeySchedule_current_3] <= expanded_key[KeySchedule_current_2] ^ expanded_key[KeySchedule_prev_3];
                    KeySchedule_part <= 10;
                end
                10: begin
                    expanded_key[KeySchedule_current_4] <= expanded_key[KeySchedule_current_3] ^ expanded_key[KeySchedule_prev_4];
                    //advance counter for loop
                    KeySchedule <= KeySchedule_next;
                    KeySchedule_part <= 1;
                end
            endcase
            
            //done
            if (KeySchedule > 10) begin
                KeyExpansionDone <= 1'b1;
            end
        end
        else if (current_sm_state == 3 && KeyExpansionDone == 1'b1) begin
            next_sm_state <= state4;
            KeyExpansionDone <= 1'b0;
            KeySchedule <= 0;
            KeySchedule_next <= 0;
        end
    end
    
    //add initial key
    always @(posedge clk) begin
        if (current_sm_state == 4) begin
            next_sm_state <= state5;
            state <= state ^ key;
            xtime <= 1;
            xtime_next <= 1;
            xtime_part <= 1;
            encryption_done <= 0;
        end
    end

    //run full encryption NEGEDGE
    always @(negedge clk) begin
        //block_state, block_key
        //xtime, xtime_next, xtime_part
        //MixColumns_current_1, MixColumns_current_2, MixColumns_current_3, MixColumns_current_4
        if (current_sm_state == 5 && encryption_done == 0 && xtime > 0) begin
            case (xtime)
                1: begin
                    block_state[0] <= state[7:0];
                    block_state[1] <= state[15:8];
                    block_state[2] <= state[23:16];
                    block_state[3] <= state[31:24];
                    block_state[4] <= state[39:32];
                    block_state[5] <= state[47:40];
                    block_state[6] <= state[55:48];
                    block_state[7] <= state[63:56];
                    block_state[8] <= state[71:64];
                    block_state[9] <= state[79:72];
                    block_state[10] <= state[87:80];
                    block_state[11] <= state[95:88];
                    block_state[12] <= state[103:96];
                    block_state[13] <= state[111:104];
                    block_state[14] <= state[119:112];
                    block_state[15] <= state[127:120];

                    block_key[0] <= key[7:0];
                    block_key[1] <= key[15:8];
                    block_key[2] <= key[23:16];
                    block_key[3] <= key[31:24];
                    block_key[4] <= key[39:32];
                    block_key[5] <= key[47:40];
                    block_key[6] <= key[55:48];
                    block_key[7] <= key[63:56];
                    block_key[8] <= key[71:64];
                    block_key[9] <= key[79:72];
                    block_key[10] <= key[87:80];
                    block_key[11] <= key[95:88];
                    block_key[12] <= key[103:96];
                    block_key[13] <= key[111:104];
                    block_key[14] <= key[119:112];
                    block_key[15] <= key[127:120];

                    xtime_next <= 2;
                end
                2: begin
                    xtime_next <= 3;
                end
                3: begin
                    xtime_next <= 4;
                end
                4: begin
                    xtime_next <= 5;
                end
                5: begin
                    xtime_next <= 6;
                end
                6: begin
                    xtime_next <= 7;
                end
                7: begin
                    xtime_next <= 8;
                end
                8: begin
                    xtime_next <= 9;
                end
                9: begin
                    xtime_next <= 10;
                end
                10: begin
                    xtime_next <= 11;
                end
            endcase
        end
    end
    
    //run full encryption
    always @(posedge clk) begin
        if (current_sm_state == 5) begin
            //blocking statement logic here
            //it might be best to break this down as well as keyexpansion into multiple always blocks to reduce wait
            //xtime, xtime_next, xtime_part

            //THIS ONE might take a lot of steps
            if (current_sm_state == 5 && encryption_done == 0 && xtime > 0) begin
                case (xtime_part)
                    1: begin
                    end
                    2: begin
                    end
                    3: begin
                    end
                    4: begin
                    end
                    5: begin
                    end
                    6: begin
                    end
                    7: begin
                    end
                    8: begin
                    end
                    9: begin
                    end
                    10: begin
                    end
                    12: begin
                    end
                    13: begin
                    end
                    14: begin
                    end
                    15: begin
                    end
                    16: begin
                    end
                    17: begin
                    end
                endcase
                if (xtime > 10) begin
                    encryption_done <= 1'b1;
                end
            end
            else if (current_sm_state == 5 && encryption_done == 1'b1) begin
                next_sm_state <= state7;
                encryption_done <= 1'b0;
                xtime <= 0;
                xtime_next <= 0;
            end

            next_sm_state <= state6;
        end
    end
    
    //send encryption done signal and place into the state register
    always @(posedge clk) begin
        if (current_sm_state == 6) begin
            next_sm_state <= state7;
            out_instruction <= 3;
        end
    end
    
    //send the output
    always @(posedge clk) begin
        if (current_sm_state == 7) begin
            out_stream <= state[127:64];
            next_sm_state <= 8;
            out_instruction <= state4;
        end
        else if (current_sm_state == 8) begin
            out_stream <= state[63:0];
            next_sm_state <= state0;
            out_instruction <= 5;
        end
    end
endmodule