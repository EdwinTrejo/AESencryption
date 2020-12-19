function [ret_word] = SubWord(word)

    % did not mess with indexing

	%sub byte
	%uint8_t words[4] = { 0 };
%     words = uint8(zeros(1,4));
% 	words = BreakWordDown(words, word);
    words = zeros(1, 4, 'uint32');
    
    words(4) = getSBoxValue(uint8(bitsrl(bitand(word, 0xFF000000), 24)));
    words(3) = getSBoxValue(uint8(bitsrl(bitsll(bitand(word, 0x00FF0000), 8), 24)));
    words(2) = getSBoxValue(uint8(bitsrl(bitsll(bitand(word, 0x0000FF00), 16), 24)));
    words(1) = getSBoxValue(uint8(bitsrl(bitsll(bitand(word, 0x000000FF), 24), 24)));
        
    ret_word = uint32(0);
    ret_word = ret_word + words(4);
    ret_word = bitsll(ret_word, 8);
	ret_word = ret_word + words(3);
	ret_word = bitsll(ret_word, 8);
	ret_word = ret_word + words(2);
	ret_word = bitsll(ret_word, 8);
	ret_word = ret_word + words(1);
end