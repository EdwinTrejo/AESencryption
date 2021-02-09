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
module serial_device(
    input wire BTNC,
    input wire BTNU,
    input wire clk,
    input wire UART_TXD_IN,
    output wire UART_RXD_OUT,
    output wire [6:0] SSD,
    output wire [7:0] AN
);
    
    wire BTNC_D;
    wire BTNU_D;
    
    //  button debouncer    
    debounce debounce_BTNC_uut(.clk(clk), .data_in(BTNC), .data_out(BTNC_D));
    debounce debounce_BTNU_uut(.clk(clk), .data_in(BTNU), .data_out(BTNU_D));
    
    reg rst = 1'b0;
    reg [31:0] send_data;
    wire [31:0] received_data;
    reg [31:0] received_data_register;
    wire received, is_receiving, is_transmitting, recv_error;

    uart uart_uut(  .clk(clk), .rst(rst), .rx(UART_TXD_IN), .tx(UART_RXD_OUT), .transmit(BTNC_D), 
                    .tx_byte(send_data), .received(received), .rx_byte(received_data), 
                    .is_receiving(is_receiving), .is_transmitting(is_transmitting), 
                    .recv_error(recv_error));
                    
    //suppress the reset        
    always @(posedge clk) rst = 1'b0;
   
    //see whats inside
    ssd ssd_uut(.clk(clk), .data(received_data), .SSD(SSD), .AN(AN));
    
    always @(clk) begin
        if (BTNU_D) begin
            send_data <= received_data_register;
            rst <= 1'b1;
        end
        if (received) begin
            received_data_register <= received_data;
        end
    end
       
endmodule
