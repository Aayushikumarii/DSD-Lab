module mux2to1(W0,W1,S,f);
	input W0,W1,S;
	output reg f;
	always@(W0 or W1 or S)
	begin 
		if(S==0)
			assign f=W0;
		if(S==1)
			assign f=W1;
	end
endmodule

module q2a(W0,W1,W2,W3,f);
	input W0,W1,W2,W3;
	output f;
	wire g,h;
	assign g=W2&W3;
	assign h=W2|W3;
	mux2to1 stage0(g,h,W1,f);
endmodule
		
