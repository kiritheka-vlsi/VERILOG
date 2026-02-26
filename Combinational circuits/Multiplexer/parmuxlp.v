module paramux1#(
    parameter n=16;
    parameter m=4;
)
(
    input [n:0]in,
    input [m:0]s,
    output reg y
);
always@(*)begin
    y=in[sel];
end
endmodule
