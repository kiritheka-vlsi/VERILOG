// Code your design here
module siso(
  input si,
  input clk,
  input rst,
  output reg [3:0]q
);
  //reg  [3:0]q;
  always@(posedge clk)begin
    if(rst)begin
      q<=4'b0000;
    end
    else begin
      q <= ({si,q[3:1]});
     // so <= q[3];
    end
  end
endmodule
