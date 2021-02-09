`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2020 09:50:57 PM
// Design Name: 
// Module Name: ssd
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


module ssd(clk, data, SSD, AN);
    //literally count up and then 0 to go through all LEDS and then store the right information in them
	input  [127:0] data;
    input clk;
    output reg [6:0] SSD;
    output reg [7:0] AN;

    wire [2:0] internal_clock;
    reg [4:0] digit;
    reg [19:0] divide_clock;

    assign internal_clock = divide_clock[19:17];

always @(posedge clk) begin
    digit[4] <= 1'b0;
	case(internal_clock)
        0: begin
            AN <= 8'b11111110;
            digit[3:0] <= data[127:123];
        end
        1: begin
            AN <= 8'b11111101;
            digit[3:0] <= data[122:119];
        end
        2: begin
            AN <= 8'b11111011;
            digit[3:0] <= data[118:115];
        end
        3: begin
            AN <= 8'b11110111;
            digit[3:0] <= data[114:111];
        end
        4: begin
            AN <= 8'b11101111;
            digit[3:0] <= data[110:107];
        end
        5: begin
            AN <= 8'b11011111;
            digit[3:0] <= data[106:103];
        end
        6: begin
            AN <= 8'b10111111;
            digit[3:0] <= data[102:99];
        end
        7: begin
            AN <= 8'b01111111;
            digit[3:0] <= data[98:95];
        end
	endcase
end	

//decoder or truth-table for 7SSD display values
always @(posedge clk) begin
   case(digit)
        0: begin
            SSD <= 7'b1000000;////0000
        end
        1: begin
            SSD <= 7'b1111001;////0001
        end
        2: begin
            SSD <= 7'b0100100;////0010
        end
        3: begin
            SSD <= 7'b0110000;////0011
        end
        4: begin
            SSD <= 7'b0011001;////0100
        end
        5: begin
            SSD <= 7'b0010010;////0101
        end
        6: begin
            SSD <= 7'b0000010;////0110
        end
        7: begin
            SSD <= 7'b1111000;////0111
        end
        8: begin
            SSD <= 7'b0000000;////1000
        end
        9: begin
            SSD <= 7'b0010000;////1001
        end
        'hA: begin
            SSD <= 7'b0001000;////1010
        end
        'hB: begin
            SSD <= 7'b0000011;////1011
        end
        'hC: begin
            SSD <= 7'b1000110;////1100
        end
        'hD: begin
            SSD <= 7'b0100001;////1101
        end
        'hE: begin
            SSD <= 7'b0000110;////1110
        end
        'hF: begin
            SSD <= 7'b0001110;////1111
        end
        default: begin
            SSD <= 7'b1111111; // all turned off
        end
    endcase
end

//clkdiv
always @(posedge clk) begin
    divide_clock <= divide_clock + 1;
end

endmodule