module jk_ff (
    input J, K, clk,
    output reg Q
);
    always @(posedge clk) begin
      case ({J, K})
            2'b00: Q <= Q;       // No change
            2'b01: Q <= 0;       // Reset (0)
            2'b10: Q <= 1;       // Set(1)
            2'b11: Q <= ~Q;    // Toggle the state 
        endcase
    end
endmodule

