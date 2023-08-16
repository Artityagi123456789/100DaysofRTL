`timescale 1ns / 1ps
// Module Name: tb_Mod_n_counter
module tb_Mod_n_counter;
parameter N = 6;
reg clk,reset;
wire [N-1:0]count;

Mod_N_Counter dut(clk,reset,count);
initial begin
clk =0;
forever #10 clk = ~clk;
end
initial begin
reset = 1;
#15;
reset = 0;
end

initial begin
$monitor("\t count= %b",count);
#200 $finish;
end
endmodule
