function [state_out] = ShiftRows(state)
	
    % this indexing needs to be fixed

    %uint8_t temp_state[16] = { 0 };
    temp_state = uint8(zeros(1,16)); % double check this is what you want
    
	%top row
	temp_state(1) = state(1);
	temp_state(2) = state(6);
	temp_state(3) = state(11);
	temp_state(4) = state(16);
	%1 row
	temp_state(5) = state(5);
	temp_state(6) = state(10);
	temp_state(7) = state(15);
	temp_state(8) = state(4);
	%2 row
	temp_state(9) = state(9);
	temp_state(10) = state(14);
	temp_state(11) = state(3);
	temp_state(12) = state(8);
	%3 row
	temp_state(13) = state(13);
	temp_state(14) = state(2);
	temp_state(15) = state(7);
	temp_state(16) = state(12);
	state_out = temp_state;
end