module ms_d_ff (
  input wire D, clk, reset,
  output reg Q
);
  reg master;   

  always @(posedge clk or posedge reset) begin
    if (reset)
      master <= 1'b0;      
    else
      master <= D;         
  end

  always @(negedge clk or posedge reset) begin
    if (reset)
      Q <= 1'b0;           
    else
      Q <= master;          
  end
endmodule
