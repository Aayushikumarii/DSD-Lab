`timescale 1ns/1ns
`include "q4.v"
module q4_tb();
reg [3:0]W;
reg [1:0]S;
wire f;
q4 que4(W,S,f);
initial
begin
	$dumpfile("q4_tb.vcd");
	$dumpvars(0,q4_tb);
	S=0; W=9;
	#20;
	S=1; W=9;
	#20;
	S=2; W=9;
	#20;
	S=3; W=9;
	#20;
	S=0; W=8;
	#20;
	S=1; W=8;
	#20;
	S=2; W=8;
	#20;
	S=3; W=8;
	#20;
	$display("Test complete");
	end
endmodule
