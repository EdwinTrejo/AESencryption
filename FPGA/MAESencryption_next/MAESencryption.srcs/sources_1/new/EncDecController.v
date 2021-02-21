`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2020 03:03:14 PM
// Design Name: 
// Module Name: EncDecController
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

`define state0 0
`define state1 1
`define state2 2
`define state3 3
`define state4 4
`define state5 5
`define state6 6
`define state7 7
`define state8 8
`define state9 9
`define state10 10
`define state11 11
`define state12 12
`define state13 13
`define state14 14 
`define state15 15
`define state16 16
`define state17 17
`define state18 18
`define state19 19
`define state20 20
`define state21 21
`define state22 22
`define state23 23
`define state24 24 
`define state25 25

`define nothing 0
`define encrypt 1
`define decrypt 2

module EncDecController(
        input clk,
        input [63:0] in_stream,
        output reg [63:0] out_stream,
        input rx_complete,
        output reg tx_start,
        input tx_free
    );
    
    wire [63:0] encrypt_out_stream;
    reg [15:0] current_sm_state = 0, next_sm_state = 0;
    reg [7:0] encrypt_instruction = 0;
    wire [7:0] encrypt_state;
    //idle 0
    //enc 1
    //dec 2
    reg [2:0] encrypting = 0;
    
    //we need to store the result to pass throught    
    //reg [63:0] input_streams [4:0];
    reg write_enable = 0, write_enable_enc = 0;
    reg [2:0] address, enc_address;
    wire [63:0] read_data, read_data_enc;
    reg [63:0] write_data;
    
    FlatEncryption FlatEncryption_uut(.in_stream(read_data), .in_instruction(encrypt_instruction), .out_stream(encrypt_out_stream), .out_instruction(encrypt_state), .clk(clk));
    
    register_file register_file_uut(.clk(clk), .write_enable(write_enable), .address(address), .write_data(write_data), .read_data(read_data));
    register_file register_file_uut_enc(.clk(clk), .write_enable(write_enable_enc), .address(enc_address), .write_data(encrypt_out_stream), .read_data(read_data_enc));
        
    always @(posedge clk) begin
        current_sm_state = next_sm_state;
    end
    
    always @(*) begin
        case(current_sm_state)
            `state0: begin
                if (rx_complete == 1) begin
                    case(in_stream)
                        64'h1111111111111111: begin
                            encrypting = `encrypt;
                            write_enable = 1;
                            address = 0;
                            write_data = in_stream;
                            next_sm_state = `state1;
                        end
                        64'hBBBBBBBBBBBBBBBB: begin
//                            encrypting = `decrypt;
//                            write_enable = 1;
//                            address = 0;
//                            write_data = in_stream;
//                            next_sm_state = `state1;
                            encrypting = `nothing;
                            next_sm_state = `state0;
                        end
                        default: begin
                            encrypting = `nothing;
                            next_sm_state = `state0;
                        end
                    endcase
                end
            end
            `state1: begin
                write_enable = 0;
                next_sm_state = `state2;
            end
            `state2: begin
                if (rx_complete == 1) begin
                    write_enable = 1;
                    address = 1;
                    write_data = in_stream;
                    next_sm_state = `state3;
                end
            end
            `state3: begin
                write_enable = 0;
                next_sm_state = `state4;
            end
            `state4: begin
                if (rx_complete == 1) begin
                    write_enable = 1;
                    address = 2;
                    write_data = in_stream;
                    next_sm_state = `state5;
                end
            end
            `state5: begin
                write_enable = 0;
                next_sm_state = `state6;
            end
            `state6: begin
                if (rx_complete == 1) begin
                    write_enable = 1;
                    address = 3;
                    write_data = in_stream;
                    next_sm_state = `state7;
                end
            end
            `state7: begin
                write_enable = 0;
                next_sm_state = `state8;
            end
            `state8: begin
                if (rx_complete == 1) begin
                    write_enable = 1;
                    address = 4;
                    write_data = in_stream;
                    next_sm_state = `state9;
                end
            end
            `state9: begin
                write_enable = 0;
                next_sm_state = `state10;
            end
            `state10: begin
                if (encrypting == `encrypt && encrypt_state == 1) begin
                    encrypt_instruction = `state1;
                    next_sm_state = `state11;
                end
            end
            `state11: begin
                if (encrypting == `encrypt && encrypt_state == 2) begin
                    encrypt_instruction = `state2;
                    address = 1;
                    next_sm_state = `state12;
                end
            end
            `state12: begin
                if (encrypting == `encrypt && encrypt_state == 2) begin
                    encrypt_instruction = `state3;
                    address = 2;
                    next_sm_state = `state13;
                end
            end
            `state13: begin
                if (encrypting == `encrypt && encrypt_state == 2) begin
                    encrypt_instruction = `state4;
                    address = 3;
                    next_sm_state = `state14;
                end
            end
            `state14: begin
                if (encrypting == `encrypt && encrypt_state == 2) begin
                    encrypt_instruction = `state5;
                    address = 4;
                    next_sm_state = `state15;
                end
            end
            `state15: begin
                if (encrypting == `encrypt && encrypt_state == 3) begin
                    encrypt_instruction = `state0;
                    next_sm_state = `state16;
                    write_enable_enc = 1;
                end
            end
            `state16: begin
                if (encrypting == `encrypt && encrypt_state == 4) begin
                    enc_address = 1;
                    next_sm_state = `state17;
                end
            end
            `state17: begin
                if (encrypting == `encrypt && encrypt_state == 5) begin
                    enc_address = 2;
                    next_sm_state = `state18;
                end
            end
            `state18: begin
                next_sm_state = `state19;
                write_enable_enc = 1;
            end
            `state19: begin
                write_enable_enc = 0;
                if (tx_free == 1'b1) begin
                    tx_start = 1;
                    enc_address = 1;
                    out_stream = read_data_enc;
                    next_sm_state = `state20;
                end
            end
            `state20: begin
                tx_start = 0;
                next_sm_state = `state21;
            end
            `state21: begin
                if (tx_free == 1'b1) begin
                    tx_start = 1;
                    enc_address = 2;
                    out_stream = read_data_enc;
                    next_sm_state = `state22;
                end
            end
            `state22: begin
                tx_start = 0;
                next_sm_state = `state23;
            end
            `state23: begin
                next_sm_state = `state0;
            end
        endcase
    end
    
//                if (process_complete1 == 1 || process_complete2 == 1) begin
//                    run_process = 0;
//                    next_sm_state = `state12;
//                end
    
//encryption
//    always @(clk) begin
//        if (in_stream == 64'h1111111111111111 && current_sm_state == `state0) begin
//            //begin encryption
//            if (rx_complete == 1) begin
//                encrypt_instruction <= `state1;
//                next_sm_state <= `state1;
//            end
//        end
//        else if (rx_complete == 1 && encrypt_state == `state2 && current_sm_state == `state1) begin
//            // key part1
//            encrypt_instruction <= `state2;
//            next_sm_state <= `state2;
//        end
//        else if (rx_complete == 1 && encrypt_state == `state2 && current_sm_state == `state2) begin
//            // key part2
//            encrypt_instruction <= `state3;
//            next_sm_state <= `state3;
//        end
//        else if (rx_complete == 1 && encrypt_state == `state2 && current_sm_state == `state3) begin
//            // state part1
//            encrypt_instruction <= `state4;
//            next_sm_state <= `state4;
//        end
//        else if (rx_complete == 1 && encrypt_state == `state2 && current_sm_state == `state4) begin
//            //state part2
//            encrypt_instruction <= `state5;
//            next_sm_state <= `state5;
//        end
//        else if (encrypt_state == `state3 && current_sm_state == `state5) begin
//            next_sm_state <= `state6;
//            out_stream <= 64'h1111111111111111;
//            tx_start <= 1;
//        end
//        else if (encrypt_state == `state4 && current_sm_state == `state6) begin
//            out_stream <= encrypt_out_stream;
//            next_sm_state <= `state7;
//            tx_start <= 1;
//        end
//        else if (encrypt_state == `state5 && current_sm_state == `state7) begin
//            out_stream <= encrypt_out_stream;
//            next_sm_state <= `state0;
//            tx_start <= 1;
//        end
//    end
    
endmodule
