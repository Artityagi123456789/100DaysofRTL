`timescale 1ns / 1ps
module tb_ring_counters();
parameter N = 4;
reg clk,reset;
wire [N-1:0]count;

ring_counters dut(clk,reset,count);

always #5 clk = ~clk;

initial begin
clk = 0;
reset = 0;
#20 reset = 1;
#20reset = 0; 
#300 $finish;
end
endmodule
