`timescale 1ns / 1ps
//implement a 8x1 mux using 4x1 and 2x1... 4x1 and 2x1 mux should be developed using behavioural style using scalar input.

module mux8x1_4x1_2x1(i0,i1,i2,i3,i4,i5,i6,i7,sel0,sel1,sel2,y);
input i0,i1,i2,i3,i4,i5,i6,i7;
input sel0,sel1,sel2;
output y;
wire w1,w2;
mux4x1 mux1(i0,i1,i2,i3,sel1,sel0,w1);
mux4x1 mux2(i4,i5,i6,i7,sel1,sel0,w2);
mux2x1 mux3(w1,w2,sel2,y);
endmodule

module mux4x1(i0,i1,i2,i3,sel0,sel1,y);
input i0,i1,i2,i3;
input sel0,sel1;
output reg y;
always @(i0 or i1 or i2 or i3 or sel0 or sel1)
begin
case({sel0,sel1})
    2'b00: y = i0;
	2'b01: y = i1;
	2'b10: y = i2;
    2'b11: y = i3;
endcase
end	 

endmodule
module mux2x1(i0,i1,sel,y);
input i0,i1;
input sel;
output reg y;

always @(i0 or i1 or sel) begin
if(sel)
    y=i1;
else
    y=i0;
end	
endmodule

