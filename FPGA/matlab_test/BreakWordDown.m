function [ret_word] =  BreakWordDown(ret_word, word)
	
    temp2 = uint32(word);
    
	%31 to 24
	temp2 = bitsra(temp2, 24);
	ret_word(4) = temp2;
	temp2 = word;
    
	%23 to 16
	temp2 = bitsll(temp2, 8);
	temp2 = bitsra(temp2, 24);
	ret_word(3) = temp2;
	temp2 = word;
    
	%15 to 8
	temp2 = bitsll(temp2, 16);
	temp2 = bitsra(temp2, 24);
	ret_word(2) = temp2;
	temp2 = word;
    
	%7 to 0
	temp2 = bitsll(temp2, 24);
	temp2 = bitsra(temp2, 24);
	ret_word(1) = temp2;
end