`timescale 1ns/1ns
`include "q2b.v"

module q2b_tb();
reg w1,w2,w3;
wire f;

q2b ex(w1,w2,w3,f);
initial
begin
	$dumpfile("q2b_tb.vcd");
	$dumpvars(0,q2b_tb);
	w1=1'b0;w2=1'b0;w3=1'b0;
	#20;
	
	w1=1'b0;w2=1'b0;w3=1'b1;
	#20;
	
	w1=1'b0;w2=1'b1;w3=1'b0;
	#20;
	
	w1=1'b0;w2=1'b1;w3=1'b1;
	#20;
	
	w1=1'b1;w2=1'b0;w3=1'b0;
	#20;
	
	w1=1'b1;w2=1'b0;w3=1'b1;
	#20;
	
	w1=1'b1;w2=1'b1;w3=1'b0;
	#20;
	
	w1=1'b1;w2=1'b1;w3=1'b1;
	#20;
	
	$display("Test complete");
	
end
endmodule
	


