`timescale 1ns/1ps
module tb_dff_reset;
  reg clk=0, rst=0, d=0; wire qa, qs;
  dff_async_reset ua (.clk(clk), .rst(rst), .d(d), .q(qa));
  dff_sync_reset  us (.clk(clk), .rst(rst), .d(d), .q(qs));
  always #10 clk = ~clk;
  initial begin
    $dumpfile("dff_reset.vcd"); $dumpvars(0, tb_dff_reset);
    #3 d=1; #20 d=1; #17 rst=1; #16 rst=0;   // reset asserted between clock edges
    #30 d=0; #20 d=1; #40 $finish;
  end
endmodule
