// Halima Diyauddeen — 2026 — 4x2 Encoder Testbench

/*
 * Module Name : encoder_4x2_tb
 * Description : Testbench for the 4x2 Encoder DUT
 */

module encoder_4x2_tb;

    // Testbench signals
    reg d0;
    reg d1;
    reg d2;
    reg d3;

    wire y1;
    wire y0;

    // Instantiate the Design Under Test (DUT)
    encoder_4x2 dut (
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .y1(y1),
        .y0(y0)
    );

    // Monitor the input and output signals
    initial
        $monitor("D0=%b D1=%b D2=%b D3=%b | Y1=%b Y0=%b",
                  d0, d1, d2, d3, y1, y0);

    // Apply test vectors (one active input at a time)
    initial begin
        d0 = 1; d1 = 0; d2 = 0; d3 = 0; #10;
        d0 = 0; d1 = 1; d2 = 0; d3 = 0; #10;
        d0 = 0; d1 = 0; d2 = 1; d3 = 0; #10;
        d0 = 0; d1 = 0; d2 = 0; d3 = 1; #10;
    end

endmodule
