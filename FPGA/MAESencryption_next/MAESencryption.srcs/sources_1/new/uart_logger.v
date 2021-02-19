`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2021 02:29:19 PM
// Design Name: 
// Module Name: uart_logger
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

`define POS_ONE 63:56
`define POS_TWO 55:48
`define POS_THREE 47:40
`define POS_FOUR 39:32
`define POS_FIVE 31:24
`define POS_SIX 23:16
`define POS_SEVEN 15:8
`define POS_EIGHT 7:0
`define ON 1'b1
`define OFF 1'b0

// WILL ONLY ALLOW NON ASYNC FUNCTIONALITY OF UART
module uart_logger(
    //hardware interfaces
    input wire clk,
    input wire UART_TXD_IN,
    output wire UART_RXD_OUT,
    //software interfaces
    input wire [63:0] tx_msg,
    input wire tx_start,
    output wire tx_free,
    output wire [63:0] rx_msg,
    output wire rx_complete
);

    reg [8:0] send_data;
    reg full_message_received, enable_tx;
    wire [8:0] received_data;
    wire received, is_transmitting;

    uart uart_uut ( 
        .clk(clk),
        .rst(),
        .rx(UART_TXD_IN), 
        .tx(UART_RXD_OUT), 
        .transmit(enable_tx), 
        .tx_byte(send_data), 
        .received(received),
        .rx_byte(received_data),
        .is_receiving(),
        .is_transmitting(is_transmitting),
        .recv_error()
    );
    
    //parameters
    parameter EMPTY = 4'h0;
    parameter BYTE_ONE = 4'h1;
    parameter BYTE_TWO = 4'h2;
    parameter BYTE_THREE = 4'h3;
    parameter BYTE_FOUR = 4'h4;
    parameter BYTE_FIVE = 4'h5;
    parameter BYTE_SIX = 4'h6;
    parameter BYTE_SEVEN = 4'h7;
    parameter BYTE_EIGHT = 4'h8;
    
    reg uart_state = `OFF;
    
    //state machine
    parameter SM_IDLE = 4'h1;
    parameter SM_RX_RECEIVING = 4'h2;
    parameter SM_RX_STOP = 4'h3;
    parameter SM_TX_SENDING = 4'h4;
    parameter SM_TX_STOP = 4'h5;
    reg [3:0] sm_state = SM_IDLE;
    reg [3:0] next_sm_state = SM_IDLE;
    
    always @(clk)
    begin : handle_states
        sm_state <= next_sm_state;
    end : handle_states    
    
    //RX registers
    parameter RX_IDLE = 0;
    parameter RX_CHECK_START = 1;
    parameter RX_READ_BITS = 2;
    parameter RX_CHECK_STOP = 3;
    parameter RX_DELAY_RESTART = 4;
    parameter RX_ERROR = 5;
    parameter RX_RECEIVED = 6;

    reg [3:0] rx_count = EMPTY;
    reg [3:0] next_rx_count = EMPTY;
    reg [63:0] rx_data;
    
    assign tx_free = (sm_state == SM_IDLE) ? 1'b1 : 1'b0;
        
    always @(negedge received | (~received & clk))
    begin : handle_states_rx
        rx_count <= next_rx_count;
        if (rx_count == EMPTY & sm_state == SM_RX_STOP) begin
            next_sm_state <= SM_IDLE;
        end
    end : handle_states_rx

    always @(posedge received | (received & clk))
    begin : receiving_message
        case (sm_state)
            SM_IDLE: begin
                if (tx_start == `OFF && uart_state == `OFF) begin
                    uart_state <= `ON;
                    rx_data[`POS_ONE] <= received_data;
                    next_rx_count <= BYTE_TWO;
                    next_sm_state <= SM_RX_RECEIVING;
                end
            end
            SM_RX_RECEIVING: begin
                case (rx_count)
                    BYTE_TWO: begin
                        rx_data[`POS_TWO] <= received_data;
                        next_rx_count <= BYTE_THREE;
                    end
                    BYTE_THREE: begin
                        rx_data[`POS_THREE] <= received_data;
                        next_rx_count <= BYTE_FOUR;
                    end
                    BYTE_FOUR: begin
                        rx_data[`POS_FOUR] <= received_data;
                        next_rx_count <= BYTE_FIVE;
                    end
                    BYTE_FIVE: begin
                        rx_data[`POS_FIVE] <= received_data;
                        next_rx_count <= BYTE_SIX;
                    end
                    BYTE_SIX: begin
                        rx_data[`POS_SIX] <= received_data;
                        next_rx_count <= BYTE_SEVEN;
                    end
                    BYTE_SEVEN: begin
                        rx_data[`POS_SEVEN] <= received_data;
                        next_rx_count <= BYTE_EIGHT;
                    end
                    BYTE_EIGHT: begin
                        rx_data[`POS_EIGHT] <= received_data;
                        next_rx_count <= EMPTY;
                        next_sm_state <= SM_RX_STOP;
                        uart_state <= `OFF;
                    end
                endcase
            end
        endcase
    end : receiving_message

    //receive complete
    assign rx_complete = (sm_state == SM_RX_STOP) ? `ON : `OFF;
            
    //TX registers
    reg [3:0] tx_count = EMPTY;
    reg [3:0] next_tx_count = EMPTY;
    reg [63:0] tx_data;
        
    always @(negedge is_transmitting | (~is_transmitting & clk))
    begin : handle_states_tx
        tx_count <= next_tx_count;
        enable_tx <= `OFF;
    end : handle_states_tx
    
    always @(posedge clk & ~is_transmitting)
    begin : sending_message
        case (sm_state)
            SM_IDLE: begin
                if (tx_start == `ON && uart_state == `OFF) begin
                    tx_data <= tx_msg;
                    next_tx_count <= BYTE_ONE;
                    uart_state <= `ON;
                    next_sm_state <= SM_TX_SENDING;
                end
            end
            SM_TX_SENDING: begin
            enable_tx <= `ON;
                case (tx_count)
                    BYTE_ONE: begin
                        send_data <= tx_data[`POS_ONE];
                        next_tx_count <= BYTE_TWO;
                    end
                    BYTE_TWO: begin
                        send_data <= tx_data[`POS_TWO];
                        next_tx_count <= BYTE_THREE;
                    end
                    BYTE_THREE: begin
                        send_data <= tx_data[`POS_THREE];
                        next_tx_count <= BYTE_FOUR;
                    end
                    BYTE_FOUR: begin
                        send_data <= tx_data[`POS_FOUR];
                        next_tx_count <= BYTE_FIVE;
                    end
                    BYTE_FIVE: begin
                        send_data <= tx_data[`POS_FIVE];
                        next_tx_count <= BYTE_SIX;
                    end
                    BYTE_SIX: begin
                        send_data <= tx_data[`POS_SIX];
                        next_tx_count <= BYTE_SEVEN;
                    end
                    BYTE_SEVEN: begin
                        send_data <= tx_data[`POS_SEVEN];
                        next_tx_count <= BYTE_EIGHT;
                    end
                    BYTE_EIGHT: begin
                        send_data <= tx_data[`POS_EIGHT];
                        next_tx_count <= EMPTY;
                        uart_state <= `OFF;
                        next_sm_state <= SM_IDLE;
                    end
                endcase
            end
        endcase
    end : sending_message
    
endmodule