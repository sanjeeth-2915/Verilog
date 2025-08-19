module tb_encoder_4to2;
    reg [3:0] din;
    wire [1:0] dout;

    encoder_4to2 uut (.din(din), .dout(dout));

    initial begin
        $monitor("Time=%0t | din=%b | dout=%b", $time, din, dout);

        din = 4'b0001; #10;
        din = 4'b0010; #10;
        din = 4'b0100; #10;
        din = 4'b1000; #10;
        din = 4'b0000; #10;
        $finish;
    end
endmodule

    
    

