                    MixColumns13 <= (((block_state[12] ^ times_two_B) ^ (block_state[13] ^ (block_state[13] ^ times_two_B))) ^ (block_state[14] ^ block_state[3]));
                    MixColumns14 <= ((block_state[12] ^ (block_state[13] ^ times_two_B)) ^ ((block_state[14] ^ (block_state[14] ^ times_two_B)) ^ block_state[3]));
                    MixColumns15 <= ((block_state[12] ^ block_state[13]) ^ ((block_state[14] ^ times_two_B) ^ (block_state[3] ^ (block_state[3] ^ times_two_B))));
                    MixColumns16 <= (((block_state[12] ^ (block_state[12] ^ times_two_B)) ^ block_state[13]) ^ (block_state[14] ^ (block_state[3] ^ times_two_B)));