`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2023 09:58:42
// Design Name: 
// Module Name: mux_4to1_tb
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


module mux_4to1_tb();
reg  I0;
reg  I1;
reg  I2;
reg  I3;
reg s0, s1;
wire out;

mux_4to1 uut(.out(out), .I0(I0), .I1(I1), .I2(I2), .I3(I3), .s0(s0), .s1(s1));
 initial
 begin

 I0=1'b0; I1=1'b0; I2=1'b0; I3=1'b0;
 s0=1'b0; s1=1'b0;
 #500 $finish;

end

always #40 I0=~I0;
always #20 I1=~I1;
always #10 I2=~I2;
always #5 I3=~I3;
always #80 s0=~s0;
always #160 s1=~s1;

always@(I0,I1,I2,I3, s0 , s1) 
$monitor("At time = %t, Output = %d", $time, out);

endmodule;

    
