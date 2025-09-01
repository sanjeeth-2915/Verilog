module tb_magnitude_comparator_16;
    logic [15:0] A, B;
    logic A_gt_B, A_eq_B, A_lt_B;

    magnitude_comparator_16 uut (
        .A(A), .B(B),
        .A_gt_B(A_gt_B), .A_eq_B(A_eq_B), .A_lt_B(A_lt_B)
    );

    initial begin
        A = 16'd100; B = 16'd50; #10;
        $display("A > B: %b, A == B: %b, A < B: %b", A_gt_B, A_eq_B, A_lt_B);

        A = 16'd50; B = 16'd100; #10;
        $display("A > B: %b, A == B: %b, A < B: %b", A_gt_B, A_eq_B, A_lt_B);

        A = 16'd100; B = 16'd100; #10;
        $display("A > B: %b, A == B: %b, A < B: %b", A_gt_B, A_eq_B, A_lt_B);

        $finish;
    end
endmodule
