`timescale 1ns/1ns
`include "q3.v"

module q3_tb();
reg Clock,reset;
wire [3:0]Q;

q3 ex3(Clock,reset,Q);
initial
begin
	$dumpfile("q3_tb.vcd");
	$dumpvars(0,q3_tb);
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
