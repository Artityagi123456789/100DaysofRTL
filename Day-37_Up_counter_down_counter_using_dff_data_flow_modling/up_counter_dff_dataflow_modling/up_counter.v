`timescale 1ns / 1ps
// Module Name: up_counter
module up_counter(clk,rst,count);
input clk,rst;
output [2:0]count;
wire p0,p1,p2;
wire d0,d1,d2;
assign p2 = count[2] & ~count[1];
assign p1 = count[2] & ~count[1];
assign p0 = ~count[2]&count[1]&count[0];
assign d2 = p0 | p1 | p2;
assign d1 = count[1]^count[0];
assign d0 = ~count[0];

Dff_data u1(clk,rst,d2,count[2]);
Dff_data u2(clk,rst,d1,count[1]);
Dff_data u3(clk,rst,d0,count[0]);

endmodule

