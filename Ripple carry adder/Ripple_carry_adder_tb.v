module tb_ripple_carry_adder_4bit;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    ripple_carry_adder_4bit uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
       
        $display("Time\t a    b    cin | sum  cout");
      
        a = 4'b0001; b = 4'b0010; cin = 0; #10;
        $display("%0t\t %b %b  %b  | %b  %b", $time, a, b, cin, sum, cout);

        a = 4'b1111; b = 4'b0001; cin = 0; #10;
        $display("%0t\t %b %b  %b  | %b  %b", $time, a, b, cin, sum, cout);

        a = 4'b1010; b = 4'b0101; cin = 1; #10;
        $display("%0t\t %b %b  %b  | %b  %b", $time, a, b, cin, sum, cout);

        a = 4'b1001; b = 4'b0110; cin = 0; #10;
        $display("%0t\t %b %b  %b  | %b  %b", $time, a, b, cin, sum, cout);
        
        $finish;
    end
endmodule
