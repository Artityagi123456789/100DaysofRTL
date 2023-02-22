`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2023 07:53:01
// Design Name: 
// Module Name: mux_8to1
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

module m81(out, I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2);
input wire I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2;
output reg out;
always@(*)
begin
case(S0 & S1 & S2)
3'b000: out=I0;
3'b001: out=I1;
3'b010: out=I2;
3'b011: out=I3;
3'b100: out=I4;
3'b101: out=I5;
3'b110: out=I6;
3'b111: out=I7;
default: out=1'b0;
endcase
end

endmodule