`timescale 1ns/1ns
`include "example2.v"

module example2_tb();
reg x1,x2,x3;
wire f;

example2 ex2(x1,x2,x3,f);
initial
begin

  $dumpfile("example2_tb.vcd");
  $dumpvars(0, example2_tb);
  
  x1=1'b0; x2=1'b0; x3=1'b0;
  #20;
  
  x1=1'b0; x2=1'b0; x3=1'b1;
  #20;
  
  x1=1'b0; x2=1'b1; x3=1'b0;
  #20;
  
  x1=1'b0; x2=1'b1; x3=1'b1;
  #20;
  
  x1=1'b1; x2=1'b0; x3=1'b0;
  #20;
  
  x1=1'b1; x2=1'b0; x3=1'b1;
  #20;
  
  x1=1'b1; x2=1'b1; x3=1'b0;
  #20;
  
  x1=1'b1; x2=1'b1; x3=1'b1;
  #20;
  
  $display("test complete");
end 

endmodule
