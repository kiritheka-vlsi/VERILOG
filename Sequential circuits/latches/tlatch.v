module tlatch(
  input t,
  input en,
  output reg q
);
  initial q=0;
  always@(t or en )begin
    if(en) begin
   
          if(t) begin
          q<=~q;
          end
        
          else begin 
               q<=q;
             end 
        end 
    else  begin
      q<=1'bx;
      end
  end 
endmodule
