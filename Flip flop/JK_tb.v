module tb_jk_ff;
  reg clk, reset, J, K;
  wire Q;

  jk_ff uut (
    .clk(clk),
    .reset(reset),
    .J(J),
    .K(K),
    .Q(Q)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;  
  end

  initial begin
   
    $monitor("Time=%0t | reset=%b J=%b K=%b | Q=%b",
             $time, reset, J, K, Q);

    reset = 1; J = 0; K = 0; #10;
    reset = 0;

    
    J=0; K=0; #10;   
    J=0; K=1; #10; 
    J=1; K=0; #10;  
    J=1; K=1; #20;   

    $finish;
  end
endmodule
