`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2023 10:10:17
// Design Name: 
// Module Name: tb_comparator_4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_comparator_4bit;
reg  [3:0] a;
reg [3:0]b;

wire equal;
wire greater;
wire less;

integer i;

comp_data dut(.a(a), .b(b), .equal(equal), .greater(greater), .less(less));

initial begin
for(i=0;i<8;i=i+1)
begin
a=$random;
b=$random;
#10;
end
end

initial begin
$monitor("a=%b, b=%b, equal=%b, greater=%b, less=%b" , a,b,equal,greater,less);
#100 $finish;
end

endmodule