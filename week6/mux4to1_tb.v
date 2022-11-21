`timescale 1ns/1ns
`include "mux4to1.v"
module mux4to1_tb();
reg [3:0]w;
reg [1:0]s;
wire f;
mux4to1 ques1(w,s,f);
initial
begin
	$dumpfile("mux4to1_tb.vcd");
	$dumpvars(0,mux4to1_tb);
	s=0;w=8;
	#20;
	s=1;w=8;
	#20;
	s=2;w=8;
	#20;
	s=3;w=8;
	#20;
	s=0;w=2;
	#20;
	s=1;w=2;
	#20;
	s=2;w=2;
	#20;
	s=3;w=2;
	#20;
	$display("test complete");
	end
endmodule
