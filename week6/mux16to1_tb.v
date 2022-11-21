`timescale 1ns/1ns
`include "mux16to1.v"
module mux16to1_tb();
reg [15:0]w;
reg [3:0]s;
wire f;
mux16to1 ques2(w,s,f);
initial
begin
	$dumpfile("mux16to1_tb.vcd");
	$dumpvars(0,mux16to1_tb);
	s=0;w=25;
	#20;
	s=1;w=25;
	#20;
	s=2;w=25;
	#20;
	s=3;w=25;
	#20;
	s=4;w=25;
	#20;
	s=5;w=25;
	#20;
	s=6;w=25;
	#20;
	s=7;w=25;
	#20;
	s=8;w=25;
	#20;
	s=9;w=25;
	#20;
	s=10;w=25;
	#20;
	s=11;w=25;
	#20;
	s=12;w=25;
	#20;
	s=13;w=25;
	#20;
	s=14;w=25;
	#20;
	s=15;w=25;
	#20;
	$display("test complete");
	end
endmodule
