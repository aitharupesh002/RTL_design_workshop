module incomplete_if (input i0, input i1, output reg y);
  always @(*)
    if (i0) y = i1;       // no else: y must remember its value
endmodule
module complete_if (input i0, input i1, output reg y);
  always @(*)
    if (i0) y = i1; else y = 1'b0;
endmodule
