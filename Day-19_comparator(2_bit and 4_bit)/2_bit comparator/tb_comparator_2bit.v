`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2023 09:29:37
// Design Name: 
// Module Name: tb_comparator_2bit
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


module tb_comparator_2bit;
reg [1:0]a;
reg [1:0]b;

wire  equal;
wire  greater;
wire  less;

comparator_2bit  dut(a,b,equal,greater,less);

initial begin
a=0;
b=0;
#20;

end

always begin

a = $random;
b = $random;
#100;

end

endmodule