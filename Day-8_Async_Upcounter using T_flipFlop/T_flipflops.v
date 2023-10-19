`timescale 1ns / 1ps
// Module Name: T_flipflops
module T_flipflops(clk,rst,t,q,qbar);
input clk,rst,t;
output reg q;
output qbar;

always@(posedge clk or posedge rst)
begin
    if(rst)
        q <= 0;
        else begin
            if(t)
                q <= ~q;
             else
                q <= q;
         end
end         
         assign qbar = ~q;                                  
endmodule
