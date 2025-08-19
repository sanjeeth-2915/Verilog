module tb_decoder_2to4;
    reg [1:0] din;
    reg en;
    wire [3:0] dout;

    decoder_2to4 uut (.din(din), 
                      .en(en), 
                      .dout(dout));

    initial begin
        $monitor("Time=%0t | en=%b | din=%b | dout=%b", $time, en, din, dout);

        en = 1; 
        din = 2'b00; #10;
        din = 2'b01; #10;
        din = 2'b10; #10;
        din = 2'b11; #10;

        en = 0; 
        din = 2'b10; #10;

        $finish;
    end
endmodule
