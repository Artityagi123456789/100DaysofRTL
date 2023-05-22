//design a 3x1_mux using 2x1_mux using hierarchical modeling concept.

module mux3x1_2x1(i,sel,y);
input[2:0]i;
input[1:0]sel;
output y;

wire[1:0]w;

mux2x1 mux1({i[2],i[0]},sel[1],w[0]);
mux2x1 mux2({1'b0,i[1]},sel[1],w[1]);
mux2x1 mux3({w[1],w[0]},sel[0],y);
endmodule


module mux2x1(i,sel,y);

input[1:0]i;
input sel;
output y;

assign y=(~sel&i[0])|(sel&i[1]);
endmodule

