module magnitude_comparator_16 (
    input logic [15:0] A, B,
    output logic A_gt_B, A_eq_B, A_lt_B
);
    always_comb begin
        A_gt_B = 0;
        A_eq_B = 0;
        A_lt_B = 0;

        if (A > B)
            A_gt_B = 1;
        else if (A < B)
            A_lt_B = 1;
        else
            A_eq_B = 1;
    end
endmodule
