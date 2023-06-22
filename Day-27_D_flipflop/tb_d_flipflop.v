`timescale 1ns / 1ps

module tb_dff();
wire q;
wire qbar;
reg d,clk;

d_flipflop dut(.q(q), .qbar(qbar), .d(d), .clk(clk));
initial begin
clk=1'b0;
d=1'b0;

end

always #5 clk=~clk;
always #10 d=~d;

endmodule 
