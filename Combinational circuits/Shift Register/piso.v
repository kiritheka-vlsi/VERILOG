module piso(
        input clk,rst,load,
        input [3:0]pi,
        output reg so);
reg [3:0]q;
always@(posedge clk or posedge rst)
begin
        if(rst)
                q<=4'b0000;


                else if(load)
                        q<=pi;

                        else begin
                                q<={q[2:0],1'b0};
                                 so <= q[3];

                        end
end
endmodule
