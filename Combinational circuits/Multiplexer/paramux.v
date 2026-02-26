module par_mux #(
    parameter n = 16
)
(
    input [n-1:0]in,
    input [$clog2(n) /*m*/-1:0]sel,
    output reg y
);
always @(*)
begin
    y=in[sel];
end
endmodule 
