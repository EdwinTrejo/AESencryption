// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\test3\SubWord.v
// Created: 2020-12-26 12:54:20
// 
// Generated by MATLAB 9.9 and HDL Coder 3.17
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SubWord
// Source Path: test3/SubWord
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SubWord(word, ret_word);
  input   [31:0] word;  // uint32
  output  [31:0] ret_word;  // uint32

  reg [31:0] ret_word_2;  // uint32
  reg [31:0] ret_word1;  // uint32
  reg [7:0] words [0:3];  // uint32 [4]
  reg [31:0] temp;  // ufix32
  reg [7:0] low_sel;  // uint8
  reg [7:0] high_sel;  // uint8
  reg [31:0] w;  // uint32
  reg [31:0] temp_0;  // ufix32
  reg [31:0] temp_1;  // ufix32
  reg [7:0] low_sel_0;  // uint8
  reg [7:0] high_sel_0;  // uint8
  reg [31:0] w_0;  // uint32
  reg [31:0] temp_2;  // ufix32
  reg [31:0] temp_3;  // ufix32
  reg [7:0] low_sel_1;  // uint8
  reg [7:0] high_sel_1;  // uint8
  reg [31:0] w_1;  // uint32
  reg [31:0] temp_4;  // ufix32
  reg [31:0] temp_5;  // ufix32
  reg [7:0] low_sel_2;  // uint8
  reg [7:0] high_sel_2;  // uint8
  reg [31:0] temp_6;  // ufix32
  reg [31:0] temp_7;  // ufix32
  reg [31:0] temp_8;  // ufix32
  reg [7:0] temp_9;  // ufix8
  reg [7:0] temp_10;  // ufix8
  reg [7:0] temp_11;  // ufix8
  reg [7:0] temp_12;  // ufix8
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
  reg [7:0] c_9;  // ufix8
  reg [7:0] c_10;  // ufix8
  reg [7:0] c_11;  // ufix8
  reg [7:0] c_12;  // ufix8
  reg [31:0] ret_word_0;  // uint32
  reg [31:0] ret_word_1;  // uint32
  reg [7:0] sbox [0:15] [0:15];  // uint8 [16x16]
  reg [7:0] cast;  // uint8
  reg [7:0] add_cast;  // uint8
  reg [7:0] cast_0;  // uint8
  reg signed [31:0] cast_1;  // int32
  reg [7:0] cast_2;  // uint8
  reg [7:0] add_cast_0;  // uint8
  reg [7:0] cast_3;  // uint8
  reg signed [31:0] cast_4;  // int32
  reg [7:0] cast_5;  // uint8
  reg [7:0] add_cast_1;  // uint8
  reg [7:0] cast_6;  // uint8
  reg signed [31:0] cast_7;  // int32
  reg [7:0] cast_8;  // uint8
  reg [7:0] add_cast_2;  // uint8
  reg [7:0] cast_9;  // uint8
  reg signed [31:0] cast_10;  // int32
  reg [31:0] add_temp;  // uint32
  reg [31:0] t_0;  // uint32
  reg [31:0] t_1;  // uint32
  reg signed [31:0] t_2;  // int32
  reg [31:0] t_3;  // uint32
  reg signed [31:0] t_4;  // int32
  reg signed [31:0] t_5;  // int32
  reg [31:0] t_6;  // uint32
  reg signed [31:0] t_7;  // int32
  reg signed [31:0] t_8;  // int32
  reg signed [31:0] t_9;  // int32
  reg signed [31:0] t_10;  // int32
  reg signed [31:0] t_11;  // int32
  reg signed [31:0] t_12;  // int32
  reg signed [31:0] t_13;  // int32
  reg signed [31:0] t_14;  // int32
  reg signed [31:0] t_15;  // int32
  reg signed [31:0] t_16;  // int32
  reg signed [31:0] t_17;  // int32
  reg signed [31:0] t_18;  // int32
  reg signed [31:0] t_19;  // int32
  reg signed [31:0] t_20;  // int32
  reg signed [31:0] t_21;  // int32
  reg signed [31:0] t_22;  // int32
  reg signed [31:0] t_23;  // int32
  reg signed [31:0] t_24;  // int32
  reg signed [31:0] t_25;  // int32
  reg signed [31:0] t_26;  // int32
  reg [31:0] t_27;  // uint32


  always @(word) begin
    sbox[0][32'sd0] = 8'd99;
    sbox[1][32'sd0] = 8'd202;
    sbox[2][32'sd0] = 8'd183;
    sbox[3][32'sd0] = 8'd4;
    sbox[4][32'sd0] = 8'd9;
    sbox[5][32'sd0] = 8'd83;
    sbox[6][32'sd0] = 8'd208;
    sbox[7][32'sd0] = 8'd81;
    sbox[8][32'sd0] = 8'd205;
    sbox[9][32'sd0] = 8'd96;
    sbox[10][32'sd0] = 8'd224;
    sbox[11][32'sd0] = 8'd231;
    sbox[12][32'sd0] = 8'd186;
    sbox[13][32'sd0] = 8'd112;
    sbox[14][32'sd0] = 8'd225;
    sbox[15][32'sd0] = 8'd140;
    sbox[0][32'sd1] = 8'd124;
    sbox[1][32'sd1] = 8'd130;
    sbox[2][32'sd1] = 8'd253;
    sbox[3][32'sd1] = 8'd199;
    sbox[4][32'sd1] = 8'd131;
    sbox[5][32'sd1] = 8'd209;
    sbox[6][32'sd1] = 8'd239;
    sbox[7][32'sd1] = 8'd163;
    sbox[8][32'sd1] = 8'd12;
    sbox[9][32'sd1] = 8'd129;
    sbox[10][32'sd1] = 8'd50;
    sbox[11][32'sd1] = 8'd200;
    sbox[12][32'sd1] = 8'd120;
    sbox[13][32'sd1] = 8'd62;
    sbox[14][32'sd1] = 8'd248;
    sbox[15][32'sd1] = 8'd161;
    sbox[0][32'sd2] = 8'd119;
    sbox[1][32'sd2] = 8'd201;
    sbox[2][32'sd2] = 8'd147;
    sbox[3][32'sd2] = 8'd35;
    sbox[4][32'sd2] = 8'd44;
    sbox[5][32'sd2] = 8'd0;
    sbox[6][32'sd2] = 8'd170;
    sbox[7][32'sd2] = 8'd64;
    sbox[8][32'sd2] = 8'd19;
    sbox[9][32'sd2] = 8'd79;
    sbox[10][32'sd2] = 8'd58;
    sbox[11][32'sd2] = 8'd55;
    sbox[12][32'sd2] = 8'd37;
    sbox[13][32'sd2] = 8'd181;
    sbox[14][32'sd2] = 8'd152;
    sbox[15][32'sd2] = 8'd137;
    sbox[0][32'sd3] = 8'd123;
    sbox[1][32'sd3] = 8'd125;
    sbox[2][32'sd3] = 8'd38;
    sbox[3][32'sd3] = 8'd195;
    sbox[4][32'sd3] = 8'd26;
    sbox[5][32'sd3] = 8'd237;
    sbox[6][32'sd3] = 8'd251;
    sbox[7][32'sd3] = 8'd143;
    sbox[8][32'sd3] = 8'd236;
    sbox[9][32'sd3] = 8'd220;
    sbox[10][32'sd3] = 8'd10;
    sbox[11][32'sd3] = 8'd109;
    sbox[12][32'sd3] = 8'd46;
    sbox[13][32'sd3] = 8'd102;
    sbox[14][32'sd3] = 8'd17;
    sbox[15][32'sd3] = 8'd13;
    sbox[0][32'sd4] = 8'd242;
    sbox[1][32'sd4] = 8'd250;
    sbox[2][32'sd4] = 8'd54;
    sbox[3][32'sd4] = 8'd24;
    sbox[4][32'sd4] = 8'd27;
    sbox[5][32'sd4] = 8'd32;
    sbox[6][32'sd4] = 8'd67;
    sbox[7][32'sd4] = 8'd146;
    sbox[8][32'sd4] = 8'd95;
    sbox[9][32'sd4] = 8'd34;
    sbox[10][32'sd4] = 8'd73;
    sbox[11][32'sd4] = 8'd141;
    sbox[12][32'sd4] = 8'd28;
    sbox[13][32'sd4] = 8'd72;
    sbox[14][32'sd4] = 8'd105;
    sbox[15][32'sd4] = 8'd191;
    sbox[0][32'sd5] = 8'd107;
    sbox[1][32'sd5] = 8'd89;
    sbox[2][32'sd5] = 8'd63;
    sbox[3][32'sd5] = 8'd150;
    sbox[4][32'sd5] = 8'd110;
    sbox[5][32'sd5] = 8'd252;
    sbox[6][32'sd5] = 8'd77;
    sbox[7][32'sd5] = 8'd157;
    sbox[8][32'sd5] = 8'd151;
    sbox[9][32'sd5] = 8'd42;
    sbox[10][32'sd5] = 8'd6;
    sbox[11][32'sd5] = 8'd213;
    sbox[12][32'sd5] = 8'd166;
    sbox[13][32'sd5] = 8'd3;
    sbox[14][32'sd5] = 8'd217;
    sbox[15][32'sd5] = 8'd230;
    sbox[0][32'sd6] = 8'd111;
    sbox[1][32'sd6] = 8'd71;
    sbox[2][32'sd6] = 8'd247;
    sbox[3][32'sd6] = 8'd5;
    sbox[4][32'sd6] = 8'd90;
    sbox[5][32'sd6] = 8'd177;
    sbox[6][32'sd6] = 8'd51;
    sbox[7][32'sd6] = 8'd56;
    sbox[8][32'sd6] = 8'd68;
    sbox[9][32'sd6] = 8'd144;
    sbox[10][32'sd6] = 8'd36;
    sbox[11][32'sd6] = 8'd78;
    sbox[12][32'sd6] = 8'd180;
    sbox[13][32'sd6] = 8'd246;
    sbox[14][32'sd6] = 8'd142;
    sbox[15][32'sd6] = 8'd66;
    sbox[0][32'sd7] = 8'd197;
    sbox[1][32'sd7] = 8'd240;
    sbox[2][32'sd7] = 8'd204;
    sbox[3][32'sd7] = 8'd154;
    sbox[4][32'sd7] = 8'd160;
    sbox[5][32'sd7] = 8'd91;
    sbox[6][32'sd7] = 8'd133;
    sbox[7][32'sd7] = 8'd245;
    sbox[8][32'sd7] = 8'd23;
    sbox[9][32'sd7] = 8'd136;
    sbox[10][32'sd7] = 8'd92;
    sbox[11][32'sd7] = 8'd169;
    sbox[12][32'sd7] = 8'd198;
    sbox[13][32'sd7] = 8'd14;
    sbox[14][32'sd7] = 8'd148;
    sbox[15][32'sd7] = 8'd104;
    sbox[0][32'sd8] = 8'd48;
    sbox[1][32'sd8] = 8'd173;
    sbox[2][32'sd8] = 8'd52;
    sbox[3][32'sd8] = 8'd7;
    sbox[4][32'sd8] = 8'd82;
    sbox[5][32'sd8] = 8'd106;
    sbox[6][32'sd8] = 8'd69;
    sbox[7][32'sd8] = 8'd188;
    sbox[8][32'sd8] = 8'd196;
    sbox[9][32'sd8] = 8'd70;
    sbox[10][32'sd8] = 8'd194;
    sbox[11][32'sd8] = 8'd108;
    sbox[12][32'sd8] = 8'd232;
    sbox[13][32'sd8] = 8'd97;
    sbox[14][32'sd8] = 8'd155;
    sbox[15][32'sd8] = 8'd65;
    sbox[0][32'sd9] = 8'd1;
    sbox[1][32'sd9] = 8'd212;
    sbox[2][32'sd9] = 8'd165;
    sbox[3][32'sd9] = 8'd18;
    sbox[4][32'sd9] = 8'd59;
    sbox[5][32'sd9] = 8'd203;
    sbox[6][32'sd9] = 8'd249;
    sbox[7][32'sd9] = 8'd182;
    sbox[8][32'sd9] = 8'd167;
    sbox[9][32'sd9] = 8'd238;
    sbox[10][32'sd9] = 8'd211;
    sbox[11][32'sd9] = 8'd86;
    sbox[12][32'sd9] = 8'd221;
    sbox[13][32'sd9] = 8'd53;
    sbox[14][32'sd9] = 8'd30;
    sbox[15][32'sd9] = 8'd153;
    sbox[0][32'sd10] = 8'd103;
    sbox[1][32'sd10] = 8'd162;
    sbox[2][32'sd10] = 8'd229;
    sbox[3][32'sd10] = 8'd128;
    sbox[4][32'sd10] = 8'd214;
    sbox[5][32'sd10] = 8'd190;
    sbox[6][32'sd10] = 8'd2;
    sbox[7][32'sd10] = 8'd218;
    sbox[8][32'sd10] = 8'd126;
    sbox[9][32'sd10] = 8'd184;
    sbox[10][32'sd10] = 8'd172;
    sbox[11][32'sd10] = 8'd244;
    sbox[12][32'sd10] = 8'd116;
    sbox[13][32'sd10] = 8'd87;
    sbox[14][32'sd10] = 8'd135;
    sbox[15][32'sd10] = 8'd45;
    sbox[0][32'sd11] = 8'd43;
    sbox[1][32'sd11] = 8'd175;
    sbox[2][32'sd11] = 8'd241;
    sbox[3][32'sd11] = 8'd226;
    sbox[4][32'sd11] = 8'd179;
    sbox[5][32'sd11] = 8'd57;
    sbox[6][32'sd11] = 8'd127;
    sbox[7][32'sd11] = 8'd33;
    sbox[8][32'sd11] = 8'd61;
    sbox[9][32'sd11] = 8'd20;
    sbox[10][32'sd11] = 8'd98;
    sbox[11][32'sd11] = 8'd234;
    sbox[12][32'sd11] = 8'd31;
    sbox[13][32'sd11] = 8'd185;
    sbox[14][32'sd11] = 8'd233;
    sbox[15][32'sd11] = 8'd15;
    sbox[0][32'sd12] = 8'd254;
    sbox[1][32'sd12] = 8'd156;
    sbox[2][32'sd12] = 8'd113;
    sbox[3][32'sd12] = 8'd235;
    sbox[4][32'sd12] = 8'd41;
    sbox[5][32'sd12] = 8'd74;
    sbox[6][32'sd12] = 8'd80;
    sbox[7][32'sd12] = 8'd16;
    sbox[8][32'sd12] = 8'd100;
    sbox[9][32'sd12] = 8'd222;
    sbox[10][32'sd12] = 8'd145;
    sbox[11][32'sd12] = 8'd101;
    sbox[12][32'sd12] = 8'd75;
    sbox[13][32'sd12] = 8'd134;
    sbox[14][32'sd12] = 8'd206;
    sbox[15][32'sd12] = 8'd176;
    sbox[0][32'sd13] = 8'd215;
    sbox[1][32'sd13] = 8'd164;
    sbox[2][32'sd13] = 8'd216;
    sbox[3][32'sd13] = 8'd39;
    sbox[4][32'sd13] = 8'd227;
    sbox[5][32'sd13] = 8'd76;
    sbox[6][32'sd13] = 8'd60;
    sbox[7][32'sd13] = 8'd255;
    sbox[8][32'sd13] = 8'd93;
    sbox[9][32'sd13] = 8'd94;
    sbox[10][32'sd13] = 8'd149;
    sbox[11][32'sd13] = 8'd122;
    sbox[12][32'sd13] = 8'd189;
    sbox[13][32'sd13] = 8'd193;
    sbox[14][32'sd13] = 8'd85;
    sbox[15][32'sd13] = 8'd84;
    sbox[0][32'sd14] = 8'd171;
    sbox[1][32'sd14] = 8'd114;
    sbox[2][32'sd14] = 8'd49;
    sbox[3][32'sd14] = 8'd178;
    sbox[4][32'sd14] = 8'd47;
    sbox[5][32'sd14] = 8'd88;
    sbox[6][32'sd14] = 8'd159;
    sbox[7][32'sd14] = 8'd243;
    sbox[8][32'sd14] = 8'd25;
    sbox[9][32'sd14] = 8'd11;
    sbox[10][32'sd14] = 8'd228;
    sbox[11][32'sd14] = 8'd174;
    sbox[12][32'sd14] = 8'd139;
    sbox[13][32'sd14] = 8'd29;
    sbox[14][32'sd14] = 8'd40;
    sbox[15][32'sd14] = 8'd187;
    sbox[0][32'sd15] = 8'd118;
    sbox[1][32'sd15] = 8'd192;
    sbox[2][32'sd15] = 8'd21;
    sbox[3][32'sd15] = 8'd117;
    sbox[4][32'sd15] = 8'd132;
    sbox[5][32'sd15] = 8'd207;
    sbox[6][32'sd15] = 8'd168;
    sbox[7][32'sd15] = 8'd210;
    sbox[8][32'sd15] = 8'd115;
    sbox[9][32'sd15] = 8'd219;
    sbox[10][32'sd15] = 8'd121;
    sbox[11][32'sd15] = 8'd8;
    sbox[12][32'sd15] = 8'd138;
    sbox[13][32'sd15] = 8'd158;
    sbox[14][32'sd15] = 8'd223;
    sbox[15][32'sd15] = 8'd22;
    // did not mess with indexing
    //sub byte
    //uint8_t words[4] = { 0 };
    //     words = uint8(zeros(1,4));
    // 	words = BreakWordDown(words, word);
    temp = word & 32'd4278190080;
    c = temp >> 8'd24;
    //ascii numbering
    t_7 = c;
    cast = t_7[7:0];
    t_8 = {24'b0, cast};
    t_9 = t_8 & 32'sd15;
    add_cast = t_9[7:0];
    low_sel = add_cast + 8'd1;
    t_10 = c;
    cast_0 = t_10[7:0];
    t_11 = {24'b0, cast_0};
    cast_1 = t_11 & 32'sd240;
    temp_9 = cast_1[7:0];
    c_9 = temp_9 >> 8'd4;
    high_sel = c_9 + 8'b00000001;
    words[3] = sbox[$signed({1'b0, high_sel}) - 32'sd1][$signed({1'b0, low_sel}) - 32'sd1];
    temp_0 = word & 32'd16711680;
    c_0 = temp_0 <<< 8'd8;
    w = c_0;
    temp_1 = w;
    c_1 = temp_1 >> 8'd24;
    //ascii numbering
    t_12 = c_1;
    cast_2 = t_12[7:0];
    t_13 = {24'b0, cast_2};
    t_14 = t_13 & 32'sd15;
    add_cast_0 = t_14[7:0];
    low_sel_0 = add_cast_0 + 8'd1;
    t_15 = c_1;
    cast_3 = t_15[7:0];
    t_16 = {24'b0, cast_3};
    cast_4 = t_16 & 32'sd240;
    temp_10 = cast_4[7:0];
    c_10 = temp_10 >> 8'd4;
    high_sel_0 = c_10 + 8'b00000001;
    words[2] = sbox[$signed({1'b0, high_sel_0}) - 32'sd1][$signed({1'b0, low_sel_0}) - 32'sd1];
    t_1 = word & 32'd65280;
    t_2 = t_1;
    temp_2 = t_2;
    c_2 = temp_2 <<< 8'd16;
    w_0 = c_2;
    temp_3 = w_0;
    c_3 = temp_3 >> 8'd24;
    //ascii numbering
    t_17 = c_3;
    cast_5 = t_17[7:0];
    t_18 = {24'b0, cast_5};
    t_19 = t_18 & 32'sd15;
    add_cast_1 = t_19[7:0];
    low_sel_1 = add_cast_1 + 8'd1;
    t_20 = c_3;
    cast_6 = t_20[7:0];
    t_21 = {24'b0, cast_6};
    cast_7 = t_21 & 32'sd240;
    temp_11 = cast_7[7:0];
    c_11 = temp_11 >> 8'd4;
    high_sel_1 = c_11 + 8'b00000001;
    words[1] = sbox[$signed({1'b0, high_sel_1}) - 32'sd1][$signed({1'b0, low_sel_1}) - 32'sd1];
    t_3 = word & 32'd255;
    t_4 = t_3;
    temp_4 = t_4;
    c_4 = temp_4 <<< 8'd24;
    w_1 = c_4;
    temp_5 = w_1;
    c_5 = temp_5 >> 8'd24;
    //ascii numbering
    t_22 = c_5;
    cast_8 = t_22[7:0];
    t_23 = {24'b0, cast_8};
    t_24 = t_23 & 32'sd15;
    add_cast_2 = t_24[7:0];
    low_sel_2 = add_cast_2 + 8'd1;
    t_25 = c_5;
    cast_9 = t_25[7:0];
    t_26 = {24'b0, cast_9};
    cast_10 = t_26 & 32'sd240;
    temp_12 = cast_10[7:0];
    c_12 = temp_12 >> 8'd4;
    high_sel_2 = c_12 + 8'b00000001;
    words[0] = sbox[$signed({1'b0, high_sel_2}) - 32'sd1][$signed({1'b0, low_sel_2}) - 32'sd1];
    temp_6 = {24'b0, words[3]};
    c_6 = temp_6 <<< 8'd8;
    ret_word1 = c_6;
    t_27 = {24'b0, words[2]};
    add_temp = ret_word1 + t_27;
    t_5 = add_temp;
    temp_7 = t_5;
    c_7 = temp_7 <<< 8'd8;
    ret_word_0 = c_7;
    t_6 = {24'b0, words[1]};
    temp_8 = ret_word_0 + t_6;
    c_8 = temp_8 <<< 8'd8;
    ret_word_1 = c_8;
    t_0 = {24'b0, words[0]};
    ret_word_2 = ret_word_1 + t_0;
  end



  assign ret_word = ret_word_2;

endmodule  // SubWord