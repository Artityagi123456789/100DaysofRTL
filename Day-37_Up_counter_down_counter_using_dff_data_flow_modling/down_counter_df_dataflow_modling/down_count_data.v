`timescale 1ns / 1ps
// Module Name: down_count_data
module down_counter(clk,rst,count);
input clk,rst;
output [2:0]count;
wire p0,p1,p2;
wire d2,d1,d0;

assign p0 = ~count[2] & ~count[1] & ~count[0];
assign p1 = count[2] & count[1];
assign p2 = count[2] & count[0];

assign d2 = p0 | p1 | p2;
assign d1 = count[0]~^count[1];
assign d0 = ~count[0];

Dff u1(clk,rst,d2,count[2]);
Dff u2(clk,rst,d1,count[1]);
Dff u3(clk,rst,d0,count[0]);

endmodule