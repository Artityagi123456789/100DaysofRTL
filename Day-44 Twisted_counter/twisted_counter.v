`timescale 1ns / 1ps
// Module Name: twisted_counter
module twisted_counter(clk,reset,count);
parameter N = 4;
input clk,reset;
output reg[N-1:0]count;

always@(posedge clk)
begin
       if(reset)
                count <= 0;
        else
                count <= {~count[0],count[N-1:1]};
end                                        
endmodule
