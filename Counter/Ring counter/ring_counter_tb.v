module tb_ring_counter;
    reg clk;
    reg reset;
    wire [3:0] q;

    ring_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    initial clk = 0;
    always #5 clk = ~clk;  
    initial begin
        
        reset = 1;
        #10 reset = 0;
        #50;
        $finish;
    end
    initial begin
        $monitor("Time=%0t | q=%b", $time, q);
    end
endmodule
