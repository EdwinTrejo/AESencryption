function [state_out] = addKey(state, key)
    % the whole state and the whole key will need to be passed
    % matlab does not support pointers without creating libraries,
    % which may not convert properly
    
    temp_state = uint8(zeros(1,16));
    for i = 1:16
		temp_state(i) = bitxor(state(i), key(i));
    end
    state_out = uint8(temp_state);
end