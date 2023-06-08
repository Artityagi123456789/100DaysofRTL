`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2023 10:26:58
// Design Name: 
// Module Name: comparator_4bit_data
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

module comp_data(a,b,equal,greater,less);

output equal;
output greater;
output less;

input [3:0] a;
input [3:0] b;
assign greater = ~(a[3] & ~b[3] | ~a[3] & b[3]) & a[2] & ~b[2] | a[3] & ~b[3];
assign equal = ~(a[2] & ~b[2] | ~a[2] & b[2]) & ~(a[3] & ~b[3] | ~a[3] & b[3]);
assign less = ~(a[3] & ~b[3] | ~a[3] & b[3]) & ~a[2] & b[2] | ~a[3] & b[3];
endmodule