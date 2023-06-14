`timescale 1ns / 1ps

module tb_gray_binary;
reg [3:0]G;  
wire [3:0]bin; 

gray_binary1 dut(.G(G), .bin(bin));

initial begin
G = 4'b0000;
#1000;
$finish;
end

always #10 G[0] = ~G[0];
always #20 G[1] = ~G[1];
always #40 G[2] = ~G[2];
always #80 G[3] = ~G[3];

endmodule