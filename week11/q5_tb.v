`timescale 1ns/1ns
`include "q5.v"

module q5_tb();
reg Clock,reset,x;
wire [3:0]Q;

q5 ex5(Clock,reset,x,Q);
initial
begin
	$dumpfile("q5_tb.vcd");
	$dumpvars(0,q5_tb);
	Clock = 0;
	forever #10 Clock=~Clock;
end
initial
begin
	x=1'b0;reset=0;
	#20;
	
	x=1'b0;reset=0;
	#20;
	
	x=1'b0;reset=0;
	#20;
	
	x=1'b1;reset=1;
	#20;
	
	x=1'b1;reset=1;
	#20;
	
	x=1'b1;reset=1;
	#20;
	
	x=1'b0;reset=1;
	#20;
	
	x=1'b0;reset=1;
	#20;
	
	x=1'b0;reset=1;
	#20;
	
	$display("Test complete");
end
endmodule
