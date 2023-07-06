`timescale 1ns / 1ps

module d_latch(clk,d,q,qbar);
input clk,d;
output reg q;
output qbar;

assign qbar = ~q;
always @(clk,d)begin
    if(clk)begin
        q <= d;
        end
end
endmodule
