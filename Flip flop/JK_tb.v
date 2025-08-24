module jk_ff (
  input  wire clk,   
  input  wire reset,  
  input  wire j, k,  
  output reg  q       
);
  always @(posedge clk or posedge reset) begin
    if (reset)
      q <= 0;            
    else begin 
      case ({j, k})
        2'b00: q <= q;     
        2'b01: q <= 0;     
        2'b10: q <= 1;     
        2'b11: q <= ~q;    
      endcase
    end
  end
endmodule
