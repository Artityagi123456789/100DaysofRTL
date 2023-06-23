`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module sync_upcounter(q,clk,reset);
input clk,reset;
output[3:0]q;
reg [3:0]q = 4'b0000;

always @(posedge clk) begin
if(reset == 1)
          q <= 0;
       else
          q <= q+1;
       end
endmodule
