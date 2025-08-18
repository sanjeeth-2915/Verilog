module mux4x1_tb;
  reg a,b,c,d;
  reg s0,s1;
  wire y;

  mux4x1 uut (
    .a(a), .b(b), .c(c), .d(d),
    .s0(s0), .s1(s1),
    .y(y)
  );
  
  initial begin 
    $monitor("a=%b b=%b c=%b d=%b s1=%b s0=%b | y=%b", a,b,c,d,s1,s0,y);

    a=1; b=0; c=0; d=0; s0=0; s1=0; #10;
    a=0; b=1; c=0; d=0; s0=1; s1=0; #10;
    a=0; b=0; c=1; d=0; s0=0; s1=1; #10;
    a=0; b=0; c=0; d=1; s0=1; s1=1; #10;

    $finish; 
  end
endmodule
  

  

