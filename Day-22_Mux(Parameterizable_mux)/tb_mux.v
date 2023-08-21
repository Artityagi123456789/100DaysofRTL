`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2023 15:35:07
// Design Name: 
// Module Name: tb_mux
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


module tb_mux;

parameter N=4;
parameter M=2;
wire y;
reg[N-1:0]I;
reg[M-1:0]sel;

mux #(.N(N) , .M(M))dut(.y(y), .I(I), .sel(sel));

initial begin sel=0; I=0; #3000 $finish; end

always #50 sel[0] = ~sel[0];
always #100 sel[1] = ~sel[1];

always #200 I[0] = ~I[0];
always #400 I[1] = ~I[1];
always #800 I[2] = ~I[2];
always #1000 I[3] = ~I[3];


endmodule
