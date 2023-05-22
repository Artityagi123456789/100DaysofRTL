//1 bit_comparator using data flow modeling
module comp_data(a,b,equal,greater,lower);

output equal;
output greater;
output lower;

input a;
input b;

assign equal = a~^b;
assign lower = (~a)&b;
assign greater = a&(~b);

endmodule

