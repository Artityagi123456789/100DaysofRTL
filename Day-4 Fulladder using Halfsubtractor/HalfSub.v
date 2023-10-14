`timescale 1ns / 1ps
// Module Name: HalfSub
module HalfSub(x,y,diff,Bout);
input x,y;
output diff,Bout;

assign diff = x^y;
assign Bout = ~x&y;
endmodule
