// Halima Diyauddeen — 2026 — 8×3 Encoder Testbench

/*
 * Module Name : encoder_8x3_tb
 * Description : Testbench for the 8×3 Encoder DUT
 */

module encoder_8x3_tb;

    // Testbench signals
    reg i0;
    reg i1;
    reg i2;
    reg i3;
    reg i4;
    reg i5;
    reg i6;
    reg i7;

    wire y2;
    wire y1;
    wire y0;

    // Instantiate the Design Under Test (DUT)
    encoder_8x3 dut (
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .i4(i4),
        .i5(i5),
        .i6(i6),
        .i7(i7),
        .y2(y2),
        .y1(y1),
        .y0(y0)
    );

    // Monitor the input and output signals
    initial
        $monitor("I7=%b | I6=%b | I5=%b | I4=%b | I3=%b | I2=%b | I1=%b | I0=%b | Y=%b%b%b",
                  i7, i6, i5, i4, i3, i2, i1, i0,
                  y2, y1, y0);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {i7, i6, i5, i4, i3, i2, i1, i0} = $random;
            #10;
        end
    end

endmodule
