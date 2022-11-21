module mux2to1(w,s,f);
input [1:0]w;
input s;
output f;
reg f;
always @(w[0] or w[1] or s)
if (s==0)
f=w[0];
else
f=w[1];
endmodule

module mux4to1(w,s,f);
input [3:0]w;
input [1:0]s;
output f;
wire [1:0]i;
mux2to1 stg0(w[1:0],s[0],i[0]);
mux2to1 stg1(w[3:2],s[0],i[1]);
mux2to1 stg2(i[1:0],s[1],f);
endmodule
