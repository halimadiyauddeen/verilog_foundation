// Halima Diyauddeen — 2026 — 4×2 Encoder Testbench

/*
 * Module Name : encoder_4x2_tb
 * Description : Testbench for the 4×2 Encoder DUT
 */

module encoder_4x2_tb;

    // Testbench signals
    reg i0;
    reg i1;
    reg i2;
    reg i3;

    wire y0;
    wire y1;

    // Instantiate the Design Under Test (DUT)
    encoder_4x2 dut (
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .y0(y0),
        .y1(y1)
    );

    // Monitor the input and output signals
    initial
        $monitor("I0=%b | I1=%b | I2=%b | I3=%b | Y1=%b | Y0=%b",
                  i0, i1, i2, i3, y1, y0);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {i3, i2, i1, i0} = $random;
            #10;
        end
    end

endmodule
