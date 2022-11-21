`timescale 1ns/1ns
`include "Q3.v"
module Q3_tb();
reg j, k, clk, res;
wire q;
Q3 q3(j, k, clk, res, q);

initial
begin
	clk=0;
	forever #20 clk = ~clk;
end

initial
begin
	$dumpfile("Q3_tb.vcd");
	$dumpvars(0, Q3_tb);
	
	j=1; k=0; res=0; #20;
	j=0; k=1; res=1; #20;
	j=0; k=0; res=1; #20;
	j=1; k=1; res=0; 

	$display("Test complete");
end
endmodule