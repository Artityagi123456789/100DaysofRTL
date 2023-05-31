module full_sub(a,b,c,diff,borrw);
input a,b,c;
output diff,borrw;

assign diff = a^b^c;
assign borrw =(~a & b)|(c&(a~^b));

endmodule

