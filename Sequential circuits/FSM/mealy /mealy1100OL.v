module mealy1100(
        input clk,rst,in,
        output reg out);
//typedef enum reg [1:0] {s0,s1,s2,s3}ps;
//
parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
parameter s3 = 2'b11;
reg [1:0]  state,ns;
 always @(posedge clk or posedge rst)begin
         if(rst)
                 state <= s0;
          else
                         state <= ns;

 end
         always @(*)begin
                 case(state)
                         s0 : ns = in ? s1 : s0;
                         s1 : ns = in ? s2 : s0;
                         s2 : ns = in ? s1 : s3;
                         s3 : ns = in ? s1 : s0;
                         default : ns = s0;
                 endcase
         end
         always @(*)begin
                // out=(state==s3 && in==0);
                 case(state)
                         s3 : out = (in==0)? 1 : 0;
                         default : out = 0;

         end
         endmodule
