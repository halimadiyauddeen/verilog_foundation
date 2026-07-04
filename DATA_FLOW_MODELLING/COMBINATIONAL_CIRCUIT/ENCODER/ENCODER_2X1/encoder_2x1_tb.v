// Halima Diyauddeen — 2026 — 2x1 Encoder Testbench

/*
 * Module Name : encoder_2x1_tb
 * Description : Testbench for the 2x1 Encoder DUT
 */

module encoder_2x1_tb;

    // Testbench signals
    reg d0;
    reg d1;

    wire y;

    // Instantiate the Design Under Test (DUT)
    encoder_2x1 dut (
        .d0(d0),
        .d1(d1),
        .y(y)
    );

    // Monitor the input and output signals
    initial
        $monitor("D0 = %b | D1 = %b | Y = %b",
                  d0, d1, y);

    // Apply test vectors (valid one-hot inputs)
    initial begin
        d0 = 1; d1 = 0; #10;
        d0 = 0; d1 = 1; #10;
    end

endmodule
