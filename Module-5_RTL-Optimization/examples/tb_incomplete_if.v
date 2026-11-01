`timescale 1ns/1ps
module tb_incomplete_if;
  reg i0=0, i1=0; wire y_inc, y_com;
  incomplete_if ui (.i0(i0),.i1(i1),.y(y_inc));
  complete_if   uc (.i0(i0),.i1(i1),.y(y_com));
  initial begin
    $dumpfile("incomplete_if.vcd"); $dumpvars(0, tb_incomplete_if);
    #10 i0=1; i1=1; #10 i1=0; #10 i1=1; #10 i0=0; #10 i1=0; #10 i1=1; #10 i0=1; #10 i0=0; #10 $finish;
  end
endmodule
