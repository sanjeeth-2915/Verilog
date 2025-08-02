module moore_1001_non_overlap (
  input clk,
  input reset,
  input din,
  output reg dout
);

  parameter S0 = 3'b000;
  parameter S1 = 3'b001;
  parameter S2 = 3'b010;
  parameter S3 = 3'b011;
  parameter S4 = 3'b100;

  reg [2:0] state;

  // State transitions
  always @(posedge clk or posedge reset) begin
    if (reset)
      state <= S0;
    else begin
      case (state)
        S0: state <= (din) ? S1 : S0;
        S1: state <= (din) ? S1 : S2;
        S2: state <= (din) ? S1 : S3;
        S3: state <= (din) ? S4 : S0;
        S4: state <= S0;  // After detection, reset to initial (non-overlapping)
        default: state <= S0;
      endcase
    end
  end

  // Output logic
  always @(*) begin
    case (state)
      S4: dout = 1;
      default: dout = 0;
    endcase
  end

endmodule
