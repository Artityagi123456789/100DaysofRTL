`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2023 09:00:49
// Design Name: 
// Module Name: mux_8to1_tb
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


module mux_8to1_tb();
wire out;
reg I0, I1, I2, I3, I4, I5, I6, I7, I8, S0, S1, S2;
m81 uut(.I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5), .I6(I6), .I7(I7), .S0(S0), .S1(S1), .S2(S2), .out(out)); 
initial 
begin
I0=1'b0; I1=1'b0; I2=1'b0; I3=1'b0; I4=1'b0; I5=1'b0; I6=1'b0; I7=1'b0;S0=1'b0; S1=1'b0; S2=1'b0; 
#500 $finish; 
end 
always #1 I0=~I0;
always #2 I1=~I1;
always #3 I2=~I2;
always #4 I3=~I3;
always #5 I4=~I4;
always #6 I5=~I5;
always #7 I6=~I6;
always #8 I7=~I7;
always #9 S0=~S0;
always #10 S1=~S1;
always #11 S2=~S2;
always@(I0 or I1 or I2 or I3 or I4 or I5 or I6 or I7 or S0 or S1 or S2) 
$monitor("At time = %t, Output = %d", $time, out); 
endmodule;

  
