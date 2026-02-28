// Code your design here
module srff(
  input s,
  input r,
  input clk,
  input rst,
  output reg q
  );
  
  always @(posedge clk or posedge rst) begin
    q<=1;
    if(rst)begin 
      q<=1;
     end 
    
      else if(!s&&!r)begin
        q<=q;end
    
        else if(!s&&r)begin
          q<=0;end
    
          else if(s&&!r)begin
            q<=1;end
    
            else begin
              q<=1'bx;
            end
  end
        endmodule
