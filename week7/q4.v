module mux4to1(w,s,f);
	input [3:0]w;
	input [1:0]s;
	output reg f;
	always@(w or s)
	begin
		f=s[1]?(s[0]?w[3]:w[2]):(s[0]?w[1]:w[0]);
	end
endmodule

module q4(B,G);
	input [3:0]B;
	output [3:0]G;
	wire [3:0]w0,w1,w2,w3;
	assign i=B[3]^B[2];
	
	assign w0={1'b0,1'b1,1'b1,1'b0};
	assign w1={~B[2],~B[2],B[2],B[2]};
	assign w2={i,i,i,i};
	assign w3={B[3],B[3],B[3],B[3]};
	
	mux4to1 stage0(w0,B[1:0],G[0]);
	mux4to1 stage1(w1,B[1:0],G[1]);
	mux4to1 stage2(w2,B[1:0],G[2]);
	mux4to1 stage3(w3,B[1:0],G[3]);
endmodule
