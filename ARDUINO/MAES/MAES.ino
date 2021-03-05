#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <stdint.h>

#define string String
#define MSGSIZE 16
#define INSSIZE 32

static const byte sbox[256] = {
	//0     1    2      3     4    5     6     7      8    9     A      B    C     D     E     F
	0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
	0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
	0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
	0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
	0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
	0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
	0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
	0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
	0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
	0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
	0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
	0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
	0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
	0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
	0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
	0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16};

static const byte rsbox[256] = {
	0x52, 0x09, 0x6a, 0xd5, 0x30, 0x36, 0xa5, 0x38, 0xbf, 0x40, 0xa3, 0x9e, 0x81, 0xf3, 0xd7, 0xfb,
	0x7c, 0xe3, 0x39, 0x82, 0x9b, 0x2f, 0xff, 0x87, 0x34, 0x8e, 0x43, 0x44, 0xc4, 0xde, 0xe9, 0xcb,
	0x54, 0x7b, 0x94, 0x32, 0xa6, 0xc2, 0x23, 0x3d, 0xee, 0x4c, 0x95, 0x0b, 0x42, 0xfa, 0xc3, 0x4e,
	0x08, 0x2e, 0xa1, 0x66, 0x28, 0xd9, 0x24, 0xb2, 0x76, 0x5b, 0xa2, 0x49, 0x6d, 0x8b, 0xd1, 0x25,
	0x72, 0xf8, 0xf6, 0x64, 0x86, 0x68, 0x98, 0x16, 0xd4, 0xa4, 0x5c, 0xcc, 0x5d, 0x65, 0xb6, 0x92,
	0x6c, 0x70, 0x48, 0x50, 0xfd, 0xed, 0xb9, 0xda, 0x5e, 0x15, 0x46, 0x57, 0xa7, 0x8d, 0x9d, 0x84,
	0x90, 0xd8, 0xab, 0x00, 0x8c, 0xbc, 0xd3, 0x0a, 0xf7, 0xe4, 0x58, 0x05, 0xb8, 0xb3, 0x45, 0x06,
	0xd0, 0x2c, 0x1e, 0x8f, 0xca, 0x3f, 0x0f, 0x02, 0xc1, 0xaf, 0xbd, 0x03, 0x01, 0x13, 0x8a, 0x6b,
	0x3a, 0x91, 0x11, 0x41, 0x4f, 0x67, 0xdc, 0xea, 0x97, 0xf2, 0xcf, 0xce, 0xf0, 0xb4, 0xe6, 0x73,
	0x96, 0xac, 0x74, 0x22, 0xe7, 0xad, 0x35, 0x85, 0xe2, 0xf9, 0x37, 0xe8, 0x1c, 0x75, 0xdf, 0x6e,
	0x47, 0xf1, 0x1a, 0x71, 0x1d, 0x29, 0xc5, 0x89, 0x6f, 0xb7, 0x62, 0x0e, 0xaa, 0x18, 0xbe, 0x1b,
	0xfc, 0x56, 0x3e, 0x4b, 0xc6, 0xd2, 0x79, 0x20, 0x9a, 0xdb, 0xc0, 0xfe, 0x78, 0xcd, 0x5a, 0xf4,
	0x1f, 0xdd, 0xa8, 0x33, 0x88, 0x07, 0xc7, 0x31, 0xb1, 0x12, 0x10, 0x59, 0x27, 0x80, 0xec, 0x5f,
	0x60, 0x51, 0x7f, 0xa9, 0x19, 0xb5, 0x4a, 0x0d, 0x2d, 0xe5, 0x7a, 0x9f, 0x93, 0xc9, 0x9c, 0xef,
	0xa0, 0xe0, 0x3b, 0x4d, 0xae, 0x2a, 0xf5, 0xb0, 0xc8, 0xeb, 0xbb, 0x3c, 0x83, 0x53, 0x99, 0x61,
	0x17, 0x2b, 0x04, 0x7e, 0xba, 0x77, 0xd6, 0x26, 0xe1, 0x69, 0x14, 0x63, 0x55, 0x21, 0x0c, 0x7d};

static const unsigned long Rcon[11] = {
	0x8d000000, 0x01000000, 0x02000000, 0x04000000, 0x08000000, 0x10000000, 0x20000000, 0x40000000, 0x80000000, 0x1b000000, 0x36000000};

