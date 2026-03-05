module jklatch(
  input j,
  input k,
  input en,
  input rst,
  output reg q
);
  always@(j or k or en or rst )begin
    if(en)
      begin
        if(j&&!k)begin
          q<=1;end
        else if(!j&&k)begin
          q<=0;end
        else if(!j&&!k)begin
          q<=q;end
        else begin
          q<=!q;end
        end
    else begin
      q<=1'bx;end 
  end
endmodule
