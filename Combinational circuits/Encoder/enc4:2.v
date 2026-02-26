module enc4to2(
    input [3:0]a,
    input en,
    output reg [1:0]y
);
always@(*)begin
    if(en)begin
    case(a)
    4'b0000:y=2'b00;
    4'b0001:y=2'b01;
    4'b0010:y=2'b10;
    4'b0011:y=2'b11;
    endcase
    end
    else
    begin
    y=1'b00;
    end 
end
endmodule
