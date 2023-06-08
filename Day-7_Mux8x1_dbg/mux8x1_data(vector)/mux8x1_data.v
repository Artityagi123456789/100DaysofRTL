//mux_8x1 uing dataflow modeling...

module mux8x1_d(i,s,out);
input[7:0]i;
input[2:0]s;
output out;

//logic equation..
assign out = (~s2&~s1~s0&i0)|(~s2&~s1&s0&i1)|(~s2&s1&~s0&i2)|(~s2&s1&s0&i3)|(s2&~s1&~s0&i4)|(s2&~s1&s0&i5)|(s2&s1&~s0&i6)|(s2&s1&s0&i7);

endmodule