unsigned long SubWord(unsigned long word2);
byte getSBoxValue(byte number);
unsigned long RotWord(unsigned long word2);
void BreakWordDown(byte *ret_word, unsigned long word2);
void KeyExpansion(unsigned long *w, byte *key);
void addKey(byte *state, byte *key);
void PackKey(byte *key, unsigned long key_part1, unsigned long key_part2, unsigned long key_part3, unsigned long key_part4);
void ShiftRows(byte *state);
void SubBytes(byte *state);
void MixColumns(byte *state);
byte TimesThree(byte num);
byte TimesTwo(byte num);
byte *Encrypt(byte state[16], byte key[16], byte *local_state);
void print_state(byte *state);

void setup()
{
	// put your setup code here, to run once:
	// Open serial communications and wait for port to open:
	Serial.begin(115200, SERIAL_8E2);
	while (!Serial)
	{
		; // wait for serial port to connect. Needed for native USB port only
	}
	//ms * s
	int timeout = 1000 * 15;
	//Serial.setTimeout(timeout);
}

int incomingByte = 0; // for incoming serial data

enum MAES_OPERATION
{
	M_NONE,
	M_ENCRYPT,
	M_DECRYPT
};

byte *plaintext;
byte *userkey;
byte *encrypt_hold;
byte *decrypt_hold;
string maes_instruction;

void get_instruction()
{
	Serial.println("instruction?");
	while (!Serial.available())
	{
	}
	maes_instruction = Serial.readString();
	Serial.println("recv_complete?");
}

void get_plaintext()
{
	Serial.println("plaintext?");
	while (!Serial.available())
	{
	}
	string recv_msg = Serial.readString();
	for (int i = 0; i < MSGSIZE; i++)
	{
		plaintext[i] = recv_msg[i];
	}
	Serial.println("recv_complete?");
}

void get_key()
{
	Serial.println("key?");
	while (!Serial.available())
	{
	}
	string recv_msg = Serial.readString();
	for (int i = 0; i < MSGSIZE; i++)
	{
		userkey[i] = recv_msg[i];
	}
	Serial.println("recv_complete?");
}

void loop()
{
	// put your main code here, to run repeatedly:
	delay(50);
	plaintext = (byte *)malloc(sizeof(byte) * MSGSIZE);
	userkey = (byte *)malloc(sizeof(byte) * MSGSIZE);

	//0 nothing
	//1 encrypt
	//2 decrypt
	MAES_OPERATION current_operation = M_NONE;
	bool intruction_allowed = false;
	while (!intruction_allowed)
	{
		get_instruction();
		if (maes_instruction.equals("MAESEncrypt"))
		{
			current_operation = M_ENCRYPT;
			intruction_allowed = true;
		}
		else if (maes_instruction.equals("MAESDecrypt"))
		{
			current_operation = M_DECRYPT;
			intruction_allowed = true;
		}
	}

	get_plaintext();
	get_key();
	print_state(plaintext);
	print_state(userkey);

	if (current_operation == M_ENCRYPT){
		encrypt_hold = (byte *)malloc(sizeof(byte) * MSGSIZE);
		memcpy(encrypt_hold, plaintext, 16 * sizeof(byte));
		encrypt_hold = Encrypt(plaintext, userkey, encrypt_hold);
		Serial.println("done");
		print_state(encrypt_hold);
		free(encrypt_hold);
	}else if  (current_operation == M_DECRYPT){
		decrypt_hold = (byte *)malloc(sizeof(byte) * MSGSIZE);
		memcpy(decrypt_hold, plaintext, 16 * sizeof(byte));
		print_state(decrypt_hold);
		free(decrypt_hold);
	}
	
	free(plaintext);
	free(userkey);
}

void print_state(byte *state)
{
	Serial.println("-----------------------------------------------------------------");
	for (int i = 0; i < 16; i++)
	{
		Serial.print("  ");
		Serial.print(state[i], HEX);
	}
	Serial.println("");
	Serial.println("-----------------------------------------------------------------");
}

byte *Decrypt(byte *state, byte *key, byte *local_state)
{
}

