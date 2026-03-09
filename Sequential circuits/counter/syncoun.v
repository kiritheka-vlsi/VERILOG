module dff(input clk,rst,d,output reg q);
always@(posedge clk or posedge rst)begin
if(rst)
        q <= 1'b0;
else
        q <= d;
end
endmodule
module syncoun
(input clk,rst,output [2:0]q);
wire d0,d1,d2;

        assign d0 = ~q[0];
        assign d1 = q[1] ^ q[0];
        assign d2 = q[2]^ (q[1] & q[0]);

dff f1 ( .clk(clk) ,.rst(rst),.d(d0),.q(q[0]));
dff f2 ( .clk(clk) ,.rst(rst),.d(d1),.q(q[1]));
dff f3 ( .clk(clk) ,.rst(rst),.d(d2),.q(q[2]));
endmodule
