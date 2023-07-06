`include "dff_synchronous_reset.v"

`timescale 1ns / 1ps
// Module Name: tb_dff_synchronous_reset

module tb_dff_synchronous_reset;
reg clk,resetn,d_in;
wire q;
wire qbar;

dff_synchronous_reset dut(clk,resetn,d_in,q,qbar);

//generate clock
initial begin 
$monitor("d_in=%b,resetn=%b,clk=%b,q=%b,qbar=%b",d_in,resetn,clk,q,qbar);
    clk = 0;
forever #10 clk = ~clk;
end

//testcase
initial begin
d_in = 0; resetn  = 0;   
#15 resetn = 1;
repeat(5) begin
d_in = $random;
#10;
end
end

initial begin
#100
$finish;
end
endmodule
