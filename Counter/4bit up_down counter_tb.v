module up_down_counter_tb;
    reg clk;
    reg reset;
    reg up_down;
    wire [3:0] count;

  
    up_down_counter uut (
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .count(count)
    );

    initial 
      clk = 0;
    always #5 
      clk = ~clk;

    initial begin
        reset = 1;
        up_down = 1; 
        #10 reset = 0;
        #100 up_down = 0; 
        #100;
        $finish;
    end

    initial begin
        $monitor("Time=%0d, clk=%b, reset=%b, up_down=%b, count=%b", $time, clk, reset, up_down, count);
    end
endmodule
