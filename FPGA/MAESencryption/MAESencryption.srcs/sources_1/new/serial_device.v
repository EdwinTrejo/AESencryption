`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2020 06:52:40 PM
// Design Name: 
// Module Name: serial_device
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

//This is going to be the "top" device for handling all local and internal connections
//BTNC TX
//BTNU RX

module serial_device(
    input BTNC,
    input BTNU,
    input clk,
    input UART_TXD_IN,
    output wire UART_RXD_OUT,
    output wire [1:0] LED,
    output wire [6:0] SSD,
    output wire [7:0] AN
);
    
    wire BTNC_D, BTNU_D;
    reg clk_slow_maybe;
    
    //  button debouncer    
    debounce debounce_BTNC_uut(.clk(clk), .data_in(BTNC), .data_out(BTNC_D));
    debounce debounce_BTNU_uut(.clk(clk), .data_in(BTNU), .data_out(BTNC_U));
    
    
//    module uart(
//    input clk, // The master clock for this module
//    input rst, // Synchronous reset.
//    input rx, // Incoming serial line
//    output tx, // Outgoing serial line
//    input transmit, // Signal to transmit
//    input [7:0] tx_byte, // Byte to transmit
//    output received, // Indicated that a byte has been received.
//    output [7:0] rx_byte, // Byte received
//    output is_receiving, // Low when receive line is idle.
//    output is_transmitting, // Low when transmit line is idle.
//    output recv_error // Indicates error in receiving packet.
//    );
    reg rst = 1'b0;
    reg [7:0] send_data;
    wire [7:0] received_data;
    wire received, is_receiving, is_transmitting, recv_error;
    uart uart_uut(  .clk(clk), .rst(rst), .rx(UART_TXD_IN), .tx(UART_RXD_OUT), .transmit(BTNC_D), 
                    .tx_byte(send_data), .received(received), .rx_byte(received_data), 
                    .is_receiving(is_receiving), .is_transmitting(is_transmitting), 
                    .recv_error(recv_error), .LED(LED)   );
                    
    //suppress the reset        
    always @(posedge clk) rst = 1'b0;
   
   //see whats inside
    //rd_data is the incoming
    //rs_data is outgoing
    ssd ssd_uut(.clk(clk), .rd_data(received_data), .rs_data(send_data), .SSD(SSD), .AN(AN));
     
    //  clk the clk
    //  code is 7 bit incoming connection
    //  return_sequence is 7 bit output
    reg [6:0] code;
    wire [6:0] return_sequence;
    hamming_check hamming_check_uut(.clk(clk), .code(code), .return_sequence(return_sequence));
    
    always @(posedge clk) begin
        if (received /*&& ~recv_error*/) begin
            code = received_data[7:1];
        end
        send_data = {return_sequence, 1'b0};
    end
       
endmodule
