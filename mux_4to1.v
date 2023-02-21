`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2023 08:35:48
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1( I0, I1, I2, I3, s0, s1, out);

input wire I0, I1, I2, I3;
input wire s0, s1;
output reg out;

always @ (I0,I1,I2,I3, s0, s1)
begin

case (s0 | s1)
2'b00 : out <= I0;
2'b01 : out <= I1;
2'b10 : out <= I2;
2'b11 : out <= I3;
endcase

end

endmodule