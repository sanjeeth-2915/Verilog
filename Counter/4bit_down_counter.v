module 4bit_down_counter (
  input clk,
  input reset,
  output reg [3:0] counter
);

  always@(posedge clk or posedge reset) begin

    if(reset)
      counter <= 4'b0000;
    else
      counter <= counter-1;

  end 
endmodule 
