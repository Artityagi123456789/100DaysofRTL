`timescale 1ns / 1ps
/// Module Name: JK_FlipFlop
module JK_FlipFlop(clk_i,rst_i,j,k,Q);
input clk_i,rst_i,j,k;
output reg Q;
wire Q_t,Qbar;
assign Q_t = Q;
assign Qbar = ~Q_t;
always @(negedge clk_i)begin
    if(rst_i == 1)begin
        Q <= 0;
    end
 else begin

        case({j,k})
            2'b00: Q <= Q_t;
            2'b01: Q <= 0;
            2'b10: Q <= 1;
            2'b11: Q <= Qbar;
         endcase      
  end
end
endmodule  
   
