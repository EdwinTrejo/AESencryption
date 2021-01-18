function num_out  = TimesTwo(num_in)
	% ab = example of num, hex byte

	% get eighth digit
	eighth_digit = uint8(bitsra(num_in, 7));
    
	% left shift
	num_out = bitsll(num_in, 1);

    if eighth_digit == 1
%         B = hex2dec('1B'); % idk if that's fully right
        B = 0x1B;
		num_out = bitxor(num_out, B);
    end
end