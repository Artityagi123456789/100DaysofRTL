//implement decoder_2x4 using data_flow modeling...
//syntax: assign out = expression;

module decoder_2x4(a,b,D);
input a,b;
output[3:0]D;

//assign output value by referring to logic diagram
assign D[0] = (~a)&(~b);
assign D[1] =  (~a)&(b);
assign D[2] =  (a)&(~b);
assign D[3] =  (a)&(b);

endmodule

