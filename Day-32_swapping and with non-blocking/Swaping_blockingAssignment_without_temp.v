// swap two numbers without using tmp variables[use only operators]
module top;
reg [4:0] x = 5'b1_0010;
reg [4:0] y = 5'b0_1110;

initial begin
	$display("initial value of x = %b",x);
	$display("initial value of y = %b",y);

	x = x ^ y;
	y = x ^ y;
	x = x ^ y;

	$display("after swap using xor value of x = %b",x);
	$display("after swap using xor value of y = %b",y);
end
endmodule
