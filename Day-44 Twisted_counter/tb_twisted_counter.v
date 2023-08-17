`timescale 1ns / 1ps
// Module Name: tb_twisted_counter
module tb_twisted_counter;
parameter N = 4;
reg clk,reset;
wire [N-1:0]count;

twisted_counter dut(clk,reset,count);

initial begin
clk =1'b0;
forever #5 clk = ~clk;
end

initial begin
reset =1'b1;
#15;
reset = 1'b0;
end
initial begin
$monitor("\t count = %d",count);
#100 $finish;
end
endmodule
