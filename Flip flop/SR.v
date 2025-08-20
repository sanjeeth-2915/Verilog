module sr_ff (
    input S, R, clk,
    output reg Q
);
    always @(posedge clk) begin
        case ({S, R})
            2'b00: Q <= Q;       // No change
            2'b01: Q <= 0;       // Reset
            2'b10: Q <= 1;       // Set
            2'b11: Q <= 1'bx;    // Invalid state
        endcase
    end
endmodule
