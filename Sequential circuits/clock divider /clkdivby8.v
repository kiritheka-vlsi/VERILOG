module fby8(
        input clk,
        input rst,
        output reg clkout);
reg [2:0] count;
always @(posedge clk or posedge rst)
begin
        if(rst)
        begin count<=0;
        clkout <=0;
end
else
begin
        count <= count +1;
        if(count == 3'b111)
        begin
                clkout <= ~ clkout;
                count <= 0;
        end
end
end
endmodule
