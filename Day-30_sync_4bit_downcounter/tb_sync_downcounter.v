`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: tb_sync_downcounter
module tb_sync_downcounter();
wire [3:0] q;
reg clk,reset;

sync_downcounter dut(q,clk,reset);

always #5 clk = ~clk;

initial begin
$monitor($time,"q=%b,clk=%b,reset=%b",q,clk,reset);
clk = 0;
reset = 1;

#5 reset <= 0;
#100 reset <= 0;
#50 reset <= 1;

end 
endmodule