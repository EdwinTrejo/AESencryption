#ifndef FILE_H
#define FILE_H

uint32_t SubWord(uint32_t word);
uint8_t getSBoxValue(uint8_t number);
uint32_t RotWord(uint32_t word);
void BreakWordDown(uint8_t* ret_word, uint32_t word);
uint32_t* KeyExpansion(uint8_t key[16]);
void addKey(uint8_t* state, uint8_t* key);
uint8_t* PackKey(uint32_t key_part1, uint32_t key_part2, uint32_t key_part3, uint32_t key_part4);
void ShiftRows(uint8_t* state);
void SubBytes(uint8_t* state);
void MixColumns(uint8_t* state);
uint8_t TimesThree(uint8_t num);
uint8_t TimesTwo(uint8_t num);

#endif