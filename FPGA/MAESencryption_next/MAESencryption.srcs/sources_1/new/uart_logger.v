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

`define SM_IDLE 1
`define SM_RX_RECEIVING 2
`define SM_RX_STOP 3
`define SM_TX_SENDING 4
`define SM_TX_STOP 5
`define SM_TX_START 6

`define EMPTY 0
`define BYTE_ONE 1
`define BYTE_TWO 2
`define BYTE_THREE 3
`define BYTE_FOUR 4
`define BYTE_FIVE 5
`define BYTE_SIX 6
`define BYTE_SEVEN 7
`define BYTE_EIGHT 8

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
module uart_logger(clk, UART_TXD_IN, UART_RXD_OUT,  tx_msg, tx_start, tx_free, rx_msg, rx_complete);

    //hardware interfaces
    input wire clk;
    input wire UART_TXD_IN;
    output wire UART_RXD_OUT;
    //software interfaces
    input wire [63:0] tx_msg;
    input wire tx_start;
    output wire tx_free;
    output wire [63:0] rx_msg;
    output wire rx_complete;

    reg [7:0] send_data;
    reg full_message_received, enable_tx;
    wire [7:0] received_data;
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
        
    reg uart_state = `OFF;
    reg [7:0] sm_state = `SM_IDLE, next_sm_state = `SM_IDLE;
    
    //RX registers
    reg [3:0] rx_count = `EMPTY;
    reg [3:0] next_rx_count = `EMPTY, rx_count_state = `EMPTY;
    reg [63:0] rx_data;
    
    //TX registers
    reg [3:0] tx_count = `BYTE_ONE;
    reg [3:0] next_tx_count = `BYTE_ONE, tx_count_state = `SM_TX_START;
    reg [63:0] tx_data;
    reg wait_for_is_transmitting = `OFF;
    
    //transmission is only available when the whole state machine is free
    assign tx_free = sm_state != `SM_IDLE ? `OFF : `ON;
    
    always @(posedge clk) begin
        sm_state = next_sm_state;
    end
        
    always @(posedge clk) begin
        case (sm_state)
            `SM_IDLE: begin
                if (tx_start == `ON && uart_state == `OFF) begin
                    //tx
                    tx_data = tx_msg;
                    //next_tx_count = `BYTE_ONE;
                    uart_state = `ON;
                    next_sm_state = `SM_TX_SENDING;
                end
                else if  (received == `ON && uart_state == `OFF) begin
                    //rx
                    uart_state = `ON;
                    rx_data[`POS_ONE] = received_data;
                    next_rx_count = `BYTE_TWO;
                    next_sm_state = `SM_RX_RECEIVING;
                end
                else begin
                    next_sm_state = `SM_IDLE;
                end
            end
            `SM_RX_RECEIVING: begin
                if (received == `ON) begin
                    case (rx_count)
                        `BYTE_TWO: begin
                            rx_data[`POS_TWO] = received_data;
                            next_rx_count = `BYTE_THREE;
                        end
                        `BYTE_THREE: begin
                            rx_data[`POS_THREE] = received_data;
                            next_rx_count = `BYTE_FOUR;
                        end
                        `BYTE_FOUR: begin
                            rx_data[`POS_FOUR] = received_data;
                            next_rx_count = `BYTE_FIVE;
                        end
                        `BYTE_FIVE: begin
                            rx_data[`POS_FIVE] = received_data;
                            next_rx_count = `BYTE_SIX;
                        end
                        `BYTE_SIX: begin
                            rx_data[`POS_SIX] = received_data;
                            next_rx_count = `BYTE_SEVEN;
                        end
                        `BYTE_SEVEN: begin
                            rx_data[`POS_SEVEN] = received_data;
                            next_rx_count = `BYTE_EIGHT;
                        end
                        `BYTE_EIGHT: begin
                            rx_data[`POS_EIGHT] = received_data;
                            next_rx_count = `EMPTY;
                            next_sm_state = `SM_RX_STOP;
                        end
                    endcase
                end
            end
            `SM_RX_STOP: begin
                next_sm_state = `SM_IDLE;
                uart_state <= `OFF;
            end
            `SM_TX_SENDING: begin
                case(tx_count_state)
                    `SM_TX_START: begin
                        enable_tx = `ON;
                        wait_for_is_transmitting = `ON;
                        
                        case (tx_count)
                            `BYTE_ONE: begin
                                send_data = tx_data[`POS_ONE];
                                next_tx_count = `BYTE_TWO;
                            end
                            `BYTE_TWO: begin
                                send_data = tx_data[`POS_TWO];
                                next_tx_count = `BYTE_THREE;
                            end
                            `BYTE_THREE: begin
                                send_data = tx_data[`POS_THREE];
                                next_tx_count = `BYTE_FOUR;
                            end
                            `BYTE_FOUR: begin
                                send_data = tx_data[`POS_FOUR];
                                next_tx_count = `BYTE_FIVE;
                            end
                            `BYTE_FIVE: begin
                                send_data = tx_data[`POS_FIVE];
                                next_tx_count = `BYTE_SIX;
                            end
                            `BYTE_SIX: begin
                                send_data = tx_data[`POS_SIX];
                                next_tx_count = `BYTE_SEVEN;
                            end
                            `BYTE_SEVEN: begin
                                send_data = tx_data[`POS_SEVEN];
                                next_tx_count = `BYTE_EIGHT;
                            end
                            `BYTE_EIGHT: begin
                                send_data = tx_data[`POS_EIGHT];
                                next_tx_count = `BYTE_ONE;
                            end
                        endcase
                    end
                    `SM_TX_SENDING: begin
                        enable_tx = `OFF;
                    end
                    `SM_TX_STOP: begin
                        wait_for_is_transmitting = `OFF;
                        if (tx_count == `BYTE_EIGHT) begin
                            next_sm_state = `SM_TX_STOP;
                        end
                    end
                endcase
            end
            `SM_TX_STOP: begin
                next_sm_state = `SM_IDLE;
                enable_tx = `OFF;
                uart_state = `OFF;
            end
        endcase
    end
    
    always @(posedge clk) begin
        //handle tx states
//        if (sm_state == `SM_IDLE && tx_count_state == `SM_TX_START) begin
//            tx_count = `BYTE_ONE;
//        end
        
        case(tx_count_state)
            `SM_TX_START: begin
                if (wait_for_is_transmitting == `ON && is_transmitting == `ON) begin
                    //wait until it knows it has to transmit
                    tx_count_state = `SM_TX_SENDING;
                end
            end
            `SM_TX_SENDING: begin
                if (wait_for_is_transmitting == `ON && is_transmitting == `OFF) begin
                    //wait until the byte has been trasnmitted
                    tx_count_state = `SM_TX_STOP;
                end
            end
            `SM_TX_STOP: begin
                tx_count_state = `SM_TX_START;
                tx_count = next_tx_count;
            end
        endcase
    end
    
    always @(posedge clk) begin
        //handle rx states
        if (~received) begin
            rx_count = next_rx_count;
        end
    end
     
//    always @(negedge received | (~received & clk))
//    begin : handle_states_rx
//        rx_count <= next_rx_count;
//        if (rx_count == EMPTY & sm_state == SM_RX_STOP) begin
//            next_sm_state <= SM_IDLE;
//        end
//    end : handle_states_rx

//    always @(posedge received | (received & clk))
//    begin : receiving_message
//        case (sm_state)
//            SM_IDLE: begin
//                if (tx_start == `OFF && uart_state == `OFF) begin
//                    uart_state <= `ON;
//                    rx_data[`POS_ONE] <= received_data;
//                    next_rx_count <= BYTE_TWO;
//                    next_sm_state <= SM_RX_RECEIVING;
//                end
//            end
//            SM_RX_RECEIVING: begin
//                case (rx_count)
//                    BYTE_TWO: begin
//                        rx_data[`POS_TWO] <= received_data;
//                        next_rx_count <= BYTE_THREE;
//                    end
//                    BYTE_THREE: begin
//                        rx_data[`POS_THREE] <= received_data;
//                        next_rx_count <= BYTE_FOUR;
//                    end
//                    BYTE_FOUR: begin
//                        rx_data[`POS_FOUR] <= received_data;
//                        next_rx_count <= BYTE_FIVE;
//                    end
//                    BYTE_FIVE: begin
//                        rx_data[`POS_FIVE] <= received_data;
//                        next_rx_count <= BYTE_SIX;
//                    end
//                    BYTE_SIX: begin
//                        rx_data[`POS_SIX] <= received_data;
//                        next_rx_count <= BYTE_SEVEN;
//                    end
//                    BYTE_SEVEN: begin
//                        rx_data[`POS_SEVEN] <= received_data;
//                        next_rx_count <= BYTE_EIGHT;
//                    end
//                    BYTE_EIGHT: begin
//                        rx_data[`POS_EIGHT] <= received_data;
//                        next_rx_count <= EMPTY;
//                        next_sm_state <= SM_RX_STOP;
//                        uart_state <= `OFF;
//                    end
//                endcase
//            end
//        endcase
//    end : receiving_message

//    //receive complete
//    assign rx_complete = (sm_state == SM_RX_STOP) ? `ON : `OFF;
            
//    //TX registers
//    reg [3:0] tx_count = EMPTY;
//    reg [3:0] next_tx_count = EMPTY;
//    reg [63:0] tx_data;
        
//    always @(negedge is_transmitting | (~is_transmitting & clk))
//    begin : handle_states_tx
//        tx_count <= next_tx_count;
//        enable_tx <= `OFF;
//    end : handle_states_tx
    
//    always @(posedge clk & ~is_transmitting)
//    begin : sending_message
//        case (sm_state)
//            SM_IDLE: begin
//                if (tx_start == `ON && uart_state == `OFF) begin
//                    tx_data <= tx_msg;
//                    next_tx_count <= BYTE_ONE;
//                    uart_state <= `ON;
//                    next_sm_state <= SM_TX_SENDING;
//                end
//            end
//            SM_TX_SENDING: begin
//            enable_tx <= `ON;
//                case (tx_count)
//                    BYTE_ONE: begin
//                        send_data <= tx_data[`POS_ONE];
//                        next_tx_count <= BYTE_TWO;
//                    end
//                    BYTE_TWO: begin
//                        send_data <= tx_data[`POS_TWO];
//                        next_tx_count <= BYTE_THREE;
//                    end
//                    BYTE_THREE: begin
//                        send_data <= tx_data[`POS_THREE];
//                        next_tx_count <= BYTE_FOUR;
//                    end
//                    BYTE_FOUR: begin
//                        send_data <= tx_data[`POS_FOUR];
//                        next_tx_count <= BYTE_FIVE;
//                    end
//                    BYTE_FIVE: begin
//                        send_data <= tx_data[`POS_FIVE];
//                        next_tx_count <= BYTE_SIX;
//                    end
//                    BYTE_SIX: begin
//                        send_data <= tx_data[`POS_SIX];
//                        next_tx_count <= BYTE_SEVEN;
//                    end
//                    BYTE_SEVEN: begin
//                        send_data <= tx_data[`POS_SEVEN];
//                        next_tx_count <= BYTE_EIGHT;
//                    end
//                    BYTE_EIGHT: begin
//                        send_data <= tx_data[`POS_EIGHT];
//                        next_tx_count <= EMPTY;
//                        uart_state <= `OFF;
//                        next_sm_state <= SM_IDLE;
//                    end
//                endcase
//            end
//        endcase
//    end : sending_message
    
endmodule