byte *Encrypt(byte *state, byte *key, byte *local_state)
{
	//unsigned long expanded_key[44] = { 0 };
	//byte local_state[16] = { 0x00 };
	//byte local_key[16] = { 0x00 };

	unsigned long *expanded_key = (unsigned long *)malloc(sizeof(unsigned long) * 44);
	//byte *local_state = malloc(sizeof(byte) * 16);
	byte *local_key = (byte *)malloc(sizeof(byte) * 16);

	//copy state
	memcpy(local_state, state, 16 * sizeof(byte));
	memcpy(local_key, key, 16 * sizeof(byte));
	//run key expansion
	KeyExpansion(expanded_key, local_key);

	//run first addkey
	//memcpy(local_key, PackKey(expanded_key[4 * 0], expanded_key[4 * 0 + 1], expanded_key[4 * 0 + 2], expanded_key[4 * 0 + 3]), 16 * sizeof(byte));
	PackKey(local_key, expanded_key[4 * 0], expanded_key[4 * 0 + 1], expanded_key[4 * 0 + 2], expanded_key[4 * 0 + 3]);
	addKey(local_state, local_key);

	//AES rounds
	for (int i = 0; i < 10;)
	{
		//subbytes
		SubBytes(local_state);
		//shift rows
		ShiftRows(local_state);
		//mix columns
		if (i < 9)
		{
			MixColumns(local_state);
		}
		//XOR with key
		i++;
		//memcpy(local_key, PackKey(expanded_key[4 * i], expanded_key[4 * i + 1], expanded_key[4 * i + 2], expanded_key[4 * i + 3]), 16 * sizeof(byte));
		PackKey(local_key, expanded_key[4 * i], expanded_key[4 * i + 1], expanded_key[4 * i + 2], expanded_key[4 * i + 3]);
		addKey(local_state, local_key);
	}

	free(expanded_key);
	free(local_key);
	return local_state;
}

void addKey(byte *state, byte *key)
{
	for (int i = 0; i < 16; i++)
	{
		state[i] = state[i] ^ key[i];
	}
}

void ShiftRows(byte *state)
{
	//byte temp_state[16] = { 0 };
	byte *temp_state = (byte *)malloc(sizeof(byte) * 16);
	//top row
	temp_state[0] = state[0];
	temp_state[1] = state[5];
	temp_state[2] = state[10];
	temp_state[3] = state[15];
	//1 row
	temp_state[4] = state[4];
	temp_state[5] = state[9];
	temp_state[6] = state[14];
	temp_state[7] = state[3];
	//2 row
	temp_state[8] = state[8];
	temp_state[9] = state[13];
	temp_state[10] = state[2];
	temp_state[11] = state[7];
	//3 row
	temp_state[12] = state[12];
	temp_state[13] = state[1];
	temp_state[14] = state[6];
	temp_state[15] = state[11];
	memcpy(state, temp_state, 16 * sizeof(byte));
	free(temp_state);
}

byte TimesTwo(byte num)
{
	// ab = example of num, hex byte

	// get eighth digit
	byte eighth_digit = num >> 7;

	// left shift
	num = num << 1;

	if (eighth_digit == 1)
	{
		num = num ^ 0x1B; // is this 00011011 in hex?
	}

	return num;
}

byte TimesThree(byte num)
{
	// ab = example of num, hex byte

	// 3 times  = (2 times x) xor x
	return TimesTwo(num) ^ num;
}

void MixColumns(byte *state)
{
	//byte temp_state[16] = { 0 };
	byte *temp_state = (byte *)malloc(sizeof(byte) * 16);
	for (int i = 0; i < 4; i++)
	{
		for (int j = 0; j < 4; j++)
		{
			int current = i * 4 + j;
			//byte s0 = 0x02 * state[current];
			//byte s1 = 0x03 * state[current + 1];
			//byte a = s0 ^ s1;
			//byte b = state[current + 2] ^ state[current + 3];
			//byte c = a ^ b;
			switch (j)
			{
			case 0:
				temp_state[current] = TimesTwo(state[current]) ^ TimesThree(state[current + 1]) ^ state[current + 2] ^ state[current + 3];
				break;
			case 1:
				temp_state[current] = state[current - 1] ^ TimesTwo(state[current]) ^ TimesThree(state[current + 1]) ^ state[current + 2];
				break;
			case 2:
				temp_state[current] = state[current - 2] ^ state[current - 1] ^ TimesTwo(state[current]) ^ TimesThree(state[current + 1]);
				break;
			case 3:
				temp_state[current] = TimesThree(state[current - 3]) ^ state[current - 2] ^ state[current - 1] ^ TimesTwo(state[current]);
				break;
			}
		}
	}
	memcpy(state, temp_state, 16 * sizeof(byte));
	free(temp_state);
}

