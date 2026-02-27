module dff(
    input d, clk, rst,
    output reg q
);
always @(posedge clk) begin
    if (rst)
        q <= 1'b0;
    else
        q <= d;
end
endmodule
module sipo (
    input in, clk, rst,
    output [3:0] d
);
  wire q0, q1, q2, q3;

  dff dff0(.d(in),  .clk(clk), .rst(rst), .q(q0));
  dff dff1(.d(q0),  .clk(clk), .rst(rst), .q(q1));
  dff dff2(.d(q1),  .clk(clk), .rst(rst), .q(q2));
  dff dff3(.d(q2),  .clk(clk), .rst(rst), .q(q3));

  assign d = {q3, q2, q1, q0};
endmodule
