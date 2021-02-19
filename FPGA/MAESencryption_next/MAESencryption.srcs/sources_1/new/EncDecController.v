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


module EncDecController(
        input clk,
        input [63:0] in_stream,
        output reg [63:0] out_stream,
        input rx_complete,
        output reg tx_start
    );
    
    wire [63:0] encrypt_out_stream;
    reg [7:0] current_sm_state, next_sm_state;
    
    reg [7:0] encrypt_instruction;
    wire [7:0] encrypt_state;
    
    FlatEncryption FlatEncryption_uut(.in_stream(in_stream), .in_instruction(encrypt_instruction), .out_stream(encrypt_out_stream), .out_instruction(encrypt_state), .clk(clk));
        
    always @(*) begin
        current_sm_state = next_sm_state;
    end
    
    //in_instruction
    always @(clk) begin
        if (rx_complete == 1 & in_stream == 64'h1111111111111111 & current_sm_state == 0) begin
            //begin encryption
            encrypt_instruction <= 1;
            next_sm_state <= 1;
        end
    end
    
    always @(clk) begin
    
        if (rx_complete == 1 & encrypt_state == 2 & current_sm_state == 1) begin
            // key part1
            encrypt_instruction <= 2;
            next_sm_state <= 2;
        end
        else if (rx_complete == 1 & encrypt_state == 2 & current_sm_state == 2) begin
            // key part2
            encrypt_instruction <= 3;
            next_sm_state <= 3;
        end
        else if (rx_complete == 1 & encrypt_state == 2 & current_sm_state == 3) begin
            // state part1
            encrypt_instruction <= 4;
            next_sm_state <= 4;
        end
        else if (rx_complete == 1 & encrypt_state == 2 & current_sm_state == 4) begin
            //state part2
            encrypt_instruction <= 5;
            next_sm_state <= 5;
        end
    end
    
    always @(clk) begin
        tx_start <= 0;
    end
    
    always @(clk) begin
        if (encrypt_state == 3 & current_sm_state == 5) begin
            next_sm_state <= 6;
            out_stream <= 64'h1111111111111111;
            tx_start <= 1;
        end
        else if (encrypt_state == 4 & current_sm_state == 6) begin
            out_stream <= encrypt_out_stream;
            next_sm_state <= 7;
            tx_start <= 1;
        end
        else if (encrypt_state == 5 & current_sm_state == 7) begin
            out_stream <= encrypt_out_stream;
            next_sm_state <= 0;
            tx_start <= 1;
        end
    end
    
endmodule
