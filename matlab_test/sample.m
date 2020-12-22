%% INIT
clc; clear;

% tested:   TimesTwo, TimesThree, getSBoxValue, SubBytes, RotWord,
% MixColumns, ShiftRows, addKey, SubWord
% untested: KeyExpansion, AESEncryption
% might not be able to be used: BreakWordDown, PackKey (not needed)
%% times two test
% 63 is hex for 99 in dec
% 63 timestwo should be 198 or c6
num = uint8(0x63);
num = TimesTwo(num)
% 2E is hex for 46 in dec
% 2E timestwo should be 92 or 5c
num = uint8(0x2E);
num = TimesTwo(num)

%% times three test
% 6E is hex for 110 in dec
% 6E timestwo should be 178 or b2
num = uint8(0x6E);
num = TimesThree(num)
% 53 is hex for 83 in dec
% 53 timestwo should be 245 or f5
num = uint8(0x53);
num = TimesThree(num)

%% get sbox test
% 00 should be 63 on subbyte subs
% 99 in decimal
% 40 is 09 or 9
num  = uint8(0x10);
num = getSBoxValue(num)

%% SubBytes test
% hex       00102030 40506070 8090a0b0 c0d0e0f0
% shoud be  63cab704 0953d051 cd60e0e7 bacad0e7 after
% 99 202 183 4 9 83 208
num2 = uint8([0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0]);
num2 = SubBytes(num2);

%% RotWord test
%       // 4  3  2  1
%       // 3c 4f cf 09
%       // cf 4f 3c 09
num2 = uint32(0x3c4fcf09);
num2 = RotWord(num2);

%% MixColumns test
%   0x63 53 e0 8c 09 60 e1 04 cd 70 b7 51 ba ca d0 e7
%   0x5f 72 64 15 57 f5 bc 92 f7 be 3b 29 1d b9 f9 1a
num2 = uint8([0x63 0x53 0xe0 0x8c 0x09 0x60 0xe1 0x04 0xcd 0x70 0xb7 0x51 0xba 0xca 0xd0 0xe7]);
num2 = MixColumns(num2);

%% ShiftRows test
%   0x63 ca b7 04 09 53 d0 51 cd 60 e0 e7 ba 70 e1 8c
%   0x63 53 e0 8c 09 60 e1 04 cd 70 b7 51 ba ca d0 e7
num2 = uint8([0x63 0xca 0xb7 0x04 0x09 0x53 0xd0 0x51 0xcd 0x60 0xe0 0xe7 0xba 0x70 0xe1 0x8c]);
num2 = ShiftRows(num2);
% dec2hex(num2)

%% addKey test
% hex key   00102030 40506070 8090a0b0 c0d0e0f0
% hex state 00112233 44556677 8899aabb ccddeeff
% hex out 00010203 04050607 08090a0b 0c0d0e0f
num2 = uint8([0x00 0x11 0x22 0x33 0x44 0x55 0x66 0x77 0x88 0x99 0xaa 0xbb 0xcc 0xdd 0xee 0xff]);
num2key = uint8([0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0]);
num2 = addKey(num2, num2key);

%% SubWord test
% input     00 10 20 30
% output    63 CA B7 04
num2 = uint32(0x00102030);
num2 = SubWord(num2);

%% KeyExpansion test
num2 = uint8([0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0])
num2 = KeyExpansion(num2)
