`timescale 1ns/1ns
`include "q1fa.v"

module q1fa_tb();
reg c_in,x,y;
wire sum, c_out;

q1fa l4(c_in,x,y,sum, c_out);
initial
begin

  $dumpfile("q1fa_tb.vcd");
  $dumpvars(0, q1fa_tb);
  
  x=1'b0; y=1'b0; c_in=1'b0;
  #20;
  
  x=1'b0; y=1'b0; c_in=1'b1;
  #20;
  
  x=1'b0; y=1'b1; c_in=1'b0;
  #20;
  
  x=1'b0; y=1'b1; c_in=1'b1;
  #20;
  
  x=1'b1; y=1'b0; c_in=1'b0; 
  #20;

  x=1'b1; y=1'b0; c_in=1'b1;
  #20;
  
  x=1'b1; y=1'b1; c_in=1'b0;
  #20;
  
  x=1'b1; y=1'b1; c_in=1'b1;
  #20;
   $display("test complete");
end 

endmodule
