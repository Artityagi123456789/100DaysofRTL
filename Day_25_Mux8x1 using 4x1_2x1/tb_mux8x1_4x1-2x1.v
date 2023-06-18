`timescale 1ns / 1ps

module tb_mux8x1_4x1_2x1;
reg i0,i1,i2,i3,i4,i5,i6,i7;
reg sel0,sel1,sel2;
wire y;
mux8x1_4x1_2x1 dut(i0,i1,i2,i3,i4,i5,i6,i7,sel0,sel1,sel2,y);

initial begin
{i0,i1,i2,i3,i4,i5,i6,i7,sel0,sel1,sel2} = 0;
#5;
{i0,i1,i2,i3,i4,i5,i6,i7} = 8'hcc;
#50;

{i0,i1,i2,i3,i4,i5,i6,i7} = 8'h33;
#50;


{i0,i1,i2,i3,i4,i5,i6,i7} = 8'h56;
#50;

end



always #5 sel2 = ~sel2;
always #10 sel1 = ~sel1;
always #20 sel0 = ~sel0;

endmodule





