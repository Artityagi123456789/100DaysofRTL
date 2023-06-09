`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2023 13:41:32
// Design Name: 
// Module Name: tb_decoder_4x16_2x4
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


module tb_decoder;
wire [15:0] y;
reg [3:0] a;
reg  En;

Decoder4x16  dut(y,a,En);

initial begin a=0; En=0; #15 En=1; #1000; $finish(); end

always #5  a[0] = ~a[0];
always #10 a[1] = ~a[1];
always #20 a[2] = ~a[2];
always #40 a[3] = ~a[3];

endmodule
