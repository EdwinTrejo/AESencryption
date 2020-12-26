function [out_stream, complete] = AESEnc(in_stream, message_type, enable)
%     inputs
%     in_stream 128, message_type 8, enable 1
%     outputs
%     out_stream 128, complete 1
    
    persistent input_key = uint8(zeros(1,16));
    key = uint32(zeros(1,44));
    state = uint8(zeros(1,16));
        
%     state 0 waiting for input
%     state 1 is enable turned on
%     state 2 is key loaded
%     state 3 is state loaded
%     state 4 is run the key expansion
%     state 5 is run the encryption
%     state 6 is encryption complete
    state_machine_state = uint8(0);
    
    if (enable == LOGICAL(1) && state_machine_state == uint8(0))
        state_machine_state = uint8(1);
    end
    
    if (state_machine_state == uint8(1) && message_type == uint8('1'))
%         input is a key
        input_key(1) = bitsr1(bits11(in_stream, 0), 120);
        input_key(2) = bitsr1(bits11(in_stream, 8), 112);
        input_key(3) = bitsr1(bits11(in_stream, 16), 104);
        input_key(4) = bitsr1(bits11(in_stream, 24), 96);
        input_key(5) = bitsr1(bits11(in_stream, 32), 88);
        input_key(6) = bitsr1(bits11(in_stream, 40), 80);
        input_key(7) = bitsr1(bits11(in_stream, 48), 72);
        input_key(8) = bitsr1(bits11(in_stream, 56), 64);
        input_key(9) = bitsr1(bits11(in_stream, 64), 56);
        input_key(10) = bitsr1(bits11(in_stream, 72), 48);
        input_key(11) = bitsr1(bits11(in_stream, 80), 40);
        input_key(12) = bitsr1(bits11(in_stream, 88), 32);
        input_key(13) = bitsr1(bits11(in_stream, 96), 24);
        input_key(14) = bitsr1(bits11(in_stream, 104), 16);
        input_key(15) = bitsr1(bits11(in_stream, 112), 8);
        input_key(16) = bitsr1(bits11(in_stream, 120), 0);
        state_machine_state = uint8(2);
        key_loaded = boolean(1);
    end
    
    if (state_machine_state == uint8(2) && message_type == uint8('2'))
%         input is a state
        state(1) = bitsr1(bits11(in_stream, 0), 120);
        state(2) = bitsr1(bits11(in_stream, 8), 112);
        state(3) = bitsr1(bits11(in_stream, 16), 104);
        state(4) = bitsr1(bits11(in_stream, 24), 96);
        state(5) = bitsr1(bits11(in_stream, 32), 88);
        state(6) = bitsr1(bits11(in_stream, 40), 80);
        state(7) = bitsr1(bits11(in_stream, 48), 72);
        state(8) = bitsr1(bits11(in_stream, 56), 64);
        state(9) = bitsr1(bits11(in_stream, 64), 56);
        state(10) = bitsr1(bits11(in_stream, 72), 48);
        state(11) = bitsr1(bits11(in_stream, 80), 40);
        state(12) = bitsr1(bits11(in_stream, 88), 32);
        state(13) = bitsr1(bits11(in_stream, 96), 24);
        state(14) = bitsr1(bits11(in_stream, 104), 16);
        state(15) = bitsr1(bits11(in_stream, 112), 8);
        state(16) = bitsr1(bits11(in_stream, 120), 0);
        state_machine_state = uint8(3);
    end
    
    if (state_machine_state == uint8(3))

end
