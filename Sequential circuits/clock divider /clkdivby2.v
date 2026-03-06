module fby2(
        input clk,
        input rst,
        output reg clkout);
always@(posedge clk or posedge rst)begin
        if(rst)
          clkout<=0;
  else
        clkout = ~clkout;
end
endmodule
