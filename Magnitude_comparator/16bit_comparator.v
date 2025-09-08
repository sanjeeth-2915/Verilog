module magnitude_comparator_16 (
    input  [15:0]A, [15:0]B,
    output A_gt_B, A_eq_B, A_lt_B
);
    always@(*)begin
        if (A>B) begin
            A_gt_B = 1;
            A_eq_B = 0;
            A_lt_B = 0;
        end

        else if (A==B) begin
            A_gt_B = 0;
            A_eq_B = 1;
            A_lt_B = 0;
         end
        
         else (A<B) begin
            A_gt_B = 0;
            A_eq_B = 0;
            A_lt_B = 1;
          end
    end 
endmodule
