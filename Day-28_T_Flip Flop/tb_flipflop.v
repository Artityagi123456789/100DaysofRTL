`timescale 1ns / 1ps
module tb_flipflop;

        reg t,clk,reset;
        wire q,qbar;
        
        t_flipflop dut(.t(t),.clk(clk),.reset(reset),.q(q),.qbar(qbar));
        
        initial 
        begin
        t = 0;
        clk = 0;
        reset = 1;
        end
        
        always #10 clk = ~clk;
        always #25 t = ~t;
        
               
endmodule
