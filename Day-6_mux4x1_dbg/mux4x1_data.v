module mux4x1_data(i0,i1,i2,i3,s0,s1,out);
input i0,i1,i2,i3;
input s0,s1;

output out;

assign out = (s1 ? i3: i2) : (s0 ? i1 : i0);

endmodule
