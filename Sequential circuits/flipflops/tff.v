module tff(
  input t,
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
    else if(t)begin
      q<=~q;
    end
    else begin
      q<=q;
    end
 
    
  /*  else begin
      case({t})
       1'b0:q<=q;
       1'b1:q<=~q;
       endcase
  end*/
    
  end
endmodule
