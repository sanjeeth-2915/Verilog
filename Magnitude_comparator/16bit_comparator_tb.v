module tb_comparator_16bit;
   
    reg  [15:0] A, B;
    wire A_gt_B, A_eq_B, A_lt_B;

    comparator_16bit uut (A, B, A_gt_B, A_eq_B, A_lt_B);
    
    initial begin
        $monitor("Time=%0t A=%d B=%d | A_gt_B=%b A_eq_B=%b A_lt_B=%b",
                 $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 16'd25; B = 16'd20; #10; 
        A = 16'd15; B = 16'd30; #10; 
        A = 16'd50; B = 16'd50; #10; 

        $finish;
    end
endmodule

