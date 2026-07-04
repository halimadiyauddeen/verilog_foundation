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
        $monitor("D3D2D1D0 = %b%b%b%b | Y = %b%b",
                  d3, d2, d1, d0, y1, y0);

    // Apply valid one-hot test vectors
    initial begin
        {d3,d2,d1,d0} = 4'b0001; #10; // D0 active
        {d3,d2,d1,d0} = 4'b0010; #10; // D1 active
        {d3,d2,d1,d0} = 4'b0100; #10; // D2 active
        {d3,d2,d1,d0} = 4'b1000; #10; // D3 active
    end

endmodule
