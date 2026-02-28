module jkff(
  input j,
  input k,
  input clk,
  input rst,
  output reg q
  );
  initial begin
      q<=1'b1;
  end
  always@(posedge clk or posedge rst) begin
   
    if(rst)begin 
      q <=1'b1;
     end 
    
    /*else begin
    case({j,k})
      
      2'b00:q<=q;
      2'b01:q<=1'b0;
      2'b10:q<=1'b1;
      2'b11:q<=~q;
      
    endcase
  end
  end
endmodule*/
     
    
   else if(!j&&!k)begin
        q<=q;end
    
    else if(!j&&k)begin
          q<=0;end
    
    else if(j&&!k)begin
            q<=1;end
    
            else begin
              q<=~q;
            end
  end
        endmodule
