module demux1to2(
    input d,
    input s,
    output reg y0,
    output reg y1
);
always@(*)begin

     y0 = 0;
    y1 = 0;

    if(s==1'b0)
    y0=d;
    else
    y1=d;

   /* y0 = 0;
    y1 = 0;
case(s) 

  1'b0:y0 = d ;
  1'b1:y1 = d ; 

endcase*/

//y0=d&~s;
//y1=d&s;


  /* if(s==0);
     d=y0;
     else
     d=y1; */
     
end 
endmodule
