//Design a 4BIT Comparator using 2BIT Comparator
// verilog code for 2 bit comparator 

module comp_2bit(a,b,G,L,E);
  input [1:0]a,b;
  output G,L,E;
  
  assign G = (a>b) ? 1:0;
  assign L = (a<b) ? 1:0;
  assign E = (a==b) ? 1:0;
endmodule

//Verilog code for 4 bit comparator using 2 bit comparator
module comp_4bit(a,b,G,L,E);
  input [3:0]a,b;
  output G,L,E;
  wire G1,G2,L1,L2,E1,E2;
  wire w1,w2,w3;
  
  comp_2bit dut1(a[3:2],b[3:2],G1,L1,E1);
  comp_2bit dut2(a[1:0],b[1:0],G2,L2,E2);
  
  assign G = (E1&G2)|G1;
  assign L = (E1&L2)|L1;
  assign E = (E1&E2);
  

endmodule
