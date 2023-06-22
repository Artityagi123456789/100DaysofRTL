`timescale 1ns / 1ps

module d_flipflop(q,qbar,d,clk);
output reg q;
output reg qbar;
input d,clk;

always @(posedge clk)
begin
q <= d; 
qbar <= ~d;
end
endmodule
