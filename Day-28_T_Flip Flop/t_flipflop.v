`timescale 1ns / 1ps
//////////////////////////////////////////////
module t_flipflop(t,clk,reset,q,qbar);
input t,clk;
input reset;
output reg q;
output qbar;

always@(posedge clk) begin
if(reset==1) begin
q <= 1'b0;  //for initial condition
end
else
case(t)
       1'b0:q <= q;
       1'b1:q <= ~q;
endcase
end
assign qbar = ~q;
endmodule