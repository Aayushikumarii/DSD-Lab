module q4(a,b,c,d,f);
input a,b,c,d;
output f;
assign f = (~b | c | d) & (a | ~b | ~c ) & ( ~a | b | ~d) & ( ~a | b | ~c);
endmodule                                                                                                                                                                                                                 
