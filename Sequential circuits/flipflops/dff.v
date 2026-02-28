module dff(
  input d,
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
    else begin
      q<=q;
    end
 
    
  /*  else begin
      case({d})
       1'b0:q<=d;
       endcase
  end*/
    
  end
endmodule
