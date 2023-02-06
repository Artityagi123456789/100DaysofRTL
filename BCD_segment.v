`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2023 15:45:39
// Design Name: 
// Module Name: BCD_segment
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


module BCD_segment(BCD,segment);
input[3:0]BCD;
output[7:0]segment;

reg[7:0]segment;
always @(BCD)
   case(BCD)
   4'b0000: segment = 7'b1111110;
   4'b0001: segment = 7'b0110000;
   4'b0010: segment = 7'b1101101;
   4'b0011: segment = 7'b1111000;
   4'b0100: segment = 7'b0110011;
   4'b0101: segment = 7'b1011011;
   4'b0110: segment = 7'b1011111;
   4'b0111: segment = 7'b1110000;
   4'b1000: segment = 7'b1111111;
   4'b1001: segment = 7'b1111011;
   default: segment = 7'b0000000;
   endcase
   
endmodule   
   





