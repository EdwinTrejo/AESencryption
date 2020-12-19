function [state_out] = MixColumns(state)
    %this one probably hasindexing problems

	%uint8_t temp_state[16] = { 0 };
%     state = uint8([0x63 0xca 0xb7 0x04 0x09 0x53 0xd0 0x51 0xcd 0x60 0xe0 0xe7 0xba 0x70 0xe1 0x8c])
    temp_state = uint8(zeros(1,16));
    
    for i = 0:3
        for j = 0:3
			current = i * 4 + j + 1;
            switch (j)
                case 0
                    temp_state(current) = bitxor(bitxor(TimesTwo(state(current)), TimesThree(state(current + 1))), bitxor(state(current + 2), state(current + 3)));
                case 1
                    temp_state(current) = bitxor(bitxor(state(current - 1), TimesTwo(state(current))), bitxor(TimesThree(state(current + 1)), state(current + 2)));
                case 2
                    temp_state(current) = bitxor(bitxor(state(current - 2), state(current - 1)), bitxor(TimesTwo(state(current)), TimesThree(state(current + 1))));
                case 3
                    temp_state(current) = bitxor(bitxor(TimesThree(state(current  - 3)), state(current - 2)), bitxor(state(current - 1), TimesTwo(state(current))));
            end
        end
    end
	%memcpy(state, temp_state, 16 * sizeof(uint8_t));
    state_out = temp_state;
end