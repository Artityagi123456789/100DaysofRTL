`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2023 19:37:44
// Design Name: 
// Module Name: mux8x1_data
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

module mux8x1_g(out,i,s);
output out;
input[2:0]s;
input[7:0]i,

wire s0_bar,s1_bar,s2_bar;
wire[7:0]w;

not g1(s0bar,s0);
not g2(s1bar,s1);
not g3(s2bar,s2);

and g4(w1,i0,s2bar,s1bar,s0bar);
and g5(w2,i1,s2bar,s1bar,s0);
and g6(w3,i2,s2bar,s1,s0bar);
and g7(w4,i3,s2bar,s1,s0);
and g8(w5,i4,s2,s1bar,s0bar);
and g9(w6,i5,s2,s1bar,s0);
and g10(w7,i6,s2,s1,s0bar);
and g11(w8,i7,s2,s1,s0);

or  g12(out,w1,w2,w3,w4,w5,w6,w7,w8);

endmodule
