`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2023 16:17:18
// Design Name: 
// Module Name: BCD_Segment_tb
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


module BCD_Segment_tb();
reg[3:0] BCD;
integer i;

wire[7:0] segment;

BCD_segment uut(.BCD(BCD), .segment(segment));
 
 
 initial
 begin
 for(i=0; i<16; i=i+1); 
  
 begin
 BCD=i;
 
 #10;
 end
 end
      
initial
begin
$monitor("{BCD}=%b, {segment}=%b",{BCD},{segment});
$finish;
endmodule
