//test_Bench for 1bit comparator using bhvaviour model

`include "comp_bhv.v"

module tb_1bhv;

reg a,b;
wire equal,greater,lower;

comp_bhv comp_1(a,b,equal,greater,lower);

initial begin
       repeat(5) begin
	   a=$random;
	   b=$random;
	   #5;
	   end
$display("a=%b,b=%b, ___ equal = %b,greater = %b,lower = %b",
a,b,equal,greater,lower);

end
endmodule
