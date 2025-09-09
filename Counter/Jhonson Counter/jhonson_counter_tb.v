module tb_johnson_counter;
    reg clk;
    reg reset;
    wire [3:0] q;
  
    johnson_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
       
        $monitor("Time=%0t | reset=%b | q=%b", $time, reset, q);
        
        reset = 1;
        #10;
        reset = 0;
        #100;

        $finish;
    end
endmodule
