`timescale 1ns/1ps

module tb;
integer i,j;
//integer n=1;
initial begin
for(i=0;i<=5;i=i+1)begin
for(j=1;j<5-i;j=j+1)begin
$write("%d",j);
end
$display("");
end
end
endmodule

