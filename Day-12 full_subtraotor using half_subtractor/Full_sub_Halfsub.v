//Implement Full_subtractor using Half_subtractor...
// Implement Half_subtractor 

module half_sub(borrow,diff,a,b);
output borrow,diff;
input a,b;

assign diff = a^b;
assign borrow = ~a & b;

endmodule


//Implementation of full_subtractor using Half_subtractor..

module full_sub(borrow,diff,a,b,bin);
output borrow,diff;
input a,b,bin;

wire d1,b1,b2;

half_sub hs1(b1,d1,a,b);
half_sub hs2(b2,diff,bin,d1);

assign borrow = b1|b2;

endmodule
