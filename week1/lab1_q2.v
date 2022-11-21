module lab1_q2(a,b,c,d,f,g);
  input a,b,c,d;
  output f,g;
  nand (h,a,b );
  xor (f, d,g,c);
  nor (g, h,c,b);
 endmodule
