`timescale 1ns/1ns
`include "q1ha.v"

module q1ha_tb();
reg a,b,c,d;
wire f;

q1ha l4(a,b,c,d,f);
initial
begin

  $dumpfile("q1ha_tb.vcd");
  $dumpvars(0, q1ha_tb);
  
  a=1'b0; b=1'b0; 
  #20;
  
  a=1'b0; b=1'b1;
  #20;
  
  a=1'b1; b=1'b0; 
  #20;

  a=1'b1; b=1'b1; 
  #20;

   $display("test complete");
end 

endmodule
