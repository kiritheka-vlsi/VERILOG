
module siso(
  
  input clk,
  input rst,
  input drt,
  input lft,
  input rgt,
  output reg [3:0]q);
  
  always@(posedge clk or posedge rst) begin
    
    if(rst)
      q<=4'b0000;
    else if(drt)
       q<={q[2:0],lft};
    else
      q<={rgt,q[3:1]};
    
    
   /* else begin
      
    case(drt)
      1'b0: begin
        q<={q[2:0],lft};//leftshift
      end
      1'b1:begin
        q<={rgt,q[3:1]};//right shift
      end
    endcase
    end*/
    
  end
endmodule
