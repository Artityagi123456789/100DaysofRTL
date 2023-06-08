//1 bit_comparator using Bhaviour modeling

module comp_bhv(a,b,equal,greater,lower);
input a;
input b;

output reg equal;
output reg greater;
output reg lower;

always@(*) begin
equal=0; greater=0; lower=0;
     if(a>b)
	 begin
	     greater = 1'b1;
	 end 

	 else if(a<b)
	 begin
	     lower = 1'b1;
	 end
	
	 else(a=b);
	     equal = 1'b1;
end		 
	     
endmodule

int a,b;
int l=0,e=0,g=0;
if(a>b)
{
  g=1;
//l=0;
//e=0;
}
else if (a<b)
{
   l=1;
//g=0;
//e=0;
}
else
{
   e=1;
  // g=0;
  // l=0;
}
}



