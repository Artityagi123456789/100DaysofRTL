`timescale 1ns / 1ps
// Module Name: Async_UpCounter
module Async_UpCounter(clk_i,rst_i,count);
input clk_i,rst_i;
output [2:0]count;

JK_FlipFlop j1(.clk_i(clk_i), .rst_i(rst_i), .j(1), .k(1), .Q(count[0]));
JK_FlipFlop j2(.clk_i(count[0]), .rst_i(rst_i), .j(1), .k(1), .Q(count[1]));
JK_FlipFlop j3(.clk_i(count[1]), .rst_i(rst_i), .j(1), .k(1), .Q(count[2]));

endmodule
