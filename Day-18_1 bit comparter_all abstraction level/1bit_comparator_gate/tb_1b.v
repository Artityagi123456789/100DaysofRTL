//test_Bench for 1bit comparator using gate model
`include "1bitc_gate.v"

module tb_1b;

reg a,b;
wire equal,greater,lower;

comp_g comp1(a,b,equal,greater,lower);


       initial begin
          $monitor("a=%b,b=%b, ___ equal = %b,greater = %b,lower = %b",a,b,equal,greater,lower);

       repeat(5) begin
	   a=$random;
	   b=$random;
	   #5;
	   end
	end
endmodule
