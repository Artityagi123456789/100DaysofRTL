`timescale 1ns / 1ps
module ring_counters(clk,reset,count);
parameter N = 4;
input clk,reset;
output reg [N-1:0]count;

always@(posedge clk)
begin
     if(reset)
            count <= 4'b0001;
      else
            count <= {count[0],count[N-1:1]};         

end
endmodule
