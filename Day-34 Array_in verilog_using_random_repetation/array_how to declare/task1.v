`timescale 1ns/1ps

module top;

integer i;
reg arr[19:0];

initial begin
    for(i=0;i<=19;i=i+1) begin
            arr[i]=$random;
    end
      for(i=0;i<=19;i=i+1) begin
         	$display("array[%0d]=%b",i,arr[i]);
     end
 end

endmodule

