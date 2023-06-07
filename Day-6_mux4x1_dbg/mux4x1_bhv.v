//verilog code for mux4x1 using Bhaviour level modeling.
module mux4x1_b(out,i0,i1,i2,i3,s0,s1);
output reg out;
input s0,s1,i0,i1,i2,i3;

always @(*)
begin
case(sel)
    2'b: y = i0;
	2'b: y = i1;
	2'b: y = i2;
    2'b: y = i3;
	default:2'bx;
$display("i0=%b,i1=%b,i2=%b,i3=%b,s0=%b,s1=%b,out=%b" ,i0,i1,i2,i3,s0,s1,out);
endcase
end
	 

endmodule
