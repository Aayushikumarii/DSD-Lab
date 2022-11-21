module flipflopT(T,Clock,reset,Q);
	input T,reset,Clock;
	output reg Q;
	always@(negedge reset or posedge Clock)
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

module q5(Clock,reset,x,Q);
	input Clock,reset,x;
        output [3:0]Q;
        wire g,h,i;
        assign g = (~Q[2]&~Q[1]&~Q[0]&~x)|(Q[2]&Q[1]&Q[0]&x);
        assign h = (~Q[1]&~Q[0]&~x)|(Q[1]&Q[0]&x);
        assign i = (~Q[0]&~x)|(Q[0]&x);
        flipflopT stage0(g,Clock,reset,Q[3]);
        flipflopT stage1(h,Clock,reset,Q[2]);
        flipflopT stage2(i,Clock,reset,Q[1]);
        flipflopT stage3(1'b1,Clock,reset,Q[0]);
endmodule
