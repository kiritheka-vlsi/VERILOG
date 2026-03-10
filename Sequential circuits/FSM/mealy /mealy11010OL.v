module mealy11010 (
        input clk,rst,in,
        output reg out);
parameter s0 = 3'b000;
parameter s1 = 3'b001;
parameter s2 = 3'b010;
parameter s3 = 3'b011;
parameter s4 = 3'b100;

reg [2:0] state,ns;
always @(posedge clk or posedge rst) begin
        if(rst)
                state<=s0;
        else
                state <=ns;
end
always @(*)begin
        case(state)
             s0 :ns = in ? s1 : s0;
             s1 :ns = in ? s2 : s0;
             s2 :ns = in ? s1 : s3;
             s3 :ns = in ? s4 : s0;
             s4 :ns = in ? s2 : s3;
        default : ns = s0;
endcase
end
always @(*) begin
        //out = (state ==s4 && in==0);
        case(state)

                s4 : out = in ? 1:0;
               default : out = 0;
       endcase
end
endmodule
