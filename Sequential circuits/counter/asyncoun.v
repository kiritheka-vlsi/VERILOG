module jkff(input d,clk,rst,output reg  q);
always@(negedge clk or negedge rst)begin
        if(!rst)
                q <= 1'b0;
        else
                /*case({j,k})
                        2'b00:q <= q;
                        2'b01:q <= 0;
                        2'b10:q <= 1;
                        2'b11:q <= ~q;
        endcase*/
           q <= d;
 end

        endmodule

        module asyncoun(input clk,rst,output [2:0]q);


       jkff f1(~q[0], clk,  rst, q[0]);
       jkff f2(~q[1], q[0], rst, q[1]);
       jkff f3(~q[2], q[1], rst, q[2]);
        endmodule
