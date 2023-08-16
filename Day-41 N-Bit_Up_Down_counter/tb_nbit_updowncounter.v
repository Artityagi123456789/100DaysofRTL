`timescale 1ns / 1ps
// Module Name: tb_nbit_updowncounter
module tb_nbit_updowncounter;
 parameter N = 4;  
    // Inputs
    reg clk;
    reg reset;
    reg UpOrDown;

    // Outputs
    wire [N-1:0] count;

    // Instantiate the Unit Under Test (UUT)
    N_Bit_updowncounter uut (
        .clk(clk), 
        .reset(reset), 
        .UpOrDown(UpOrDown), 
        .count(count)
    );

//Generate clock with 10 ns clk period.
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        // Apply Inputs
        reset = 1;
        #50 reset = 0;
        UpOrDown = 0;
        #300;
        UpOrDown = 1;
        #300;
        reset = 1;
        UpOrDown = 0;
        #100;
        reset = 0;  
    end
initial begin
$monitor("\t\t UpOrDown =%b, Count = %b",UpOrDown,count);
#800 $finish;
end    
endmodule