module tb_decoder_3to8;
    reg [2:0] din;
    reg en;
    wire [7:0] dout;

    decoder_3to8 uut (.din(din), .en(en), .dout(dout));

    initial begin
        $monitor("Time=%0t | en=%b | din=%b | dout=%b", $time, en, din, dout);

        en = 1;  
        din = 3'b000; #10;
        din = 3'b001; #10;
        din = 3'b010; #10;
        din = 3'b011; #10;
        din = 3'b100; #10;
        din = 3'b101; #10;
        din = 3'b110; #10;
        din = 3'b111; #10;

        en = 0; 
        din = 3'b101; #10;

        $finish;
    end
endmodule
