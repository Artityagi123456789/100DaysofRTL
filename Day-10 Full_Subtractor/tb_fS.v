//testbench for full subtractor...
`include "Full_subtractor.v"

module tb;
reg a,b,c;
wire diff,borrw;

full_sub dut(.a(a), .b(b), .c(c), .diff(diff), .borrw(borrw));

initial begin

a=0; b=0; c=0;

#5 a=0; b=0; c=1;
#5 a=0; b=1; c=0;
#5 a=0; b=1; c=1;
#5 a=1; b=0; c=0;
#5 a=1; b=0; c=1;
#5 a=1; b=1; c=0;
#5 a=1; b=1; c=1;


$display($time, "a=%b, b=%b, c=%b, diff=%diff, borrw=%borrw", a,b,c,diff,borrw);

end
endmodule



