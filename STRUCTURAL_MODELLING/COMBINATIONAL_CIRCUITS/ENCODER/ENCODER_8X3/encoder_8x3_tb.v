// Halima Diyauddeen — 2026 — 8×3 Encoder Testbench

/*
 * Module Name : encoder_8x3_tb
 * Description : Testbench for the 8×3 Encoder DUT
 */

module encoder_8x3_tb;

    // Testbench signals
    reg d0;
    reg d1;
    reg d2;
    reg d3;
    reg d4;
    reg d5;
    reg d6;
    reg d7;

    wire y2;
    wire y1;
    wire y0;

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
        $monitor("D0=%b | D1=%b | D2=%b | D3=%b | D4=%b | D5=%b | D6=%b | D7=%b | Y2=%b | Y1=%b | Y0=%b",
                  d0, d1, d2, d3, d4, d5, d6, d7,
                  y2, y1, y0);

    // Apply valid one-hot test vectors
    initial begin
        {d0,d1,d2,d3,d4,d5,d6,d7} = 8'b00000001; #10;
        {d0,d1,d2,d3,d4,d5,d6,d7} = 8'b00000010; #10;
        {d0,d1,d2,d3,d4,d5,d6,d7} = 8'b00000100; #10;
        {d0,d1,d2,d3,d4,d5,d6,d7} = 8'b00001000; #10;
        {d0,d1,d2,d3,d4,d5,d6,d7} = 8'b00010000; #10;
        {d0,d1,d2,d3,d4,d5,d6,d7} = 8'b00100000; #10;
        {d0,d1,d2,d3,d4,d5,d6,d7} = 8'b01000000; #10;
        {d0,d1,d2,d3,d4,d5,d6,d7} = 8'b10000000; #10;
    end

endmodule
