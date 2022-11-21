`timescale 1ns/1ns
`include "Q2.v"
module Q2_tb();
reg t, clk, res;
wire q;
Q2 q2(t, clk, res, q);

initial
begin
	clk=0;
	forever #20 clk = ~clk;
end

initial
begin
	$dumpfile("Q2_tb.vcd");
	$dumpvars(0, Q2_tb);

	t <= 0; res <=0; #15;
	t <= 0; res <=1; #15;
	t <= 1; res <=0; #15;
	t <= 1; res <=0; #15;
	t <= 1; res <=1; #15;

	$display("Test complete");
end
endmodule