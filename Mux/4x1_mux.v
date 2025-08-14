module 4x1_mux ( input wire s0,s1,a,b,c,d, output reg y);

  always@(*)begin 
    case({s1,s0})
      2'b00: y = a;
      2'b01: y = b;
      2'b10: y = c;
      2'b11: y = d;
      default : y = 1'b0;
    endcase
end  
endmodule 
  
