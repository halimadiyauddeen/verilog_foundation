// Halima Diyauddeen — 2026 — 4x1 MUX Testbench

/*
 * Module Name : mux_4x1_tb
 * Description : Testbench for the 4x1 MUX DUT
 */

module mux_4x1_tb;

    // Testbench signals
    reg i0;
    reg i1;
    reg i2;
    reg i3;
    reg s1;
    reg s0;

    wire y;

    // Instantiate the Design Under Test (DUT)
    mux_4x1 dut (
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .s1(s1),
        .s0(s0),
        .y(y)
    );

    // Monitor the input and output signals
    initial
        $monitor("I0=%b I1=%b I2=%b I3=%b | S1=%b S0=%b | Y=%b",
                  i0, i1, i2, i3, s1, s0, y);

    // Apply test vectors
    initial begin
        // Select I0
        i0 = 1; i1 = 0; i2 = 0; i3 = 0; s1 = 0; s0 = 0; #10;

        // Select I1
        i0 = 0; i1 = 1; i2 = 0; i3 = 0; s1 = 0; s0 = 1; #10;

        // Select I2
        i0 = 0; i1 = 0; i2 = 1; i3 = 0; s1 = 1; s0 = 0; #10;

        // Select I3
        i0 = 0; i1 = 0; i2 = 0; i3 = 1; s1 = 1; s0 = 1; #10;

        // Additional verification
        i0 = 0; i1 = 1; i2 = 1; i3 = 0; s1 = 0; s0 = 0; #10;
        i0 = 1; i1 = 0; i2 = 1; i3 = 0; s1 = 0; s0 = 1; #10;
        i0 = 1; i1 = 1; i2 = 0; i3 = 1; s1 = 1; s0 = 0; #10;
        i0 = 1; i1 = 0; i2 = 1; i3 = 1; s1 = 1; s0 = 1; #10;

    end

endmodule
