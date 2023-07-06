`timescale 1ns / 1ps
// Module Name: dff_synchronous_reset
module dff_synchronous_reset(clk,resetn,d_in,q,qbar);
input clk,resetn,d_in;
output reg q;
output qbar;

assign qbar = ~q;

always@(posedge clk) begin
    if(!resetn)
        q <= 0;
    else 
        q <= d_in;
end          
endmodule
