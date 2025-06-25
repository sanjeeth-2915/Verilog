`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2025 17:06:43
// Design Name: 
// Module Name: seven_segment_led_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module seven_segment_led_tb;

    // Testbench signals
    reg  [3:0] in;
    wire [6:0] out;

    // Instantiate the DUT (Device Under Test)
    seven_segment_led dut (
        .in(in),
        .out(out)
    );

    // Test sequence
    initial begin
        $display("Starting 7-seg test...");

        // Iterate through 0-9
        for (in = 0; in < 10; in = in + 1) begin
            #10; // wait 10 ns for output to settle
            $display("Input=%d, Output=%b", in, out);
        end

        $display("Test complete.");
        $stop; // end simulation
    end

endmodule
