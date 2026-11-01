`timescale 1ns/1ps
module tb_counter;
  reg clk=0, rst=1; wire [2:0] count; wire q;
  counter uc (.clk(clk), .rst(rst), .count(count));
  dff_const uk (.clk(clk), .rst(rst), .q(q));
  always #10 clk = ~clk;
  initial begin
    $dumpfile("counter.vcd"); $dumpvars(0, tb_counter);
    #25 rst=0; #220 rst=1; #20 rst=0; #60 $finish;
  end
endmodule
