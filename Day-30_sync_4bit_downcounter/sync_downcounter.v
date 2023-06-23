`timescale 1ns / 1ps
////////////////////////////////
// Module Name: sync_downcounter
module sync_downcounter(q,clk,reset);
output [3:0] q;
input clk,reset;
reg [3:0]q = 4'b1111;
always @(posedge clk)begin
if(reset==1)
        q <= 0;
else
        q <= q-1;        
end
endmodule
