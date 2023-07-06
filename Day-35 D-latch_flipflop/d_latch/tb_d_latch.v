`timescale 1ns / 1ps

module tb_d_latch;
reg clk,d;
wire q,qbar;

d_latch dut(.clk(clk), .d(d), .q(q), .qbar(qbar));

initial 
$monitor("clk=%b,d=%b,q=%b,qbar=%b",clk,d,q,qbar);

initial begin
clk <= 0;
forever #5 clk <= ~clk;
end

initial begin
d = 0;
#10
d = 1;
#10;
$finish;
end
endmodule