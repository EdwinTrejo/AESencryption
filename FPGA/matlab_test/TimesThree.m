function [num] = TimesThree(num) 
	% ab = example of num, hex byte
	% 3 times  = (2 times x) xor x
	num = bitxor(TimesTwo(num), num);
end