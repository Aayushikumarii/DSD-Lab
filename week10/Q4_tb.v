`timescale 1ns/1ns
`include "Q4.v"
module Q4_tb();
reg clk, res;
reg [4:0]i;
wire [4:0] out ;
Q4 q4(i,out,clk,res);
always #20 clk = ~clk;
initial
begin
	$dumpfile("Q4_tb.vcd");
	$dumpvars(0, Q4_tb);
	clk=0;
	res=0; i = 5'd0; #20;
	res=1;
	i = 5'd1; #20; 
	i = 5'd0; #20;
	i = 5'd1;

	$display("Test complete");
end
endmodule