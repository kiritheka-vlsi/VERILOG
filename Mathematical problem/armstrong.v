module armstrong(input [9:0]n,
        output reg arm);
reg [3:0]d1,d2,d3;
reg [15:0]sum;
always @(*) begin
        //extracting
        d1=n%10;
        d2=(n/10)%10;
        d3=n/100;

        sum=(d1*d1*d1)+
                (d2*d2*d2)+
                (d3*d3*d3);
        if(sum==n)
                arm=1;
        else
                arm=0;
end
endmodule
