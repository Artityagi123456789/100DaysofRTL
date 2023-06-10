`include "binary_graycode.v"

module tb;
reg[3:0]b;
wire[3:0]g;

binary_gray dut(.b(b), .g(g));

initial begin
//initialize input
b=4'b0000;
 b = 4'b0001;
 b = 4'b0010;
 b = 4'b0011;
 b = 4'b0100;
 b = 4'b0101;
 b = 4'b0110;
 b = 4'b0001;
 b = 4'b0111;
 b = 4'b1000;
 b = 4'b1001;
 b = 4'b1010;
 b = 4'b1011;
 b = 4'b1100;
 b = 4'b1101;
 b = 4'b1110;
 #1;
 b = 4'b1111;
 #50;
$display("b=%b, g=%b" , b,g);
end
endmodule



