`timescale 1ns/1ns
`include "Q1.v"

module Q1_tb();
reg d, res, clk;
wire q;

Q1 q1(d, res, clk, q);
initial 
begin
	$dumpfile("Q1_tb.vcd");
	$dumpvars(0,Q1_tb);
	clk = 0;
	forever #20 clk = ~clk;
end
initial begin
	
	res=1; d=0; #15;
	d=1;#15;
	d=0; res=0; #15;
	d=1;
	$display("Test Complete");
end
endmodule