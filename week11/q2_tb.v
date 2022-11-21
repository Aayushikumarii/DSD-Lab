`timescale 1ns/1ns
`include "q2.v"

module q2_tb();
reg Clock,reset;
wire [4:0]Q;

q2 ex2(Clock,reset,Q);
initial 
begin 
	$dumpfile("q2_tb.vcd");
	$dumpvars(0,q2_tb);
	Clock = 0;
	forever #20 Clock=~Clock;
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
