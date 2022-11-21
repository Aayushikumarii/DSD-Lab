module mux2to1(w0,w1,s,f);
input w0,w1,s;
output f;
reg f; 
always @(w0 or w1 or s)
if(s==0)
f=w0;
else
f=w1;
endmodule

module q1(w0,w1,w2,s,f);
input w0,w1,w2;
input [1:0]s;
output f;
reg f;
always @(w0 or w1 or w2 or w3 or s)
if(s==2'b01)  
f=w1;
else if(s==2'b10)
f=w2;
else if(s==2'b11)
f=w3;
endmodule 























