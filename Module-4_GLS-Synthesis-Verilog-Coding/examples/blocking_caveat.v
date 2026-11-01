// Blocking assignments written in the wrong order and a wrong sensitivity list.
module blocking_caveat (input a, input b, input c, output reg y);
  reg x;
  always @(a or b or c) begin
    y = x & c;     // uses the OLD value of x
    x = a | b;
  end
endmodule
