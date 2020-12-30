// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\test3\RunEnc.v
// Created: 2020-12-26 12:49:28
// 
// Generated by MATLAB 9.9 and HDL Coder 3.17
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: RunEnc
// Source Path: test3/RunEnc
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module RunEnc
          (word,
           ret_word);


  input   [31:0] word;  // uint32
  output  [31:0] ret_word;  // uint32


  reg [31:0] ret_word_2;  // uint32
  reg [31:0] ret_word1;  // uint32
  reg [7:0] words [0:3];  // uint32 [4]
  reg [31:0] temp;  // ufix32
  reg [31:0] w;  // uint32
  reg [31:0] temp_0;  // ufix32
  reg [31:0] temp_1;  // ufix32
  reg [31:0] w_0;  // uint32
  reg [31:0] temp_2;  // ufix32
  reg [31:0] temp_3;  // ufix32
  reg [31:0] w_1;  // uint32
  reg [31:0] temp_4;  // ufix32
  reg [31:0] temp_5;  // ufix32
  reg [31:0] temp_6;  // ufix32
  reg [31:0] temp_7;  // ufix32
  reg [31:0] temp_8;  // ufix32
  reg [31:0] c;  // ufix32
  reg [31:0] c_0;  // ufix32
  reg [31:0] c_1;  // ufix32
  reg [31:0] c_2;  // ufix32
  reg [31:0] c_3;  // ufix32
  reg [31:0] c_4;  // ufix32
  reg [31:0] c_5;  // ufix32
  reg [31:0] c_6;  // ufix32
  reg [31:0] c_7;  // ufix32
  reg [31:0] c_8;  // ufix32
  reg [31:0] ret_word_0;  // uint32
  reg [31:0] ret_word_1;  // uint32
  reg signed [31:0] cast;  // int32
  reg signed [31:0] cast_0;  // int32
  reg signed [31:0] cast_1;  // int32
  reg signed [31:0] cast_2;  // int32
  reg [31:0] add_temp;  // uint32
  reg [31:0] t_0;  // uint32
  reg [31:0] t_1;  // uint32
  reg signed [31:0] t_2;  // int32
  reg [31:0] t_3;  // uint32
  reg signed [31:0] t_4;  // int32
  reg signed [31:0] t_5;  // int32
  reg [31:0] t_6;  // uint32
  reg [31:0] t_7;  // uint32


  always @(word) begin
    //rotate word for KeyExpansion
    //B1 -> B4
    //B2 -> B1
    //B3 -> B2
    //B4 -> B3
    //       // 4  3  2  1
    //       // 3c 4f cf 09
    //       // cf 4f 3c 09
    temp = word & 32'd4278190080;
    c = temp >> 8'd24;
    cast = c;
    words[3] = cast[7:0];
    temp_0 = word & 32'd16711680;
    c_0 = temp_0 <<< 8'd8;
    w = c_0;
    temp_1 = w;
    c_1 = temp_1 >> 8'd24;
    cast_0 = c_1;
    words[2] = cast_0[7:0];
    t_1 = word & 32'd65280;
    t_2 = t_1;
    temp_2 = t_2;
    c_2 = temp_2 <<< 8'd16;
    w_0 = c_2;
    temp_3 = w_0;
    c_3 = temp_3 >> 8'd24;
    cast_1 = c_3;
    words[1] = cast_1[7:0];
    t_3 = word & 32'd255;
    t_4 = t_3;
    temp_4 = t_4;
    c_4 = temp_4 <<< 8'd24;
    w_1 = c_4;
    temp_5 = w_1;
    c_5 = temp_5 >> 8'd24;
    cast_2 = c_5;
    words[0] = cast_2[7:0];
    temp_6 = {24'b0, words[2]};
    c_6 = temp_6 <<< 8'd8;
    ret_word1 = c_6;
    t_7 = {24'b0, words[1]};
    add_temp = ret_word1 + t_7;
    t_5 = add_temp;
    temp_7 = t_5;
    c_7 = temp_7 <<< 8'd8;
    ret_word_0 = c_7;
    t_6 = {24'b0, words[0]};
    temp_8 = ret_word_0 + t_6;
    c_8 = temp_8 <<< 8'd8;
    ret_word_1 = c_8;
    t_0 = {24'b0, words[3]};
    ret_word_2 = ret_word_1 + t_0;
  end



  assign ret_word = ret_word_2;

endmodule  // RunEnc

