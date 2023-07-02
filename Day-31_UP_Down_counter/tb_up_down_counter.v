`timescale 1ns / 1ps
// Module Name: tb_up_down_counter
module tb_up_down_counter();
reg clk,reset;
reg mode;  //high for up_counter and low for Down_counter
wire [3:0] count;

sync_up_down_counter dut(clk,reset,mode,count);
initial clk = 0;
always #5 clk = ~clk;

initial begin
$monitor($time,"count=%0d,clk=%b,reset=%b,mode=%b",count,clk,reset,mode);
reset = 0;

mode = 0;
#100;
mode = 1;
#200;

reset = 1;
mode = 0;
#50;
reset = 0;
end
endmodule
