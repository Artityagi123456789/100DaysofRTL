`timescale 1ns / 1ps
// Module Name: Mod_N_Counter
module Mod_N_Counter(clk,reset,count);
parameter N = 6;
input clk,reset;
output reg[N-1:0]count;

always @(posedge clk)
begin
      if(reset)
            count <= 0;
      else
            if(count == N-1)
                count <= 0;
            else
                 count <= count+1;
end                           
endmodule
