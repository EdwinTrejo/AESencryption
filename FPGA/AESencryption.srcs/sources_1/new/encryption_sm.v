`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2020 08:04:09 PM
// Design Name: 
// Module Name: encryption_sm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module encryption_sm();

// if they're equal, it's full, move to state 3
// need to keep track of number of things read out of FIFO
// did not have time to implement above parts of state machine

    
    parameter [3:0] step1 = 4'b0000, step2 = 4'b0001, step3 = 4'b0010, step4 = 4'b0011, step5 = 4'b0100, step6 = 4'b0101, step7 = 4'b0110, step8 = 4'b0111, step9 = 4'b1000, step10 = 4'b1001;
    
    wire [15:0] a_data;
    wire [15:0] b_data;
    
    reg [15:0] p_data;
    reg [6:0] ab_address = 0;
    reg [6:0] p_address = 0;
    reg p_wr, a_rd, b_rd;
    reg [1:0] current_state, next_state;
    
   // a_ram a_ram_uut(.clk(clk), .a_rd(a_rd), .address(ab_address), .data_out(a_data));
    //b_ram b_ram_uut(.clk(clk), .b_rd(b_rd), .address(ab_address), .data_out(b_data));
    //p_ram p_ram_uut(.clk(clk), .p_wr(p_wr), .address(p_address), .data_in(p_data));

    // add round key
    // FF? - storage in block ram
    // sub bytes
    // shift rows
    // mix columns
    // go to next state


//    reg [dataBitWidth-1:0] current_A, current_B;
//    reg [2*dataBitWidth-1:0] current_p = 32'b0;
        
    //load the values for multiplication
    initial begin
        start = 0;
        next_state = step1;
    end
    
    always @(posedge clk) begin
        if (p_wr) begin
            p_data <= 32'b0;
            p_data <= a_data * b_data;
        end
    end
        
    always @(posedge clk) 
        current_state <= next_state;
        
    always @(posedge clk) begin
        case (current_state)
            step1:  begin 
                        next_state = step2;
                    end
            step2:  begin  
                        next_state = step3;
                    end
            step3:  begin
                        next_state = step4;
                    end
            step4: begin
                        next_state = step5;
                    end
            step5:  begin
                        next_state = step6;
                    end
            step6:  begin 
                        next_state = step7;
                    end
            step7: begin
                        next_state = step8;
                    end
            step8:  begin
                        next_state = step9;
                    end
            step9:  begin 
                        next_state = step10;
                    end
            step10:  begin 
                        next_state = step1; // maybe should change this
                    end
        endcase
    end
    
    always @(posedge clk) begin
        case (current_state)
            step1:  begin
                        ab_address = 0;
                    end
            step2:  begin
                        p_wr <= 1;
                        a_rd <= 1;
                        b_rd <= 1;
                        p_address = ab_address;
                        ab_address = ab_address + 1;
                    end
            step3:  begin
                        p_wr <= 0;
                        a_rd <= 0;
                        b_rd <= 0;
                        done <= 1;
                    end
        endcase
    end


endmodule
