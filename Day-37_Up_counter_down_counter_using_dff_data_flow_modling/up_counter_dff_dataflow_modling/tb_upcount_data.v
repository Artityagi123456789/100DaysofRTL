`timescale 1ns / 1ps
// Module Name: tb_upcount_data
module tb;
reg clk,rst;
wire [2:0]count;

up_counter dut(clk,rst,count);
initial begin
  clk=0;
  forever #5 clk=~clk;
end

initial begin
  rst=1;
  #50;
  rst=0;
   #500;
  $finish;
end
endmodule
