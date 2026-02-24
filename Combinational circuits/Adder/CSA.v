module CSA (
    input [4:0]a,
    input [4:0]b,
    input [4:0]c,
    output reg [4:0]sum,
    output reg [4:0]carry
);
integer i;
always@(*)begin
    for(i=0;i<=4;i=i+1)begin
    sum[i]=a[i]^b[i]^c[i];
    carry[i]=a[i]&b[i]|((a[i]^b[i])&c[i]);
    end 
end 
endmodule
