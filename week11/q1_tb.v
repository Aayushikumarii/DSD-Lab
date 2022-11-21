`timescale 1ns/1ns
`include "q1.v"

module q1_tb();
reg Clock,reset;
wire [3:0]Q;

q1 ex1(Clock,reset,Q);
initial
begin
	$dumpfile("q1_tb.vcd");
	$dumpvars(0,q1_tb);
	Clock = 0;
	forever #10 Clock=~Clock;
end
initial
begin
	reset=0;
	#20;
	reset=0;
	#20;
	reset=0;
	#20;
	reset=1;
	#20;
	reset=1;
	#20;
	
	$display("Test complete");
end
endmodule
