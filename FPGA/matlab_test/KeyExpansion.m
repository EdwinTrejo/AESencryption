function [w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36, w37, w38, w39, w40, w41, w42, w43, w44] = KeyExpansion(key1, key2, key3, key4, key5, key6, key7, key8, key9, key10, key11, key12, key13, key14, key15, key16)

%     round constant do not delete
    Rcon = uint32([0x8d000000 0x01000000 0x02000000 0x04000000 0x08000000 0x10000000 0x20000000 0x40000000 0x80000000 0x1b000000 0x36000000 ]);
    
    w = uint32(zeros(1,44));
% 	temp = uint32(0);
% 	i = uint8(1);

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
    
    w(5) = w(4);
    w(5) = uint32(RotWord(w(5)));
    w(5) = uint32(SubWord(w(5)));
    w(5) = uint32(bitxor(w(5), Rcon(2)));
    w(5) = bitxor(w(1), w(5));    
    w5 = w(5);
    
    w(6) = bitxor(w(5), w(2));
    w6 = w(6);
    w(7) = bitxor(w(6), w(3));
    w7 = w(7);
    w(8) = bitxor(w(7), w(4));
    w8 = w(8);

    w(9) = w(8);
    w(9) = uint32(RotWord(w(9)));
    w(9) = uint32(SubWord(w(9)));
    w(9) = uint32(bitxor(w(9), Rcon(3))); 
    w(9) = bitxor(w(5), w(9));
    w9 = w(9);
     
    w(10) = bitxor(w(9), w(6));
    w10 = w(10);
    w(11) = bitxor(w(10), w(7));
    w11 = w(11);
    w(12) = bitxor(w(11), w(8));
    w12 = w(12);
    
    w(13) = w(12);
    w(13) = uint32(RotWord(w(13)));
    w(13) = uint32(SubWord(w(13)));
    w(13) = uint32(bitxor(w(13), Rcon(4))); 
    w(13) = bitxor(w(9), w(13));
    w13 = w(13);

    w(14) = bitxor(w(13), w(10));
    w14 = w(14);
    w(15) = bitxor(w(14), w(11));
    w15 = w(15);
    w(16) = bitxor(w(15), w(12));
    w16 = w(16);
    
    w(17) = w(16);
    w(17) = uint32(RotWord(w(17)));
    w(17) = uint32(SubWord(w(17)));
    w(17) = uint32(bitxor(w(17), Rcon(5))); 
    w(17) = bitxor(w(13), w(17));
    w17 = w(17);
    
    w(18) = bitxor(w(17), w(14));
    w18 = w(18);
    w(19) = bitxor(w(18), w(15));
    w19 = w(19);
    w(20) = bitxor(w(19), w(16));
    w20 = w(20);
    
    w(21) = w(20);
    w(21) = uint32(RotWord(w(21)));
    w(21) = uint32(SubWord(w(21)));
    w(21) = uint32(bitxor(w(21), Rcon(6))); 
    w(21) = bitxor(w(17), w(21));
    w21 = w(21);
    
    w(22) = bitxor(w(21), w(18));
    w22 = w(22);
    w(23) = bitxor(w(22), w(19));
    w23 = w(23);
    w(24) = bitxor(w(23), w(20));
    w24 = w(24);
    
    w(25) = w(24);
    w(25) = uint32(RotWord(w(25)));
    w(25) = uint32(SubWord(w(25)));
    w(25) = uint32(bitxor(w(25), Rcon(7))); 
    w(25) = bitxor(w(21), w(25));
    w25 = w(25);
    
    w(26) = bitxor(w(25), w(22));
    w26 = w(26);
    w(27) = bitxor(w(26), w(23));
    w27 = w(27);
    w(28) = bitxor(w(27), w(24));
    w28 = w(28);
    
    w(29) = w(28);
    w(29) = uint32(RotWord(w(29)));
    w(29) = uint32(SubWord(w(29)));
    w(29) = uint32(bitxor(w(29), Rcon(8))); 
    w(29) = bitxor(w(25), w(29));
    w29 = w(29);
    
    w(30) = bitxor(w(29), w(26));
    w30 = w(30);
    w(31) = bitxor(w(30), w(27));
    w31 = w(31);
    w(32) = bitxor(w(31), w(28));
    w32 = w(32);
    
    w(33) = w(32);
    w(33) = uint32(RotWord(w(33)));
    w(33) = uint32(SubWord(w(33)));
    w(33) = uint32(bitxor(w(33), Rcon(9))); 
    w(33) = bitxor(w(29), w(33));
    w33 = w(33);
   
    w(34) = bitxor(w(33), w(30));
    w34 = w(34);
    w(35) = bitxor(w(34), w(31));
    w35 = w(35);
    w(36) = bitxor(w(35), w(32));
    w36 = w(36);
    
    w(37) = w(36);
    w(37) = uint32(RotWord(w(37)));
    w(37) = uint32(SubWord(w(37)));
    w(37) = uint32(bitxor(w(37), Rcon(10))); 
    w(37) = bitxor(w(33), w(37));
    w37 = w(37);
    
    w(38) = bitxor(w(37), w(34));
    w38 = w(38);
    w(39) = bitxor(w(38), w(35));
    w39 = w(39);
    w(40) = bitxor(w(39), w(36));
    w40 = w(40);
    
    w(41) = w(40);
    w(41) = uint32(RotWord(w(41)));
    w(41) = uint32(SubWord(w(41)));
    w(41) = uint32(bitxor(w(41), Rcon(11))); 
    w(41) = bitxor(w(37), w(41));
    w41 = w(41);
    
    w(42) = bitxor(w(41), w(38));
    w42 = w(42);
    w(43) = bitxor(w(42), w(39));
    w43 = w(43);
    w(44) = bitxor(w(43), w(40));
    w44 = w(44);
end