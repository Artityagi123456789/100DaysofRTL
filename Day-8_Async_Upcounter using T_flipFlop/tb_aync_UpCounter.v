`timescale 1ns / 1ps
// Module Name: tb_aync_UpCounter
module tb;
reg clk,rst;
reg [3:0]t;
wire[3:0] q;
wire [3:0] qbar;

async_UpCounter dut(.clk(clk),
                    .rst(rst), 
                     .t(t), 
                      .q(q), 
                       .qbar(qbar));
                       
initial begin
    clk=0;
    forever #5 clk =~clk;
end

initial begin
    $monitor("%t\count=%B(%D)",$time,q,q);
    rst=1;
    t=4'b1111;
    #5;
    rst=0;
    #160;
    $finish;
end
endmodule
                              
