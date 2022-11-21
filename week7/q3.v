module mux8to1(w0,w1,w2,w3,w4,w5,w6,w7,S0,S1,S2,f);
	input w0,w1,w2,w3,w4,w5,w6,w7,S0,S1,S2;
	output reg f;
	always@(w0 or w1 or w2 or w3 or w4 or w5 or w6 or w7 or S0 or S1 or S2)
	begin
		if(S2==0 & S1==0 & S0==0)
			assign f=w0;
		if(S2==0 & S1==0 & S0==1)
			assign f=w1;
		if(S2==0 & S1==1 & S0==0)
			assign f=w2;
		if(S2==0 & S1==1 & S0==1)
			assign f=w3;
		if(S2==1 & S1==0 & S0==0)
			assign f=w4;
		if(S2==1 & S1==0 & S0==1)
			assign f=w5;
		if(S2==1 & S1==1 & S0==0)
			assign f=w6;
		if(S2==1 & S1==1 & S0==1)
			assign f=w7;
	end
endmodule

module q3(B0,B1,B2,B3,E0,E1,E2,E3);
	input B0,B1,B2,B3;
	output E0,E1,E2,E3;
	assign E0=~B0;
	mux8to1 stage0(~B0,B0,~B0,B0,~B0,1'b0,1'b0,1'b0,B1,B2,B3,E1);
	mux8to1 stage1(B0,1'b1,~B0,1'b0,B0,1'b0,1'b0,1'b0,B1,B2,B3,E2);
	mux8to1 stage2(1'b0,1'b0,B0,1'b1,1'b1,1'b0,1'b0,1'b0,B1,B2,B3,E3);
endmodule
	
