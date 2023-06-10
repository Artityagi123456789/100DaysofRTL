`include "gray_binary_bhav.v"
module tb;
reg[3:0]b;
wire[3:0]g;

binary_gray dut(b,g);

initial begin
repeat(8) begin
{b}=$random;

$display("b=%b, g=%b", b,g);
#1;
end
end
endmodule
