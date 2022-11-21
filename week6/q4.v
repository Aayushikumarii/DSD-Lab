module q4(W,S,f);
	input [3:0]W;
	input [1:0]S;
	output f;
	wire [1:0]z;
	function mux2;
		input [1:0]W;
		input S;
		begin
			if(S==1'b0)
				mux2=W[0];
			else
				mux2=W[1];
		end
	endfunction
	assign z[0]=mux2(W[1:0],S[0]);
	assign z[1]=mux2(W[3:2],S[0]);
	assign f=mux2(z[1:0],S[1]);
endmodule
