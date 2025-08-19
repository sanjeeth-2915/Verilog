module 1:4_demux_tb;
reg sel,din;
wire a,b,c,d;

  1:4_demux uut (.a(a),
                 .b(b),
                 .c(c),
                 .d(d),
                 .sel(sel),
                 .din(din));

  initial begin 
    $monitor(" Time=%0t %b | %b %b |%b %b %b %b " , $time,din,sel,a,b,c,d);

    din=1;
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    din=0;
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish 

  end 
endmodule 
    

    
    
    

    
