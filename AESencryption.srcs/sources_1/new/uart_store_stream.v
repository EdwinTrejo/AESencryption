`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2021 08:55:21 PM
// Design Name: 
// Module Name: uart_store_stream
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


module uart_store_stream(clk);
    
    input clk; // this may need to be generated here, or be a slower clock than othe things are running on

    // is this going to mess up the buttons?
    uart uart_uut (.clk(clk), .rst(rsst), .rx(rx), .tx(tx), .transmit(transmit), .tx_byte(tx_byte), .received(received), .is_receiving(is_receiving), .is_transmitting(is_transmitting), .recv_error(recv_error), .LED(LED));
    wire clk, rst, rx; // Incoming serial line
    
    wire transmit; // Signal to transmit
    wire [7:0] tx_byte; // Byte to transmit
    wire tx, received;
    wire [7:0] rx_byte; // Byte received
    wire is_receiving, is_transmitting, recv_error; 
    reg [1:0] LED;
    reg [63:0] out_stream;
    
    reg [7:0] signal_block [0:7]; // want 64 bits, 8 blocks of 8
    reg [15:0] state_block [0:7];
    reg [15:0] key_block [0:7];
    
    reg begin_storing;
    reg [3:0] start_sig_count;
    reg [7:0] count;
    reg [1:0] state;
    // get 320 bits before calling EncDecController
    
    parameter start_signal = 8'b11111111;
    parameter end_start_sig = 4'b1000;
    parameter store_signal = 3'b000;
    parameter store_state =3'b001;
    parameter store_key = 3'b010;
    parameter output_data = 3'b011;
    parameter wait_state = 3'b100;
    parameter transmission_over = 4'b1111; // fix this number later
    
    initial begin
        begin_storing = 0;
        start_sig_count = 0;
    end
    
    // first 8 bits - 11111111 (use as start signal)
    // get start signal 8 times
    always @(posedge clk) begin
        if (rx_byte == start_signal && is_receiving) begin
            //begin storing transmission
            start_sig_count <= start_sig_count + 1;
        end else begin
            start_sig_count <= 0;
        end
        // at end of start signal
        if (start_sig_count == end_start_sig) begin
            begin_storing <= 1;
            state <= store_signal;
            count <= 0;
        end
    end
    
    // next 64 bits are signal
    always @(posedge clk) begin
        // store signal
        if (state == store_signal && is_receiving) begin
            // msb on left
            // first number received - 128, last number - 0
            signal_block[7 - (count)] <= rx_byte;
            count = count + 1;
        end
        // prepare for storing state state
        if (count == 8) begin
            state <= store_state;
            count <= 0;
        end
    end
    
    // next 128 bits are state
    always @(posedge clk) begin
        // store state
        if (state == store_state && is_receiving) begin
            // msb on left
            // first number received - 128, last number - 0
            state_block[15 - (count)] <= rx_byte;
            count = count + 1;
        end
        // prepare for storing key state
        if (count == 16) begin
            state <= store_key;
            count <= 0;
        end
    end
    
    // last 128 bits are key
    always @(posedge clk) begin
        // store key
        if (state == store_key && is_receiving) begin
            // msb on left
            // first number received - 128, last number - 0
            key_block[15 - (count)] <= rx_byte;
            count = count + 1;
        end
        // prepare for storing key state
        if (count == 16) begin
            state <= output_data;
            count <= 0;
        end
    end

    //send enable to controller
    always @(posedge clk) begin
        if (state == output_data) begin
           // enable <= 1;
           count <= count + 1;
        end
        else if (count == transmission_over) begin
            state <= wait_state;
        end
    end

    
    // what is actually being sent to EncDecController
    // get everything before you send it
    // essentially another state machine
    // system clock, but data is not timed perfectly
    // uart ready signal - wait for both
    // ignore anything after encryption started
    
    
    // should this all just be one big block of memory with an enable port in the controller
    EncDecController EndDecController_uut(.in_stream(), .out_stream(out_stream), .clk(clk));

endmodule
