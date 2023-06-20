//Q2: generae a 200 mhz with duty cycle and 2% jitter. display the freq and time period.

`timescale 1ns/1ps

module tb;
reg clk;
real freq,tp,duty,jitter;
real jitter_fact,tp_jitter;

always begin
jitter_fact = $urandom_range(100-jitter,100+jitter)/100.0;
tp_jitter = tp*jitter_fact;
clk=0;
#(tp_jitter*(100-duty)/100);
clk=1;
#(tp_jitter*(duty/100));

end

initial begin
$value$plusargs("freq=%f",freq);
$value$plusargs("duty=%f",duty);
$value$plusargs("jitter=%f",jitter);
$value$plusargs("tp=%f",tp);
tp = 1000/freq;
#200;
$finish;
end
endmodule
