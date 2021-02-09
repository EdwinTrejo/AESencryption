`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2021 03:03:42 PM
// Design Name: 
// Module Name: uart_axi_master
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
    
module uart_axi_master(
    //momentary output
    S_AXI_ACLK,
    INTERRUPT,
    held_data,
    send_button,
    LED,
    
    s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid
);
    //https://en.wikipedia.org/wiki/Advanced_eXtensible_Interface
    //input
    input wire S_AXI_ACLK;
    input wire INTERRUPT;
//    (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 in_interrupt INTERRUPT" *) 
//    (* X_INTERFACE_PARAMETER = "SENSITIVITY EDGE_RISING" *)

    input wire send_button;
    output reg [2:0] LED;
    wire debounced_send;
    reg [3:0] send_steps;
    //momentary output
    output reg [127:0] held_data;
    
    debounce debounce_BTNC_uut(.clk(S_AXI_ACLK), .data_in(send_button), .data_out(debounced_send));
    
    //page 38 of www.gstitt.ece.ufl.edu
    //RA read address
    input wire s_axi_arready; //xREADY handshake signal
    output reg [3:0] s_axi_araddr;//Address of the first beat of the burst
    output reg s_axi_arvalid;//xVALID handshake signal
    
    //WA write address
    input wire s_axi_awready; //xREADY handshake signal
    output reg [3:0] s_axi_awaddr;//Address of the first beat of the burst
    output reg s_axi_awvalid;//xVALID handshake signal
    
    //WD write data
    input wire s_axi_wready;//xREADY handshake signal
    output reg s_axi_wvalid;//xVALID handshake signal
    output reg [31:0] s_axi_wdata;//write data
    output reg [3:0] s_axi_wstrb;//Byte strobe, to indicate which bytes of the WDATA signal are valid
    
    //http://www.gstitt.ece.ufl.edu/courses/fall15/eel4720_5721/labs/refs/AXI4_specification.pdf
    //OKAY 0b00
    //EXOKAY 0b01
    //SLVERR 0b10
    //DECERR 0b11
    parameter OKAY = 2'b00;
    parameter EXOKAY = 2'b01;
    parameter SLVERR = 2'b10;
    parameter DECERR = 2'b11;
    //WR write return
    input wire [1:0] s_axi_bresp; //Write response, to specify the status of the burst
    input wire s_axi_bvalid;//xVALID handshake signal
    output reg s_axi_bready;//xREADY handshake signal
    
    //RD read data
    input wire [1:0] s_axi_rresp;//Read response, to specify the status of the current RDATA signal
    input wire s_axi_rvalid;//xVALID handshake signal
    input wire [31:0] s_axi_rdata;//read data
    output reg s_axi_rready;//xREADY handshake signal
    
    reg [4:0] receive_stream_state;
    reg [4:0] receive_byte_state;
    reg [7:0] received_byte;
    
    parameter OFF = 1'b0;
    parameter ON = 1'b1;
    
    parameter WAIT_STATE = 5'b00000;
    parameter READ_READY_STATE = 5'b00001;
    parameter READ_STATE = 5'b00010;
    parameter READ_COMPLETE_STATE = 5'b00011;
    
    initial begin
        receive_stream_state = WAIT_STATE;
        receive_byte_state = WAIT_STATE;
    end
    
    always @(posedge INTERRUPT) begin : receive_begin_transmission
        if (receive_stream_state == WAIT_STATE && receive_byte_state == WAIT_STATE) begin
            receive_stream_state <= 1;
            receive_byte_state <= WAIT_STATE;
            s_axi_araddr <= 0;
            s_axi_wstrb <= 0;
            LED[0] = ON;
            s_axi_bready <= ON;
        end
    end
    
    always @(S_AXI_ACLK) begin : receiving_transmission
        case (receive_stream_state)
            1: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 2;
                    held_data[127:119] <= received_byte;
                end
            end
            2: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 3;
                    held_data[119:112] <= received_byte;
                end
            end
            3: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 4;
                    held_data[111:103] <= received_byte;
                end
            end
            4: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 5;
                    held_data[103:96] <= received_byte;
                end
            end
            5: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 6;
                    held_data[95:88] <= received_byte;
                end
            end
            6: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 7;
                    held_data[87:80] <= received_byte;
                end
            end
            7: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 8;
                    held_data[79:72] <= received_byte;
                end
            end
            8: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 9;
                    held_data[71:64] <= received_byte;
                end
            end
            9: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 10;
                    held_data[63:56] <= received_byte;
                end
            end
            10: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 11;
                    held_data[55:48] <= received_byte;
                end
            end
            11: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 12;
                    held_data[47:40] <= received_byte;
                end
            end
            12: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 13;
                    held_data[39:32] <= received_byte;
                end
            end
            13: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 14;
                    held_data[31:24] <= received_byte;
                end
            end
            14: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 15;
                    held_data[23:16] <= received_byte;
                end
            end
            15: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 16;
                    held_data[15:8] <= received_byte;
                end
            end
            16: begin
                if (receive_byte_state <= WAIT_STATE) begin
                    receive_byte_state <= READ_READY_STATE;
                end
                if (receive_byte_state == READ_COMPLETE_STATE) begin
                    receive_byte_state <= WAIT_STATE;
                    receive_stream_state <= 17;
                    held_data[7:0] <= received_byte;
                end
            end
            17: begin
                receive_stream_state <= WAIT_STATE;
            end
        endcase
    end
    
    //READ_READY_STATE READ_STATE READ_COMPLETE_STATE
    always @(S_AXI_ACLK) begin : receiving_single_byte_transmission
        case (receive_byte_state)
            READ_READY_STATE: begin
                //set the address to be valid
                s_axi_arvalid <= ON;
                //we are ready to recevive the byte
                s_axi_rready <= ON;
                LED[0] = ON;
                if (s_axi_arready == ON) begin
                    //byte is ready
                    receive_byte_state <= READ_STATE;
                end
            end
            READ_STATE: begin
                //turn off address validation
                s_axi_arvalid <= OFF;
                LED[1] = OFF;
                //we are ready to recevive the byte
                if (s_axi_rvalid == ON || s_axi_rresp == OKAY) begin
                    s_axi_rready <= OFF;
                    received_byte <= s_axi_rdata[7:0];
                    receive_byte_state <= READ_COMPLETE_STATE;
                    LED[2] = OFF;
                end
                else if (s_axi_rresp == EXOKAY || s_axi_rresp == SLVERR || s_axi_rresp == DECERR) begin
                    LED[2] = ON;
                end
            end
            READ_COMPLETE_STATE: begin
                LED[2] = ON;
            end
        endcase
    end

    always @(posedge debounced_send) begin
        if (send_steps != 15) begin
            send_steps <= 1;
        end
        
        if (s_axi_wready) begin
            s_axi_wvalid <= ON;
        end
    end
    
    always @(S_AXI_ACLK && ~debounced_send) begin
        if (send_steps == 1) begin
            send_steps <= 2;
            s_axi_awaddr <= 4'b1111;
        end
        else if (send_steps == 2) begin
            send_steps <= 3;
        end
        else if (send_steps == 3) begin
            send_steps <= 4;
        end
        else if (send_steps == 4) begin
            send_steps <= 5;
        end
        else if (send_steps == 5) begin
            send_steps <= 6;
            s_axi_wvalid <= OFF;
        end
        else if (send_steps == 6) begin
            send_steps <= 7;
        end
        else if (send_steps == 7) begin
            send_steps <= 8;
        end
        else if (send_steps == 8) begin
            send_steps <= 0;
        end
    end
    
endmodule