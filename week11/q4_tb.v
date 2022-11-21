`timescale 1ns/1ns
`include "q4.v"

module q4_tb();
reg Clock,reset;
wire [3:0]Q;

q4 ex4(Clock,reset,Q);
initial
begin
	$dumpfile("q4_tb.vcd");
	$dumpvars(0,q4_tb);
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
