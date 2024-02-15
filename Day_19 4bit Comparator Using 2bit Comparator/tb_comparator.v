module top;
   reg [3:0]a,b;
  wire G,L,E;
  
  comp_4bit dut(a,b,G,L,E);
  
  initial begin
    $monitor("a=%0b,b=%0b,G=%0b,L=%0b,E=%0b",a,b,G,L,E);
    a=4'b1010;
    b=4'b1011;
    #5
    a=4'b1100;
    b=4'b1100;
    #100;
    $finish();
  end
  
endmodule

/*Output
        a=1010,b=1011,G=0,L=1,E=0
		 a=1100,b=1100,G=0,L=0,E=1  */
