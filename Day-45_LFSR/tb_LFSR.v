`timescale 1ns / 1ps
// Module Name: tb_LFSR
module tb_LFSR;
reg clk,reset;
wire [3:0] seq_out;

LFSR  dut(clk,reset,seq_out);

always #5 clk = ~clk;

initial begin
clk = 0;
reset = 1;
#15;
reset = 0;
end
initial begin
$monitor("\t clk = %b seq_out = %d",clk, seq_out);
#100 $finish;
end
endmodule
