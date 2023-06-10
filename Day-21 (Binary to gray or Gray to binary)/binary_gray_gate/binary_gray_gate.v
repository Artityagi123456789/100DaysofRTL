//verilog code for 4-bit Binary to Gray code converter using gate level modeling...

module binary_gray(b,g);
input[3:0]b;
output[3:0]g;

buf g1(b[3],g[3]);
xor g2(b[3],b[2],g[2]);
xor g3(b[2],b[1],g[1]);
xor g4(b[1],b[0],g[0]);

endmodule

