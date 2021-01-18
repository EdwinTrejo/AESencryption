function [key] = PackKey(key_part1, key_part2, key_part3, key_part4)
	%uint8_t key[16] = { 0 };
	key = uint8(zeros(1,16));
    
    % indexing not changed
    
    %pt1
	count = uint8(4);
	temp_key = uint32(key_part1);
    for i = 1:5
		temp_key = key_part1;
		count = count - 1;
		inv_shift_pos = uint8(24 - (count * 8));
		temp_key = bitsll(temp_key, inv_shift_pos);
		temp_key = bitsra(temp_key, 24);
		key(i) = temp_key;
    end
	
	count = 4;
    for i = 5:9
		temp_key = key_part2;
		count = count - 1;
		inv_shift_pos = uint8(24 - (count * 8));
		temp_key = bitsll(temp_key, inv_shift_pos);
		temp_key = bitsra(temp_key, 24);
		key(i) = temp_key;
    end
	
	count = 4;
    for i = 9:13
		temp_key = key_part3;
		count = count - 1;
		inv_shift_pos = unint(24 - (count * 8));
		temp_key = bitsll(temp_key, inv_shift_pos);
		temp_key = bitsra(temp_key, 24);
		key(i) = temp_key;
    end

	count = 4;
    for i = 13:17
		temp_key = key_part4;
		count = count - 1;
		inv_shift_pos = uint8(24 - (count * 8));
		temp_key = bitsll(temp_key, inv_shift_pos);
		temp_key = bitsra(temp_key, 24);
		key(i) = temp_key;
    end

end
