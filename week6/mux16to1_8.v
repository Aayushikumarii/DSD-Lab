module mux8to1(w,s,f);
input [7:0]w;
input [2:0]s;
output f;
reg f;
always @(w or s)
case(s)
0:f=w[0];
1:f=w[1];
2:f=w[2];
3:f=w[3];
4:f=w[4];
5:f=w[5];
6:f=w[6];
7:f=w[7];
endcase
endmodule
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


module mux16to1_8(w,s,f);
input [15:0]w;
input [3:0]s;
output f;
wire [1:0]i;
mux8to1 stg0(w[7:0],s[2:0],i[0]);
mux8to1 stg1(w[15:8],s[2:0],i[1]);
mux2to1 stg2(i[1:0],s[3],f);
endmodule
