`timescale 1ns / 1ps
// Module Name: tb_Async_UpCounter
module tb;
reg clk_i,rst_i;
wire [2:0]count;

Async_UpCounter dut(clk_i,rst_i,count);

always #5 clk_i =~clk_i;

initial begin
    clk_i=0;
    rst_i =1;
    #15;
    rst_i =0;
 end
initial begin
#200;
$finish;
end   
endmodule
