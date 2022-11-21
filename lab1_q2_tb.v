`timescale 1ns/1ns
`include "lab1_q2.v"

module lab1_q2_tb();
reg a,b,c,d;
wire f;

lab1_q2 l1(a,b,c,d,f,g);
initial
begin

  $dumpfile("lab1_q2_tb.vcd");
  $dumpvars(0, lab1_q2_tb);
  
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
