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

  reg   [7:0] key1;  // uint8
  reg   [7:0] key2;  // uint8
  reg   [7:0] key3;  // uint8
  reg   [7:0] key4;  // uint8
  reg   [7:0] key5;  // uint8
  reg   [7:0] key6;  // uint8
  reg   [7:0] key7;  // uint8
  reg   [7:0] key8;  // uint8
  reg   [7:0] key9;  // uint8
  reg   [7:0] key10;  // uint8
  reg   [7:0] key11;  // uint8
  reg   [7:0] key12;  // uint8
  reg   [7:0] key13;  // uint8
  reg   [7:0] key14;  // uint8
  reg   [7:0] key15;  // uint8
  reg   [7:0] key16;  // uint8
  wire  [31:0] w1;  // uint32
  wire  [31:0] w2;  // uint32
  wire  [31:0] w3;  // uint32
  wire  [31:0] w4;  // uint32
  wire  [31:0] w5;  // uint32
  wire  [31:0] w6;  // uint32
  wire  [31:0] w7;  // uint32
  wire  [31:0] w8;  // uint32
  wire  [31:0] w9;  // uint32
  wire  [31:0] w10;  // uint32
  wire  [31:0] w11;  // uint32
  wire  [31:0] w12;  // uint32
  wire  [31:0] w13;  // uint32
  wire  [31:0] w14;  // uint32
  wire  [31:0] w15;  // uint32
  wire  [31:0] w16;  // uint32
  wire  [31:0] w17;  // uint32
  wire  [31:0] w18;  // uint32
  wire  [31:0] w19;  // uint32
  wire  [31:0] w20;  // uint32
  wire  [31:0] w21;  // uint32
  wire  [31:0] w22;  // uint32
  wire  [31:0] w23;  // uint32
  wire  [31:0] w24;  // uint32
  wire  [31:0] w25;  // uint32
  wire  [31:0] w26;  // uint32
  wire  [31:0] w27;  // uint32
  wire  [31:0] w28;  // uint32
  wire  [31:0] w29;  // uint32
  wire  [31:0] w30;  // uint32
  wire  [31:0] w31;  // uint32
  wire  [31:0] w32;  // uint32
  wire  [31:0] w33;  // uint32
  wire  [31:0] w34;  // uint32
  wire  [31:0] w35;  // uint32
  wire  [31:0] w36;  // uint32
  wire  [31:0] w37;  // uint32
  wire  [31:0] w38;  // uint32
  wire  [31:0] w39;  // uint32
  wire  [31:0] w40;  // uint32
  wire  [31:0] w41;  // uint32
  wire  [31:0] w42;  // uint32
  wire  [31:0] w43;  // uint32
  wire  [31:0] w44;  // uint32
     
     
    KeyExpansion KeyExpansion_uut(
        key1,
        key2,
        key3,
        key4,
        key5,
        key6,
        key7,
        key8,
        key9,
        key10,
        key11,
        key12,
        key13,
        key14,
        key15,
        key16,
        w1,
        w2,
        w3,
        w4,
        w5,
        w6,
        w7,
        w8,
        w9,
        w10,
        w11,
        w12,
        w13,
        w14,
        w15,
        w16,
        w17,
        w18,
        w19,
        w20,
        w21,
        w22,
        w23,
        w24,
        w25,
        w26,
        w27,
        w28,
        w29,
        w30,
        w31,
        w32,
        w33,
        w34,
        w35,
        w36,
        w37,
        w38,
        w39,
        w40,
        w41,
        w42,
        w43,
        w44);
    


initial begin
    key1 = 0'h2B;
    key2 = 0'h7E;
    key3 = 0'h15;
    key4 = 0'h16;
    key5 = 0'h28;
    key6 = 0'hAE;
    key7 = 0'hD2;
    key8 = 0'hA6;
    key9 = 0'hAB;
    key10 = 0'hF7;
    key11 = 0'h15;
    key12 = 0'h88;
    key13 = 0'h09;
    key14 = 0'hCF;
    key15 = 0'h4F;
    key16 = 0'h3C;
end

always @(*) begin
    #10;
end

endmodule
