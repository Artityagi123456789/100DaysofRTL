`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2023 20:17:15
// Design Name: 
// Module Name: mux8x1_mux2x1
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


module mux8x1_2x1(i,s,y);
input[7:0]i;
input[2:0]s;
output y;

wire w1,w2,w3,w4,w5,w6;

mux2x1 m1(i[1:0],s[0],w1);
mux2x1 m2(i[3:2],s[0],w2);
mux2x1 m3(i[5:4],s[0],w3);
mux2x1 m4(i[7:6],s[0],w4);
mux2x1 m5({w2,w1},s[1],w5);
mux2x1 m6({w3,w4},s[1],w6);
mux2x1 m7({w5,w6},s[2],y);

endmodule


module mux2x1(i,s,y);

input[1:0]i;
input s;
output y;

assign y=(~s&i[0])|(s&i[1]);
endmodule