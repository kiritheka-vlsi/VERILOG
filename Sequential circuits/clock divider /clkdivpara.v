module  clkdvN #(parameter n = 8)
( input clk,
        input rst,
        output reg clkout );
reg [$clog2(n)-1:0] count;
always @ (posedge clk or posedge rst)
begin
        if (rst) begin
                count <=0;
                clkout <=0;
        end
        else begin
                count <= count +1;
        if (count == n**2 -1)begin
                clkout <=~ clkout ;
                count = 0;
        end
end
end
endmodule
