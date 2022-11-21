module dFlipFlop(D,Clock,reset,Q);
	input D,reset,Clock;
	output reg Q;
	always@(posedge Clock)
	begin
		if(!reset)
			Q <= 0;
		else
			Q <= D;
	end
endmodule

module q2(Clock,reset,Q);
	input Clock,reset;
	output [4:0]Q;
	dFlipFlop stage0(~Q[0],Clock,reset,Q[4]);
	dFlipFlop stage1(Q[4],Clock,reset,Q[3]);
	dFlipFlop stage2(Q[3],Clock,reset,Q[2]);
	dFlipFlop stage3(Q[2],Clock,reset,Q[1]);
	dFlipFlop stage4(Q[1],Clock,reset,Q[0]);
endmodule
	
