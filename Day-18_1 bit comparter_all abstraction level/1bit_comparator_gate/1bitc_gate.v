//1 bit_comparator using gate modeling
module comp_g(a,b,equal,greater,lower);

output equal;
output greater;
output lower;

input a;
input b;

wire w1,w2;

not g1(w1,a);
not g2(w2,b)
 
and g3(w1,a,b);
and g4(w2,a,b);
xnor g5(E,w1,w2)

endmodule

