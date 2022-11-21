module mux2to1(w0,w1,s,f);
	input w0,w1,s;
	output reg f;
	always@(w0 or w1 or s)
	begin
		if(s==0)
			f=w0;
		else
			f=w1;
	end
endmodule

module q2b(w1,w2,w3,f);
	input w1,w2,w3;
	output f;
	wire g,h;
	mux2to1 stage0(1'b0,w3,w2,g);
	mux2to1 stage1(w3,1'b1,w2,h);
	mux2to1 stage2(g,h,w1,f);
endmodule
	
