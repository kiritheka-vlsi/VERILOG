module dlatch(
  input d,
  input en,
  input rst,
  output reg q
);
  always@(d or en or rst )begin
     if(rst)
        begin q<=0; end 
      else if(en)
        begin q<=d;end
       else 
         begin q<=1'bx;end 
     end
endmodule
