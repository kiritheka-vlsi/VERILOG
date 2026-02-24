module logicgates(input wire  a,b,output  wire c,d,e,f,g,h,i);
always@(*)
begin 
    c=a&b;
    d=a|b;
    e=a^b;
    f=!a;
    g=~(a&b);
    h=~(a|b);
    i=~(a^b);
end
endmodule
