module counter (input clk, input rst, output reg [2:0] count);
  always @(posedge clk or posedge rst)
    if (rst) count <= 3'd0; else count <= count + 3'd1;
endmodule
module dff_const (input clk, input rst, output reg q);
  always @(posedge clk or posedge rst)
    if (rst) q <= 1'b0; else q <= 1'b1;   // D input is a constant 1
endmodule
