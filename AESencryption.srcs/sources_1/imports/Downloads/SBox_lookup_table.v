`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 08:20:53 PM
// Design Name: 
// Module Name: SBox_lookup_table
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


module SBox_lookup_table(data_in, enable, data_out);

    input [7:0] data_in;
    input enable;
    output reg [7:0] data_out;

    always @(enable) begin
        case(data_in)
            8'b00000000: data_out <= 8'h63;
            8'b00000001: data_out <= 8'h7c;
            8'b00000010: data_out <= 8'h77;
            8'b00000011: data_out <= 8'h7b;
            8'b00000100: data_out <= 8'hf2;
            8'b00000101: data_out <= 8'h6b;
            8'b00000110: data_out <= 8'h6f;
            8'b00000111: data_out <= 8'hc5;
            8'b00001000: data_out <= 8'h30;
            8'b00001001: data_out <= 8'h01;
            8'b00001010: data_out <= 8'h67;
            8'b00001011: data_out <= 8'h2b;
            8'b00001100: data_out <= 8'hfe;
            8'b00001101: data_out <= 8'hd7;
            8'b00001110: data_out <= 8'hab;
            8'b00001111: data_out <= 8'h76;
            8'b00010000: data_out <= 8'hca;
            8'b00010001: data_out <= 8'h82;
            8'b00010010: data_out <= 8'hc9;
            8'b00010011: data_out <= 8'h7d;
            8'b00010100: data_out <= 8'hfa;
            8'b00010101: data_out <= 8'h59;
            8'b00010110: data_out <= 8'h47;
            8'b00010111: data_out <= 8'hf0;
            8'b00011000: data_out <= 8'had;
            8'b00011001: data_out <= 8'hd4;
            8'b00011010: data_out <= 8'ha2;
            8'b00011011: data_out <= 8'haf;
            8'b00011100: data_out <= 8'h9c;
            8'b00011101: data_out <= 8'ha4;
            8'b00011110: data_out <= 8'h72;
            8'b00011111: data_out <= 8'hc0;
            8'b00100000: data_out <= 8'hb7;
            8'b00100001: data_out <= 8'hfd;
            8'b00100010: data_out <= 8'h93;
            8'b00100011: data_out <= 8'h26;
            8'b00100100: data_out <= 8'h36;
            8'b00100101: data_out <= 8'h3f;
            8'b00100110: data_out <= 8'hf7;
            8'b00100111: data_out <= 8'hcc;
            8'b00101000: data_out <= 8'h34;
            8'b00101001: data_out <= 8'ha5;
            8'b00101010: data_out <= 8'he5;
            8'b00101011: data_out <= 8'hf1;
            8'b00101100: data_out <= 8'h71;
            8'b00101101: data_out <= 8'hd8;
            8'b00101110: data_out <= 8'h31;
            8'b00101111: data_out <= 8'h15;
            8'b00110000: data_out <= 8'h04;
            8'b00110001: data_out <= 8'hc7;
            8'b00110010: data_out <= 8'h23;
            8'b00110011: data_out <= 8'hc3;
            8'b00110100: data_out <= 8'h18;
            8'b00110101: data_out <= 8'h96;
            8'b00110110: data_out <= 8'h05;
            8'b00110111: data_out <= 8'h9a;
            8'b00111000: data_out <= 8'h07;
            8'b00111001: data_out <= 8'h12;
            8'b00111010: data_out <= 8'h80;
            8'b00111011: data_out <= 8'he2;
            8'b00111100: data_out <= 8'heb;
            8'b00111101: data_out <= 8'h27;
            8'b00111110: data_out <= 8'hb2;
            8'b00111111: data_out <= 8'h75;
            8'b01000000: data_out <= 8'h09;
            8'b01000001: data_out <= 8'h83;
            8'b01000010: data_out <= 8'h2c;
            8'b01000011: data_out <= 8'h1a;
            8'b01000100: data_out <= 8'h1b;
            8'b01000101: data_out <= 8'h6e;
            8'b01000110: data_out <= 8'h5a;
            8'b01000111: data_out <= 8'ha0;
            8'b01001000: data_out <= 8'h52;
            8'b01001001: data_out <= 8'h3b;
            8'b01001010: data_out <= 8'hd6;
            8'b01001011: data_out <= 8'hb3;
            8'b01001100: data_out <= 8'h29;
            8'b01001101: data_out <= 8'he3;
            8'b01001110: data_out <= 8'h2f;
            8'b01001111: data_out <= 8'h84;
            8'b01010000: data_out <= 8'h53;
            8'b01010001: data_out <= 8'hd1;
            8'b01010010: data_out <= 8'h00;
            8'b01010011: data_out <= 8'hed;
            8'b01010100: data_out <= 8'h20;
            8'b01010101: data_out <= 8'hfc;
            8'b01010110: data_out <= 8'hb1;
            8'b01010111: data_out <= 8'h5b;
            8'b01011000: data_out <= 8'h6a;
            8'b01011001: data_out <= 8'hcb;
            8'b01011010: data_out <= 8'hbe;
            8'b01011011: data_out <= 8'h39;
            8'b01011100: data_out <= 8'h4a;
            8'b01011101: data_out <= 8'h4c;
            8'b01011110: data_out <= 8'h58;
            8'b01011111: data_out <= 8'hcf;
            8'b01100000: data_out <= 8'hd0;
            8'b01100001: data_out <= 8'hef;
            8'b01100010: data_out <= 8'haa;
            8'b01100011: data_out <= 8'hfb;
            8'b01100100: data_out <= 8'h43;
            8'b01100101: data_out <= 8'h4d;
            8'b01100110: data_out <= 8'h33;
            8'b01100111: data_out <= 8'h85;
            8'b01101000: data_out <= 8'h45;
            8'b01101001: data_out <= 8'hf9;
            8'b01101010: data_out <= 8'h02;
            8'b01101011: data_out <= 8'h7f;
            8'b01101100: data_out <= 8'h50;
            8'b01101101: data_out <= 8'h3c;
            8'b01101110: data_out <= 8'h9f;
            8'b01101111: data_out <= 8'ha8;
            8'b01110000: data_out <= 8'h51;
            8'b01110001: data_out <= 8'ha3;
            8'b01110010: data_out <= 8'h40;
            8'b01110011: data_out <= 8'h8f;
            8'b01110100: data_out <= 8'h92;
            8'b01110101: data_out <= 8'h9d;
            8'b01110110: data_out <= 8'h38;
            8'b01110111: data_out <= 8'hf5;
            8'b01111000: data_out <= 8'hbc;
            8'b01111001: data_out <= 8'hb6;
            8'b01111010: data_out <= 8'hda;
            8'b01111011: data_out <= 8'h21;
            8'b01111100: data_out <= 8'h10;
            8'b01111101: data_out <= 8'hff;
            8'b01111110: data_out <= 8'hf3;
            8'b01111111: data_out <= 8'hd2;
            8'b10000000: data_out <= 8'hcd;
            8'b10000001: data_out <= 8'h0c;
            8'b10000010: data_out <= 8'h13;
            8'b10000011: data_out <= 8'hec;
            8'b10000100: data_out <= 8'h5f;
            8'b10000101: data_out <= 8'h97;
            8'b10000110: data_out <= 8'h44;
            8'b10000111: data_out <= 8'h17;
            8'b10001000: data_out <= 8'hc4;
            8'b10001001: data_out <= 8'ha7;
            8'b10001010: data_out <= 8'h7e;
            8'b10001011: data_out <= 8'h3d;
            8'b10001100: data_out <= 8'h64;
            8'b10001101: data_out <= 8'h5d;
            8'b10001110: data_out <= 8'h19;
            8'b10001111: data_out <= 8'h73;
            8'b10010000: data_out <= 8'h60;
            8'b10010001: data_out <= 8'h81;
            8'b10010010: data_out <= 8'h4f;
            8'b10010011: data_out <= 8'hdc;
            8'b10010100: data_out <= 8'h22;
            8'b10010101: data_out <= 8'h2a;
            8'b10010110: data_out <= 8'h90;
            8'b10010111: data_out <= 8'h88;
            8'b10011000: data_out <= 8'h46;
            8'b10011001: data_out <= 8'hee;
            8'b10011010: data_out <= 8'hb8;
            8'b10011011: data_out <= 8'h14;
            8'b10011100: data_out <= 8'hde;
            8'b10011101: data_out <= 8'h5e;
            8'b10011110: data_out <= 8'h0b;
            8'b10011111: data_out <= 8'hdb;
            8'b10100000: data_out <= 8'he0;
            8'b10100001: data_out <= 8'h32;
            8'b10100010: data_out <= 8'h3a;
            8'b10100011: data_out <= 8'h0a;
            8'b10100100: data_out <= 8'h49;
            8'b10100101: data_out <= 8'h06;
            8'b10100110: data_out <= 8'h24;
            8'b10100111: data_out <= 8'h5c;
            8'b10101000: data_out <= 8'hc2;
            8'b10101001: data_out <= 8'hd3;
            8'b10101010: data_out <= 8'hac;
            8'b10101011: data_out <= 8'h62;
            8'b10101100: data_out <= 8'h91;
            8'b10101101: data_out <= 8'h95;
            8'b10101110: data_out <= 8'he4;
            8'b10101111: data_out <= 8'h79;
            8'b10110000: data_out <= 8'he7;
            8'b10110001: data_out <= 8'hc8;
            8'b10110010: data_out <= 8'h37;
            8'b10110011: data_out <= 8'h6d;
            8'b10110100: data_out <= 8'h8d;
            8'b10110101: data_out <= 8'hd5;
            8'b10110110: data_out <= 8'h4e;
            8'b10110111: data_out <= 8'ha9;
            8'b10111000: data_out <= 8'h6c;
            8'b10111001: data_out <= 8'h56;
            8'b10111010: data_out <= 8'hf4;
            8'b10111011: data_out <= 8'hea;
            8'b10111100: data_out <= 8'h65;
            8'b10111101: data_out <= 8'h7a;
            8'b10111110: data_out <= 8'hae;
            8'b10111111: data_out <= 8'h08;
            8'b11000000: data_out <= 8'hba;
            8'b11000001: data_out <= 8'h78;
            8'b11000010: data_out <= 8'h25;
            8'b11000011: data_out <= 8'h2e;
            8'b11000100: data_out <= 8'h1c;
            8'b11000101: data_out <= 8'ha6;
            8'b11000110: data_out <= 8'hb4;
            8'b11000111: data_out <= 8'hc6;
            8'b11001000: data_out <= 8'he8;
            8'b11001001: data_out <= 8'hdd;
            8'b11001010: data_out <= 8'h74;
            8'b11001011: data_out <= 8'h1f;
            8'b11001100: data_out <= 8'h4b;
            8'b11001101: data_out <= 8'hbd;
            8'b11001110: data_out <= 8'h8b;
            8'b11001111: data_out <= 8'h8a;
            8'b11010000: data_out <= 8'h70;
            8'b11010001: data_out <= 8'h3e;
            8'b11010010: data_out <= 8'hb5;
            8'b11010011: data_out <= 8'h66;
            8'b11010100: data_out <= 8'h48;
            8'b11010101: data_out <= 8'h03;
            8'b11010110: data_out <= 8'hf6;
            8'b11010111: data_out <= 8'h0e;
            8'b11011000: data_out <= 8'h61;
            8'b11011001: data_out <= 8'h35;
            8'b11011010: data_out <= 8'h57;
            8'b11011011: data_out <= 8'hb9;
            8'b11011100: data_out <= 8'h86;
            8'b11011101: data_out <= 8'hc1;
            8'b11011110: data_out <= 8'h1d;
            8'b11011111: data_out <= 8'h9e;
            8'b11100000: data_out <= 8'he1;
            8'b11100001: data_out <= 8'hf8;
            8'b11100010: data_out <= 8'h98;
            8'b11100011: data_out <= 8'h11;
            8'b11100100: data_out <= 8'h69;
            8'b11100101: data_out <= 8'hd9;
            8'b11100110: data_out <= 8'h8e;
            8'b11100111: data_out <= 8'h94;
            8'b11101000: data_out <= 8'h9b;
            8'b11101001: data_out <= 8'h1e;
            8'b11101010: data_out <= 8'h87;
            8'b11101011: data_out <= 8'he9;
            8'b11101100: data_out <= 8'hce;
            8'b11101101: data_out <= 8'h55;
            8'b11101110: data_out <= 8'h28;
            8'b11101111: data_out <= 8'hdf;
            8'b11110000: data_out <= 8'h8c;
            8'b11110001: data_out <= 8'ha1;
            8'b11110010: data_out <= 8'h89;
            8'b11110011: data_out <= 8'h0d;
            8'b11110100: data_out <= 8'hbf;
            8'b11110101: data_out <= 8'he6;
            8'b11110110: data_out <= 8'h42;
            8'b11110111: data_out <= 8'h68;
            8'b11111000: data_out <= 8'h41;
            8'b11111001: data_out <= 8'h99;
            8'b11111010: data_out <= 8'h2d;
            8'b11111011: data_out <= 8'h0f;
            8'b11111100: data_out <= 8'hb0;
            8'b11111101: data_out <= 8'h54;
            8'b11111110: data_out <= 8'hbb;
            8'b11111111: data_out <= 8'h16;
            
            default: data_out <= 0;
        endcase
    end 
endmodule