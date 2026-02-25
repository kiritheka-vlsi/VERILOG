module muxtypes(
    input i0,i1,s,
    // output y
    //output reg y
    output y
);
wire sbar,w1,w2;
not(sbar,s);
and (w1, i0, sbar);
and (w2, i1, s);
or  (y, w1, w2);

//assign y= (i0&~s)| (i1&s);//boolean

//assign y = s? i1:i0;//ternary


/*always@(*)begin//conditional
    if(s)
    y=i1;
    else
    y=i0;
end*/

/*always@(*)//case
begin
    case(s)
    1'b0: y=i0;
    1'b1:y=i1;
    endcase
end */

 /*always@(*) //blocking 
 begin
    y=i0;
    if(s)
    y=i1;
 end  
*/


endmodule
