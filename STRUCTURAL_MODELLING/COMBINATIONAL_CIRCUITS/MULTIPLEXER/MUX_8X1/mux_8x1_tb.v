// Halima Diyauddeen — 2026 — 8×1 MUX Testbench

/*
 * Module Name : mux_8x1_tb
 * Description : Testbench for the 8×1 MUX DUT
 */

module mux_8x1_tb;

    // Testbench signals
    reg i0;
    reg i1;
    reg i2;
    reg i3;
    reg i4;
    reg i5;
    reg i6;
    reg i7;

    reg s2;
    reg s1;
    reg s0;

    wire y;

    // Instantiate the Design Under Test (DUT)
    mux_8x1 dut (
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .i4(i4),
        .i5(i5),
        .i6(i6),
        .i7(i7),
        .s2(s2),
        .s1(s1),
        .s0(s0),
        .y(y)
    );

    // Monitor the input and output signals
    initial
        $monitor("I0=%b | I1=%b | I2=%b | I3=%b | I4=%b | I5=%b | I6=%b | I7=%b | S2=%b | S1=%b | S0=%b | Y=%b",
                  i0, i1, i2, i3, i4, i5, i6, i7,
                  s2, s1, s0, y);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {i0, i1, i2, i3, i4, i5, i6, i7, s2, s1, s0} = $random;
            #10;
        end
    end

endmodule
