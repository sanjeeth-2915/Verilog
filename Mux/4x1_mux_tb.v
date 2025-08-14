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

  

  

