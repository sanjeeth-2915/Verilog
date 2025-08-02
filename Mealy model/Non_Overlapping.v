module mealy_1001_non_overlap (
  input clk,
  input reset,
  input din,
  output reg dout
);

  parameter S0 = 3'b000;
  parameter S1 = 3'b001;
  parameter S2 = 3'b010;
  parameter S3 = 3'b011;

  reg [2:0] state;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      state <= S0;
      dout <= 0;
    end else begin
      case (state)
        S0: begin
          dout <= 0;
          if (din) state <= S1;
        end

        S1: begin
          dout <= 0;
          if (~din) state <= S2;
          else state <= S1;
        end

        S2: begin
          dout <= 0;
          if (~din) state <= S3;
          else state <= S1;
        end

        S3: begin
          if (din) begin
            dout <= 1;       // Sequence 1001 detected
            state <= S0;     // Reset to start (non-overlapping)
          end else begin
            dout <= 0;
            state <= S0;
          end
        end

        default: begin
          dout <= 0;
          state <= S0;
        end
      endcase
    end
  end

endmodule