void PackKey(byte *key, unsigned long key_part1, unsigned long key_part2, unsigned long key_part3, unsigned long key_part4)
{
	//byte key[16] = { 0 };
	//pt1
	byte count = 4;
	unsigned long temp_key = key_part1;
	for (int i = 0; i < 4; i++)
	{
		temp_key = key_part1;
		count--;
		byte inv_shift_pos = 24 - (count * 8);
		temp_key = temp_key << inv_shift_pos;
		temp_key = temp_key >> 24;
		key[i] = temp_key;
	}

	count = 4;
	for (int i = 4; i < 8; i++)
	{
		temp_key = key_part2;
		count--;
		byte inv_shift_pos = 24 - (count * 8);
		temp_key = temp_key << inv_shift_pos;
		temp_key = temp_key >> 24;
		key[i] = temp_key;
	}

	count = 4;
	for (int i = 8; i < 12; i++)
	{
		temp_key = key_part3;
		count--;
		byte inv_shift_pos = 24 - (count * 8);
		temp_key = temp_key << inv_shift_pos;
		temp_key = temp_key >> 24;
		key[i] = temp_key;
	}

	count = 4;
	for (int i = 12; i < 16; i++)
	{
		temp_key = key_part4;
		count--;
		byte inv_shift_pos = 24 - (count * 8);
		temp_key = temp_key << inv_shift_pos;
		temp_key = temp_key >> 24;
		key[i] = temp_key;
	}
	//return key;
}

//byte is 1 byte
//word is 4 bytes
void KeyExpansion(unsigned long *w, byte *key)
{
	//unsigned long w[44] = { 0 };
	unsigned long temp = 0;
	byte i = 0;

	for (i = 0; i < 4; i++)
	{
		temp = key[4 * i];
		temp = temp << 8;
		temp += key[4 * i + 1];
		temp = temp << 8;
		temp += key[4 * i + 2];
		temp = temp << 8;
		temp += key[4 * i + 3];
		w[i] = temp;
	}

	//the rest of the blocks
	for (i = 4; i < 44; i++)
	{
		temp = w[i - 1];
		if ((i % 4) == 0)
		{
			temp = RotWord(temp);
			temp = SubWord(temp);
			temp = temp ^ Rcon[i / 4];
		}
		//unsigned long val = w[i - 4];
		w[i] = w[i - 4] ^ temp;
	}
	//return w;
}

void BreakWordDown(byte *ret_word, unsigned long word2)
{
	unsigned long temp2 = word2;
	//31 to 24
	temp2 = (temp2 >> 24);
	ret_word[3] = temp2;
	temp2 = word2;
	//23 to 16
	temp2 = (temp2 << 8);
	temp2 = (temp2 >> 24);
	ret_word[2] = temp2;
	temp2 = word2;
	//15 to 8
	temp2 = (temp2 << 16);
	temp2 = (temp2 >> 24);
	ret_word[1] = temp2;
	temp2 = word2;
	//7 to 0
	temp2 = (temp2 << 24);
	temp2 = (temp2 >> 24);
	ret_word[0] = temp2;
}

unsigned long SubWord(unsigned long word2)
{
	//sub byte
	//byte words[4] = { 0 };
	byte *words = (byte *)malloc(sizeof(byte) * 4);
	BreakWordDown(words, word2);
	unsigned long return_word = 0;
	byte i, temp;
	for (i = 0; i < 4; i++)
	{
		switch (i)
		{
		case 0:
		{
			temp = getSBoxValue(words[3]);
			break;
		}
		case 1:
		{
			temp = getSBoxValue(words[2]);
			break;
		}
		case 2:
		{
			temp = getSBoxValue(words[1]);
			break;
		}
		case 3:
		{
			temp = getSBoxValue(words[0]);
			break;
		}
		}

		return_word = return_word << 8;
		return_word += temp;
	}
	free(words);
	return return_word;
}

void SubBytes(byte *state)
{
	for (int i = 0; i < 16; i++)
	{
		state[i] = getSBoxValue(state[i]);
	}
}

unsigned long RotWord(unsigned long word2)
{
	//rotate word2 for KeyExpansion
	//B0 -> B3
	//B1 -> B0
	//B2 -> B1
	//B3 -> B2
	//byte words[4] = { 0 };
	byte *words = (byte *)malloc(sizeof(byte) * 4);
	BreakWordDown(words, word2);
	unsigned long ret_word = 0;
	ret_word += words[2];
	ret_word = ret_word << 8;
	ret_word += words[1];
	ret_word = ret_word << 8;
	ret_word += words[0];
	ret_word = ret_word << 8;
	ret_word += words[3];
	free(words);
	return ret_word;
}

byte getSBoxValue(byte number)
{
	//ascii numbering
	return sbox[number];
}