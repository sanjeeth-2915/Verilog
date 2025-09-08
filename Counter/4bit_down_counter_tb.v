module down_counter_tb;
    reg clk;
    reg reset;
    wire [3:0] count;

    down_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 1;
        #10 reset = 0;
        #100;
        $finish;
    end

    initial begin
        $monitor("Time=%0d, clk=%b, reset=%b, count=%b", $time, clk, reset, count);
    end
endmodule
