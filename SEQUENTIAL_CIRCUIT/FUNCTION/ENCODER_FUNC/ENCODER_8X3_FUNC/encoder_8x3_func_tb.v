// Halima Diyauddeen — 2026 — 8×3 Encoder (Testbench)

/*
 * Module Name : encoder_8x3_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module encoder_8x3_func_tb;

    // Testbench signals
    reg d0;
    reg d1;
    reg d2;
    reg d3;
    reg d4;
    reg d5;
    reg d6;
    reg d7;

    wire [2:0] y;

    // Instantiate the Design Under Test (DUT)
    encoder_8x3_func dut (
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .d4(d4),
        .d5(d5),
        .d6(d6),
        .d7(d7),
        .y(y)
    );

    // Monitor the input and output signals
    initial
        $monitor("D0=%b | D1=%b | D2=%b | D3=%b | D4=%b | D5=%b | D6=%b | D7=%b | Y=%b",
                  d0, d1, d2, d3, d4, d5, d6, d7, y);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {d0, d1, d2, d3, d4, d5, d6, d7} = $random;
            #10;
        end
    end

endmodule
