`timescale 1ns/1ps
module tb_blocking_caveat;
  reg a=0,b=0,c=0; wire y;
  blocking_caveat uut (.a(a),.b(b),.c(c),.y(y));
  initial begin
    $dumpfile(`DUMP); $dumpvars(0, tb_blocking_caveat);
    #10 a=1; c=1; #10 c=0; #10 c=1; #10 a=0; #10 c=0; #10 c=1; #10 b=1; #10 b=0; #10 $finish;
  end
endmodule
