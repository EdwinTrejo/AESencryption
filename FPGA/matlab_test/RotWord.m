function [ret_word] = RotWord(word)
	%rotate word for KeyExpansion
	%B1 -> B4
	%B2 -> B1
	%B3 -> B2
	%B4 -> B3
%       // 4  3  2  1
%       // 3c 4f cf 09
%       // cf 4f 3c 09
    words = zeros(1, 4, 'uint32');
    words(4) = bitsrl(bitand(word, 0xFF000000), 24);
    words(3) = bitsrl(bitsll(bitand(word, 0x00FF0000), 8), 24);
    words(2) = bitsrl(bitsll(bitand(word, 0x0000FF00), 16), 24);
    words(1) = bitsrl(bitsll(bitand(word, 0x000000FF), 24), 24);
	
    ret_word = uint32(0);
    
	ret_word = ret_word + words(3);
	ret_word = bitsll(ret_word, 8);
	ret_word = ret_word + words(2);
	ret_word = bitsll(ret_word, 8);
	ret_word = ret_word + words(1);
	ret_word = bitsll(ret_word, 8);
	ret_word = ret_word + words(4);
end 
