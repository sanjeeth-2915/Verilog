module 1:2_demux_tb;
reg sel;
  reg din;
  wire y0,y1;

  1:2_demux uut (.sel(sel),
                 .din(din),
                 .y0(y0),
                 .y1(y1)
                );

  initial begin 

    $monitor(" %b %b | %b %b " , sel,din,y0,y1);
// Test cases
    din = 1; sel = 0; #10;  // input -> y0
    din = 1; sel = 1; #10;  // input -> y1
    din = 0; sel = 0; #10;  // no output
    din = 0; sel = 1; #10;  // no output

    #20 $finish;
  end
endmodule
    
