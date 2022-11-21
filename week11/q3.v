module flipflopT(T,Clock,reset,Q);
	input T,reset,Clock;
	output reg Q;
	always@(negedge reset or negedge Clock)
	begin
		if(!reset)
			Q <= 0;
		else
		begin
			if(T)
				Q <= ~Q;
			else
				Q <= Q;
		end
	end
endmodule

module q3(Clock,reset,Q);
	input Clock,reset;
	output [0:3]Q;
	
	flipflopT stage0(1'b1,Clock,reset,Q[3]);
	flipflopT stage1(1'b1,Q[3],reset,Q[2]);
	flipflopT stage2(1'b1,Q[2],reset,Q[1]);
	flipflopT stage3(1'b1,Q[1],reset,Q[0]);
endmodule
