`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2020 11:57:25 AM
// Design Name: 
// Module Name: blockRam
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


module blockRam(clk, rd_enable, wr_enable, wr_addr, wr_data, rd_addr, rd_data);
        
    parameter BLOCK_DATA_SIZE = 8;
    parameter BLOCK_AMOUNT = 16;
    parameter BLOCK_BIT_WIDTH = 4;
    
    input rd_enable, wr_enable, clk;
    input [BLOCK_BIT_WIDTH-1:0] wr_addr, rd_addr;
    input [BLOCK_DATA_SIZE-1:0] wr_data;
    output reg [BLOCK_DATA_SIZE-1:0] rd_data;
    
    reg [BLOCK_DATA_SIZE-1:0] BLOCK_RAM [BLOCK_AMOUNT-1:0];
    
    always @ (posedge clk)
    begin
        if(wr_enable) begin
        //write wr_data to the location specified by wr_addr
            BLOCK_RAM[wr_addr] <= wr_data;
        end
        if (rd_enable) begin
        //read data using the rd_addr to find position and rd_data to hold outgoing data
            rd_data <= BLOCK_RAM[rd_addr];
        end
    end
endmodule