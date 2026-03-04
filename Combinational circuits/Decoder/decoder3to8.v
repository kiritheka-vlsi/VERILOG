module decoder3to8(
    input [2:0]a,
    output reg [7:0]y
);
always@(*)begin

   // y=1<<a;
   y=16'b0;

   if(a == 3'b000)
    y[0]=1;
    else if (a == 3'b001)
    y[1]=1;
    else if (a == 3'b010)
    y[2]=1;
    else if (a == 3'b011)
    y[3]=1;
    else if (a == 3'b100)
    y[4]=1;
    else if (a == 3'b101)
    y[5]=1;
    else if (a == 3'b110)
    y[6]=1;
    else 
     y[7]=1;

end
endmodule
