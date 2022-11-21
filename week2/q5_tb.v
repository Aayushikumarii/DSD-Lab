`timescale 1ns/1ns
`include "q5.v"

module q5_tb();
reg a,b,c,d;
wire f;

q5 l2(a,b,c,d,f);
initial
begin

  $dumpfile("q5_tb.vcd");
  $dumpvars(0, q5_tb);
  
  a=1'b0; b=1'b0; c=1'b0; d=1'b0;
  #20;
  
  a=1'b0; b=1'b0; c=1'b0; d=1'b1;
  #20;
  
  a=1'b0; b=1'b0; c=1'b1; d=1'b0;
  #20;
  
  a=1'b0; b=1'b0; c=1'b1; d=1'b1;
  #20;
  
  a=1'b0; b=1'b1; c=1'b0; d=1'b0;
  #20;
  
  a=1'b0; b=1'b1; c=1'b0; d=1'b1;
  #20;
  
  a=1'b0; b=1'b1; c=1'b1; d=1'b0;
  #20;
  
  a=1'b0; b=1'b1; c=1'b1; d=1'b1;
  #20;
  
  a=1'b0; b=1'b0; c=1'b0; d=1'b0;
  #20;
  
  a=1'b0; b=1'b0; c=1'b0; d=1'b1;
  #20;
  
  a=1'b0; b=1'b0; c=1'b1; d=1'b0;
  #20;
  
  a=1'b0; b=1'b0; c=1'b1; d=1'b1;
  #20;
  
  a=1'b1; b=1'b1; c=1'b0; d=1'b0;
  #20;
  
  a=1'b1; b=1'b1; c=1'b0; d=1'b1;
  #20;
  
  a=1'b1; b=1'b1; c=1'b1; d=1'b0;
  #20;
  
  a=1'b1; b=1'b1; c=1'b1; d=1'b1;
  #20;
  
 a=1'b1; b=1'b0; c=1'b0; d=1'b0;
  #20;
  
  a=1'b1; b=1'b0; c=1'b0; d=1'b1;
  #20;
  
  a=1'b1; b=1'b0; c=1'b1; d=1'b0;
  #20;
  
  a=1'b1; b=1'b0; c=1'b1; d=1'b1;
  #20;
  
 
  
 
 
  
  $display("test complete");
end 

endmodule
