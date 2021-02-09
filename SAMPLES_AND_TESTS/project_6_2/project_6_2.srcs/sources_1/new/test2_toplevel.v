`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2021 09:59:54 PM
// Design Name: 
// Module Name: test2_toplevel
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


module test2_toplevel(
        input UART_TXD_IN,
        output UART_RXD_OUT,
        input UART_CTS,
        output UART_RTS,
        
        input clk,
        input PS2_CLK //clk_io
    );
    
    //uart pins
    parameter WIDTH = 8;
    reg [WIDTH-1:0]fifo_out_data;
    reg uart_reset, fifo_out_valid, fifo_in_ready;
    wire [WIDTH-1:0]fifo_in_data;
    wire com_rst, fifo_in_valid, fifo_out_ready, ctrl_logic_rst, error;
    
    glip_uart_toplevel glip_uart_toplevel_uut(
        .clk(clk),
        .clk_io(PS2_CLK),
        .rst(uart_reset),
        .com_rst(com_rst),
        .fifo_out_data(fifo_out_data),
        .fifo_out_valid(fifo_out_valid),
        .fifo_out_ready(fifo_out_ready),
        .fifo_in_data(fifo_in_data),
        .fifo_in_valid(fifo_in_valid),
        .fifo_in_ready(fifo_in_ready),
        .ctrl_logic_rst(ctrl_logic_rst),
        .uart_rx(UART_TXD_IN),
        .uart_tx(UART_RXD_OUT),
        .uart_cts_n(UART_CTS),
        .uart_rts_n(UART_RTS),
        .error(error)
    );
    
    reg [2:0]small_states = 3'b000;
    
    always @(posedge fifo_in_valid) begin
        if (small_states == 0) begin
            small_states <= 1;
            fifo_out_data <= fifo_in_data;
        end
    end
    
    always @(clk) begin
        fifo_in_ready <= 1;
        uart_reset <= 0;
        case (small_states)
            1: begin
                fifo_out_valid <= 1;
                small_states <= 2;
            end
            2: begin
                fifo_out_valid <= 0;
                small_states <= 0;
            end
        endcase
    end
    
//    input              clk, // Logic clock (GLIP default)
//      input              clk_io, // I/O clock
//      input              rst,
//      output             com_rst,
//      // GLIP FIFO Interface
//      input [WIDTH-1:0]  fifo_out_data,
//      input              fifo_out_valid,
//      output             fifo_out_ready,
//      output [WIDTH-1:0] fifo_in_data,
//      output             fifo_in_valid,
//      input              fifo_in_ready,
//      // GLIP Control Interface
//      output             ctrl_logic_rst,
//      // UART Interface
//      // All ports are seen from our side, i.e. from the DCE side
//      input              uart_rx,
//      output             uart_tx,
//      input              uart_cts_n, // active low
//      output             uart_rts_n, // active low
//      // Error signal if failure on the line
//      output reg         error

endmodule
