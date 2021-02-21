`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2021 04:12:53 PM
// Design Name: 
// Module Name: uart_logger_tb
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

`define ON 1'b1
`define OFF 1'b0

`define TX 1'b1
`define RX 1'b0

module uart_logger_tb();
    
    reg tx_or_rx = `TX;
    reg [3:0] counter = 0;
    
    reg clk = 0, UART_TXD_IN = 1, tx_start = 0;
    wire UART_RXD_OUT, tx_free, rx_complete;
    
    reg [63:0] tx_msg;
    wire [63:0] rx_msg;
    
    uart_logger uart_logger_uut(
        .clk(clk), 
        .UART_TXD_IN(UART_TXD_IN),
        .UART_RXD_OUT(UART_RXD_OUT),
        .tx_msg(tx_msg),
        .tx_start(tx_start),
        .tx_free(tx_free),
        .rx_msg(rx_msg),
        .rx_complete(rx_complete)
    );
    
    always #0.5 clk = ~clk;
    
    initial begin
        case (tx_or_rx)
            `TX: begin
                //transmit test
                //27d8d055d6e4d64b 8df4e9aac5c7573a
                #1
                tx_msg = 64'h27d8d055d6e4d64b;
                tx_start = 1;
                #1
                tx_start = 0;
                @(posedge tx_free)
                #1
                tx_msg = 64'h8df4e9aac5c7573a;
                tx_start = 1;
                #1
                tx_start = 0;
                @(posedge tx_free)
                $finish;
            end
            `RX: begin
            end
        endcase
    end
    
    always @(posedge tx_free) begin
        counter = counter + 1;
        if (counter == 4) begin
            #50
            $finish;
        end
    end
    
endmodule
