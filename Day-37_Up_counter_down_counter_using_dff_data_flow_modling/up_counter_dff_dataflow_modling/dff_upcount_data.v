`timescale 1ns / 1ps
// Module Name: dff_upcount_data
module Dff_data(clk,rst,d,q);
input clk,rst,d;
output reg q;

always@(posedge clk)begin
    if(rst==1)begin
	  q=0;
	end
	else begin
	  q = d;
	end
end
endmodule