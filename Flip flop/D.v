module d_ff (
    input D, clk,
    output reg Q
);
    always @(posedge clk) begin
        Q <= D;
    end
endmodule
