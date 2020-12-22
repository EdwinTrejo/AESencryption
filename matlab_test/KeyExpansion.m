function [w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36, w37, w38, w39, w40, w41, w42, w43, w44] = KeyExpansion(key1, key2, key3, key4, key5, key6, key7, key8, key9, key10, key11, key12, key13, key14, key15, key16)

%     round constant do not delete
    Rcon = uint32([0x8d000000 0x01000000 0x02000000 0x04000000 0x08000000 0x10000000 0x20000000 0x40000000 0x80000000 0x1b000000 0x36000000 ]);
    
    w = uint32(zeros(1,44));
	temp = uint32(0);
	i = uint8(1);

    % first loop worked out:

    % iteration 1:
    w(1) = w(1) + uint32(key1);
    w(1) = bitsll(w(1), 8);
    w(1) = w(1) + uint32(key2);
    w(1) = bitsll(w(1), 8);
    w(1) = w(1) + uint32(key3);
    w(1) = bitsll(w(1), 8);
    w(1) = w(1) + uint32(key4);

    % iteration 2:
    w(2) = w(2) + uint32(key5);
    w(2) = bitsll(w(2), 8);
    w(2) = w(2) + uint32(key6);
    w(2) = bitsll(w(2), 8);
    w(2) = w(2) + uint32(key7);
    w(2) = bitsll(w(2), 8);
    w(2) = w(2) + uint32(key8);

    % iteration 3:
    w(3) = w(3) + uint32(key9);
    w(3) = bitsll(w(3), 8);
    w(3) = w(3) + uint32(key10);
    w(3) = bitsll(w(3), 8);
    w(3) = w(3) + uint32(key11);
    w(3) = bitsll(w(3), 8);
    w(3) = w(3) + uint32(key12);

    % iteration 4:
    w(4) = w(4) + uint32(key13);
    w(4) = bitsll(w(4), 8);
    w(4) = w(4) + uint32(key14);
    w(4) = bitsll(w(4), 8);
    w(4) = w(4) + uint32(key15);
    w(4) = bitsll(w(4), 8);
    w(4) = w(4) + uint32(key16);

%     %the rest of the blocks
%     for i = 4:43
% 		temp = uint32(w(i));
%         if (mod(i, 4) == 0) % this has been changed 
% 			temp = uint32(RotWord(temp));
% 			temp = uint32(SubWord(temp));
% 			temp = uint32(bitxor(temp, Rcon(floor((i+1) / 4 )+1))); % might need to be i + 1
%         end
% 		w(i+1) = bitxor(w(i - 3), temp);
%     end
	
    w1 = w(1);
    w2 = w(2);
    w3 = w(3);
    w4 = w(4); 
    
    w5_temp = w(4);
    w5 = uint32(RotWord(w5_temp));
    w5 = uint32(SubWord(w5_temp));
    w5 = uint32(bitxor(w5_temp, Rcon(2))); 
    w5 = bitxor(w1, w5_temp);
    
    w6 = bitxor(w5, w2);
    w7 = bitxor(w6, w3);
    w8 = bitxor(w7, w4);

    w9_temp = w(8);
    w9 = uint32(RotWord(w9_temp));
    w9 = uint32(SubWord(w9_temp));
    w9 = uint32(bitxor(w9_temp, Rcon(3))); 
    w9 = bitxor(w5, w9_temp);
     
    w10 = bitxor(w9, w6);
    w11 = bitxor(w10, w7);
    w12 = bitxor(w11, w8);
    
    w13_temp = w(12);
    w13 = uint32(RotWord(w13_temp));
    w13 = uint32(SubWord(w13_temp));
    w13 = uint32(bitxor(w13_temp, Rcon(4))); 
    w13 = bitxor(w9, w13_temp);

    w14 = w(14);
    w15 = w(15);
    w16 = w(16);
    
    w17_temp = w(16);
    w17 = uint32(RotWord(w17_temp));
    w17 = uint32(SubWord(w17_temp));
    w17 = uint32(bitxor(w17_temp, Rcon(5))); 
    w17 = bitxor(w13, w17_temp);
    
    w18 = bitxor(w17, w14);
    w19 = bitxor(w18, w15);
    w20 = bitxor(w19, w16);
    
    w21_temp = w(20);
    w21 = uint32(RotWord(w21_temp));
    w21 = uint32(SubWord(w21_temp));
    w21 = uint32(bitxor(w21_temp, Rcon(6))); 
    w21 = bitxor(w17, w21_temp);
    
    w22 = bitxor(w21, w18);
    w23 = bitxor(w22, w19);
    w24 = bitxor(w23, w20);
    
    w25_temp = w(24);
    w25 = uint32(RotWord(w25_temp));
    w25 = uint32(SubWord(w25_temp));
    w25 = uint32(bitxor(w25_temp, Rcon(7))); 
    w25 = bitxor(w21, w25_temp);
    
    w26 = bitxor(w24, w21);
    w27 = bitxor(w25, w22);
    w28 = bitxor(w26, w23);
   
    w29_temp = w(28);
    w29 = uint32(RotWord(w29_temp));
    w29 = uint32(SubWord(w29_temp));
    w29 = uint32(bitxor(w29_temp, Rcon(8))); 
    w29 = bitxor(w25, w29_temp);
   
    w30 = bitxor(w29, w26);
    w31 = bitxor(w30, w27);
    w32 = bitxor(w31, w28);
   
    w33_temp = w(32);
    w33 = uint32(RotWord(w33_temp));
    w33 = uint32(SubWord(w33_temp));
    w33 = uint32(bitxor(w33_temp, Rcon(9))); 
    w33 = bitxor(w29, w33_temp);
   
    w34 = bitxor(w33, w30);
    w35 = bitxor(w34, w31);
    w36 = bitxor(w35, w32);
   
    w37_temp = w(36);
    w37 = uint32(RotWord(w37_temp));
    w37 = uint32(SubWord(w37_temp));
    w37 = uint32(bitxor(w37_temp, Rcon(10))); 
    w37 = bitxor(w33, w37_temp);
   
    w38 = bitxor(w37, w34);
    w39 = bitxor(w38, w35);
    w40 = bitxor(w39, w36);
   
    w41_temp = w(40);
    w41 = uint32(RotWord(w41_temp));
    w41 = uint32(SubWord(w41_temp));
    w41 = uint32(bitxor(w41_temp, Rcon(11))); 
    w41 = bitxor(w37, w41_temp);
   
    w42 = bitxor(w41, w38);
    w43 = bitxor(w42, w39);
    w44 = bitxor(w43, w40);
end