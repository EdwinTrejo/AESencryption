function [state] = SubBytes(state)
    % did not mess with indexing

    for i = 1:16
		state(i) = getSBoxValue(state(i));
    end
end