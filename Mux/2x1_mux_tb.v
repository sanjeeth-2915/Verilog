module 2x1_mux_tb;

reg a,b,sel;
wire y;

2x1_mux uut (.a(a),
             .b(b),
             .sel(sel),
             .y(y));

initial begin
    $display("Time\t a b sel | y");
    $monitor("%4t\t %b %b  %b   | %b", $time, a, b, sel, y);

    sel = 0; a = 0; b = 0; #10;
    sel = 0; a = 0; b = 1; #10;
    sel = 0; a = 1; b = 0; #10;
    sel = 0; a = 1; b = 1; #10;
    sel = 1; a = 0; b = 0; #10;
    sel = 1; a = 0; b = 1; #10;
    sel = 1; a = 1; b = 0; #10;
    sel = 1; a = 1; b = 1; #10;

    $finish;
  end
endmodule
