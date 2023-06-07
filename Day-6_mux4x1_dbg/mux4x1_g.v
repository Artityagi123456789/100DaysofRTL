//verilog code for mux4x1 using gate/structure level modeling.
module mux4x1_g(out,i0,i1,i2,i3,s0,s1);
output out;
input i0,i1,i2,i3,s0,s1;

wire s0bar,s1bar,w0,w1,w2,w3;

not g1(s0bar,s0),(s1bar,s1);
and g2(w1,i0,s0bar,s1bar),(w2,i1,s0bar,s1),(w3,i2,s0,sbar),(w4,i3,s0,s1);
or  g3(out,w1,w2,w3,w4);

endmodule
