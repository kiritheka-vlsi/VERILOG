// Code your design here
module srlatch(
  input s,
  input r,
  input en,
  input rst,
  output reg q
);
  always@(*)begin
    if(en)
      begin
        if(s&&!r)
          q<=1;
        else if(!s&&r)
          q<=0;
        else if(!s&&!r)
          q<=q;
        else
          q<=1'bx;
        end
    else
      q<=1'bx;
  end
endmodule
