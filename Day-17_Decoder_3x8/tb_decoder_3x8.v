`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2023 13:56:01
// Design Name: 
// Module Name: tb_decoder_3x8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description


module tb;
reg[2:0]in;
reg En;

wire[7:0]D;

decoder_3x8 dut(.in(in), .En(En), .D(D));
initial begin 
 En=1'b1;
 #100
 in=3'b000;
 #100
 in=3'b001;
 #100
 in=3'b010;
 #100
 in=3'b011;
 #100
 in=3'b100;
 #100
 in=3'b101;
 #100
 in=3'b110;
 #100
 in=3'b111;
 #100;
 
 $monitor("in=%b, En=%b,D=%b" ,in,En,D);

end
endmodule

