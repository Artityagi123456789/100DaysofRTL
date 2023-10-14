`timescale 1ns / 1ps
// Module Name: ful;laddr_using_halfSub
module fulladdr_using_halfSub(x,y,zin,sum,Cout);
input x,y,zin;
output sum,Cout;
wire w1,w2,w3;
HalfSub g1(x,y,w1,w2);
HalfSub g2(w1,zin,sum,w3);
or g3(Cout,w2,w3);

endmodule
