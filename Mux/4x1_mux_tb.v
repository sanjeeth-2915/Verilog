module 4x1_mux_tb;
  reg a,b,c,d;
  reg s0,s1;
  wire y;

  4x1_mux uut (.a(a),
               .b(b),
               .c(c),
               .d(d),
               .s0(s0),
               .s1(s1)
              );
  
  initial begin 

  $display( "%b %b %b %b | %b %b ", a,b,c,d,s0,s1);

  a=1; b=0; c=0; d=0; s0=0; s1=0; #10;
  a=0; b=1; c=0; d=0; s0=0; s1=0; #10;
  a=0; b=0; c=1; d=0; s0=0; s1=0; #10;
  a=0; b=0; c=0; d=1; s0=0; s1=0; #10;

  $finish 

  end
endmodule 
  

  

