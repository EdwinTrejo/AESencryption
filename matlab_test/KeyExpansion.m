% function [w] = KeyExpansion(key)

    % did not change indexing

	%uint32_t w[44] = { 0 };
    clc; clear;
    key = uint8([0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c]);
%     round constant do not delete
    Rcon = uint32([0x8d000000 0x01000000 0x02000000 0x04000000 0x08000000 0x10000000 0x20000000 0x40000000 0x80000000 0x1b000000 0x36000000 ]);
    
    w = uint32(zeros(1,44));
	temp = uint32(0);
	i = uint8(1);
    i1 = uint8(1); i2 = uint8(1); i3 = uint8(1); i4 = uint8(1);
    
    for i = 0:3
		%w[i] = (key[4 * i], key[4 * i + 1], key[4 * i + 2], key[4 * i + 3]);
        if (i == 0)
            i1 = 1; i2 = 2; i3 = 3; i4 = 4;
        else
            i1 = 4*i+1; i2 = 4*i+2; i3 = 4*i+3; i4 = 4*i+4;
        end        
		w(i+1) = w(i+1) + uint32(key(i1));
		w(i+1) = bitsll(w(i+1), 8);
		w(i+1) = w(i+1) + uint32(key(i2));
		w(i+1) = bitsll(w(i+1), 8);
		w(i+1) = w(i+1) + uint32(key(i3));
		w(i+1) = bitsll(w(i+1), 8);
		w(i+1) = w(i+1) + uint32(key(i4));
    end
% 
%     clc; clear;
%     Rcon = uint32([0x8d000000 0x01000000 0x02000000 0x04000000 0x08000000 0x10000000 0x20000000 0x40000000 0x80000000 0x1b000000 0x36000000]);
%     vallll = uint32(0x09cf4f3c);
%     vallll2 = uint32(0x2b7e1516);
%     %       // 3c 4f cf 09
%     %       // cf 4f 3c 09
%     temp = uint32(RotWord(vallll));
%     %       // 8a 84 eb 01
%     temp = uint32(SubWord(temp));
%     %       // 8b 84 eb 01
%     temp = uint32(bitxor(temp, Rcon((4/4)+1)));
% %     a0fafe17
%     temp = uint32(bitxor(temp, vallll2));
% 	dec2hex(temp)
    
    %the rest of the blocks
    for i = 5:44
		temp = uint32(w(i - 1));
        if (mod((i-1), 4) == 0) % this has been changed 
			temp = uint32(RotWord(temp));
			temp = uint32(SubWord(temp));
			temp = uint32(bitxor(temp, Rcon((4/4)+1)));
        end
		w(i) = bitxor(w(i - 4), temp);
    end
    
    dec2hex(w)
	
% end