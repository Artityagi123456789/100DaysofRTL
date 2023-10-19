`timescale 1ns / 1ps
// Module Name: async_UpCounter
module async_UpCounter(clk,rst,t,q,qbar );
input clk,rst;
input [3:0]t;
output [3:0] q;
output [3:0] qbar;

 T_flipflops t0(.clk(clk), .rst(rst), .t(t[0]), .q(q[0]), .qbar(qbar[0]));
 T_flipflops t1(.clk(qbar[0]), .rst(rst), .t(t[1]), .q(q[1]), .qbar(qbar[1]));
 T_flipflops t2(.clk(qbar[1]), .rst(rst), .t(t[2]), .q(q[2]), .qbar(qbar[2]));
 T_flipflops t3(.clk(qbar[2]), .rst(rst), .t(t[3]), .q(q[3]), .qbar(qbar[3]));
endmodule
