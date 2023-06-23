`timescale 1ns / 1ps
// Create Date: 23.06.2023 11:35:57
// Module Name: tb_sync_upcounter
module tb_sync_upcounter();
reg clk,reset;
wire [3:0]q;

sync_upcounter dut(q,clk,reset);

always #5 clk = ~clk;

initial begin
$monitor($time,"q=%b,clk=%b,reset=%b",q,clk,reset);
clk <= 0;
reset <= 1;

#5 reset <= 0;
#100 reset <= 0;
#50 reset <= 1;
end
endmodule
