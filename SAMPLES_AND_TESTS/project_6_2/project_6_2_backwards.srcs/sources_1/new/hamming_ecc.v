`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2020 04:30:05 PM
// Design Name: 
// Module Name: hamming_ecc
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

//check how many errors

module hamming_ecc(clk, code, error_bit_location, error);
    input clk;
    input [6:0] code;
    output reg [2:0] error_bit_location;
    output reg error = 0;
    
    reg [2:0] incoming_parity;
    reg [2:0] check_parity;
    
    always @(*) begin
        incoming_parity = {code[3], code[1], code[0]};
        check_parity[2] = code[4] ^ code[5] ^ code[6];
        check_parity[1] = code[2] ^ code[5] ^ code[6];
        check_parity[0] = code[2] ^ code[4] ^ code[6];
        error_bit_location = incoming_parity ^ check_parity;
        error = error_bit_location != 3'b000 ? 1'b1 : 1'b0;
    end
endmodule

//SECDED check, returns DED 'hFF on SEC fail

module hamming_check(clk, code, return_sequence);
    input clk;
    input [6:0] code;
    output reg [6:0] return_sequence;
    
    wire [2:0] first_error_pos, second_error_pos;
    wire error_flag_one, error_flag_two;
    wire [6:0] code_reg;
    reg [6:0] first_check_output, second_check_output;
    reg first_check_failed;
    
    hamming_ecc hamming_ecc_one_uut(.clk(clk), .code(code), .error_bit_location(first_error_pos), .error(error_flag_one));
    hamming_ecc hamming_ecc_two_uut(.clk(clk), .code(first_check_output), .error_bit_location(second_error_pos), .error(error_flag_two));
    //implement retry check logic (maybe just register it and run the dang thing twice
    
    assign code_reg = code;
    
    always @(posedge clk) begin
        if (error_flag_one) begin
            first_check_output = code_reg;
            first_check_output[first_error_pos] = ~first_check_output[first_error_pos];
            first_check_failed = 1'b1;
        end
        else begin
            first_check_output = code_reg;
            first_check_failed = 1'b0;
        end
    end
    
    always @(posedge clk) begin
        if (first_check_failed && error_flag_two) begin
            second_check_output = 'hFF;
            first_check_failed = 1'b0;
        end
        else begin
            second_check_output = first_check_output;
        end
    end
    
    always @(posedge clk) begin
        return_sequence = second_check_output;
    end
    
endmodule
