`timescale 1ns/1ns
`include "q1.v"
module q1_tb();
reg [4:0]a,b;
wire agb,alb,aeb;

q1 ques1(a,b,agb,alb,aeb);
initial
begin
	$dumpfile("q1_tb.vcd");
	$dumpvars(0,q1_tb);
	a=0; b=1; 
	#20;
	a=5; b=3; 
	#20;
	a=1; b=1; 
	#20;
	$display("Test complete");
	end
endmodule
	
