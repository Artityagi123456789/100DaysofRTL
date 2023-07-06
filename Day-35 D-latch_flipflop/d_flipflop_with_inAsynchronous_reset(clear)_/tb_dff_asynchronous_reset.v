`timescale 1ns / 1ps
// Module Name: tb_dff_asynchronous_reset

module tb_dff_asynchronous_reset;
reg resetn, clk, d_in;
wire q;
wire qbar;

dff_asynchronous_reset dut(.resetn(resetn), .clk(clk), .d_in(d_in), .q(q), .qbar(qbar));

initial begin
    clk <= 0;
forever #10 clk = ~clk;
end

initial begin
d_in = 0; resetn = 0;
#25 resetn = 1;
forever #20 d_in = ~d_in;
end

initial begin
$monitor("time=%g,resetn=%b,clk=%b,d_in=%b,q=%b,qbar=%b",$time,resetn,clk,d_in,q,qbar);
#200
$finish;
end
endmodule

