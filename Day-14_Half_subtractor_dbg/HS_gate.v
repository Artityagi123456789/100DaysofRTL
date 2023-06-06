`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2023 14:16:35
// Design Name: 
// Module Name: HS_gate
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


module HS_gate(a,b,diff,borrw);
input a,b;
output diff,borrw;
wire x;

xor g1(diff,a,b);
not(x,a);
and g2(borrw,x,b);


endmodule
