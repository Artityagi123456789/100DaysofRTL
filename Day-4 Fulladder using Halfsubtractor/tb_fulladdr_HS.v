`timescale 1ns / 1ps
// Module Name: tb_fulladdr_HS
module tb_fulladdr_HS;
reg x,y,zin;
wire sum,Cout;
//wire w1,w2,w3;  internam wire
fulladdr_using_halfSub dut(x,y,zin,sum,Cout);

initial begin
repeat(10)begin
    x=$random;
    y=$random;
    zin = $random;
    #50;
      $display("x=%0d,y=%0d,Zin=%0d,sum=%0d,Cout=%0d",x,y,zin,sum,Cout);
     end
end      
endmodule
