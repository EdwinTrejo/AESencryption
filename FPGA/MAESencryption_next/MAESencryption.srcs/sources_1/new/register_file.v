`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2020 07:35:43 PM
// Design Name: 
// Module Name: register_file
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

//the place where all of the data coming in from the switches is stored
//and the output from ALU operations

//rd is for destination
//rs is for source
module register_file(clk, write_enable, address, write_data, read_data);
    parameter DATA_SIZE = 64;
    parameter ADDRESS_SIZE = 5;
    
    input write_enable, clk;
    input [2:0] address;
    input [63:0] write_data;
    output reg [63:0] read_data;
    
    reg [DATA_SIZE-1:0] BLOCK_RAM [ADDRESS_SIZE-1:0];
    
    always @ (posedge clk) begin
        if(write_enable) begin
            //write wr_data to the location specified by wr_addr
            BLOCK_RAM[address] <= write_data;
        end
    end
    
    always @ (posedge clk) begin
        read_data <= BLOCK_RAM[address];
    end
    
endmodule
