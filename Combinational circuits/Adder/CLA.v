module CLA(
    input [3:0]a,
    input [3:0]b,
    input  cin,
    output reg [3:0]s,
    output reg cout
);
reg c1,c2,c3;
reg [3:0]p;
reg [3:0]g;

    
always@(*)begin
    //p&g
    p =a ^ b;
    g = a & b;
   
    //carry
    /*c1=  g[0]|(p[0]&cin);
    c2=  g[1]|(p[1]&(g[0]|(p[0]&cin)));
    c3=  g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))));
    cout=g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))));
 */   
 c1=  g[0]|(p[0]&cin);
    c2=  g[1]|(p[1]&c1);
    c3=  g[2]|(p[2]&c2);
    cout=g[3]|(p[3]&c3);
    //sum
    s[0]=p[0]^cin;
    s[1]=p[1]^c1;
    s[2]=p[2]^c2;
    s[3]=p[3]^c3;
    
end 
endmodule
