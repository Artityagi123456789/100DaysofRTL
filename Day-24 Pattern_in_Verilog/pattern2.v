`timescale 1ns/1ps

module tb;
integer i,j;
initial begin
for(i=1; i<6; i=i+1) begin
for(j=0; j<=i; j=j+1) begin
$write("%d",j+1);
end
$display("");
end
end
endmodule


