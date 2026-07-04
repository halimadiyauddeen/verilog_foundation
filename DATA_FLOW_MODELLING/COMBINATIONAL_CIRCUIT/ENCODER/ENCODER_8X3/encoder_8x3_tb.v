// Halima Diyauddeen — 2026 — 8x3 Encoder Testbench

/*
 * Module Name : encoder_8x3_tb
 * Description : Testbench for the 8x3 Encoder DUT
 */

module encoder_8x3_tb;

    // Testbench signals
    reg d0, d1, d2, d3, d4, d5, d6, d7;

    wire y2, y1, y0;

    // Instantiate the Design Under Test (DUT)
    encoder_8x3 dut (
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .d4(d4),
        .d5(d5),
        .d6(d6),
        .d7(d7),
        .y2(y2),
        .y1(y1),
        .y0(y0)
    );

    // Monitor the input and output signals
    initial
        $monitor("D7D6D5D4D3D2D1D0 = %b%b%b%b%b%b%b%b | Y = %b%b%b",
                  d7,d6,d5,d4,d3,d2,d1,d0,
                  y2,y1,y0);

    // Apply valid one-hot test vectors
    initial begin
        {d7,d6,d5,d4,d3,d2,d1,d0}=8'b00000001; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0}=8'b00000010; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0}=8'b00000100; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0}=8'b00001000; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0}=8'b00010000; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0}=8'b00100000; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0}=8'b01000000; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0}=8'b10000000; #10;
    end

endmodule
