% main() for AES Encryption

%0x 2b 7e 15 16 28 ae d2 a6 ab f7 15 88 09 cf 4f 3c
key = unint8({ '2b', '7e', '15', '16', '28', 'ae', 'd2', 'a6', 'ab', 'f7', '15', '88', '09', 'cf', '4f', '3c' });
uint32_t word[44] = { 0 };

word = KeyExpansion(key);

for i = 1:45
    fprintf("%i: %X\n", i+1, word(i));
end

state = uint8({ '00', '11', '22', '33', '44', '55', '66', '77', '88', '99', 'aa', 'bb', 'cc', 'dd', 'ee', 'ff' });
%addKey(&state, word[i]);
key = PackKey(word(1), word(2), word(3), word(4));

    

%AES rounds
for  i = 0:10 
    %subbytes
    state = SubBytes(state);
    %shift rows
    state = ShiftRows(state);
    %mix columns
    state = MixColumns(state);
    %XOR with key
    key = PackKey(word(4 * i + 1), word(4 * i + 2), word(4 * i + 3), word(4 * i + 4));
    state = addKey(state, key);
end
