`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2023 15:32:07
// Design Name: 
// Module Name: mux
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


module mux(y,sel,I);
parameter N = 4;
parameter M = 2;
output reg y;
input[N-1:0]I;
input[M-1:0]sel;

always@(sel or I)
begin
     y=I[sel];
end

endmodule

 