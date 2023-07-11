`timescale 1ns / 1ps
// Module Name: dff_data
module Dff(clk,rst,d,q);
input clk,rst,d;
output reg q;

always@(negedge clk)begin
    if(rst==1)begin
	  q=0;
	end
	else begin
	  q = d;
	end
end
endmodule