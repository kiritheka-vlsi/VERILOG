module demux1to4(
    input d,
    input s,
    output reg y0,y1,y2,y3
);
always@(*)begin
    y0=0;
    y1=0;
    y2=0;
    y3=0;
    case(s)
    2'b00:y0=d;
    2'b01:y0=d;
    2'b10:y0=d;
    2'b11:y0=d;
    endcase
end 
endmodule
