// Halima Diyauddeen — 2026 — Moore Overlap Sequence Detector (Testbench)

/*
 * Module Name : moore_overlap_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module moore_overlap_tb;

    // Testbench signals
    reg clk;
    reg rst;
    reg x;

    wire y;

    // Instantiate the Design Under Test (DUT)
    moore_overlap dut (

        .clk(clk),
        .rst(rst),
        .x(x),
        .y(y)

    );

    // Clock generation
    initial
        clk = 0;

    always #5 clk = ~clk;

    // Monitor the input and output signals
    initial
        $monitor("Time=%0t | RST=%b | X=%b | Y=%b",
                  $time, rst, x, y);

    // Apply test vectors
    initial begin

        // Reset
        rst = 1;
        x   = 0;

        #10;
        rst = 0;

        // Input sequence: 1011011
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 1; #10;

        // Additional inputs
        x = 0; #10;
        x = 0; #10;
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 1; #10;

    end

endmodule
