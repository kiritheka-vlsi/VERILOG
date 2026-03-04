module decEN(
    input [1:0]a,
    input en,
    output reg [3:0]y
);
always@(*)begin
    if(en)
    begin
        case(a)
        2'b00:y[0]=1;
        2'b01:y[1]=1;
        2'b10:y[2]=1;
        2'b11:y[3]=1;
        endcase
    end
    else
     begin
      y=4'b0000;
    end
end 
endmodule
