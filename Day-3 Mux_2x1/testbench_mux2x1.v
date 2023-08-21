`timescale 1ns / 1ps
// Module Name: testbench_mux2x1
module tb;
    reg sel,i0,i1;
    wire out;
    integer i;
  mux_2x1 dut(sel,i0,i1,out);
  initial begin
    for(i=0;i<8;i=i+1)
      begin
        {sel,i0,i1} = i;
        #10;
      end
  end
endmodule
