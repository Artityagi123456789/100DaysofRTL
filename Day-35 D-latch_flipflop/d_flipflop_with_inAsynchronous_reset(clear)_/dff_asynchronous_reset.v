`timescale 1ns / 1ps 
// Module Name: dff_asynchronous_reset

module dff_asynchronous_reset(resetn, clk, d_in, q, qbar);
input resetn, clk, d_in;
output reg q;
output qbar;

assign qbar = ~q;

always@(negedge resetn,posedge clk) begin
    if(!resetn)
        q <= 0;
    else
        q <= d_in;
end
endmodule       
   