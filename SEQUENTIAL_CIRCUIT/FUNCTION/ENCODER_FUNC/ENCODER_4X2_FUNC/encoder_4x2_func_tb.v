// Halima Diyauddeen — 2026 — 4×2 Encoder (Testbench)

/*
 * Module Name : encoder_4x2_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module encoder_4x2_func_tb;

    // Testbench signals
    reg d0;
    reg d1;
    reg d2;
    reg d3;

    wire [1:0] y;

    // Instantiate the Design Under Test (DUT)
    encoder_4x2_func dut (
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .y(y)
    );

    // Monitor the input and output signals
    initial
        $monitor("D0=%b | D1=%b | D2=%b | D3=%b | Y=%b",
                  d0, d1, d2, d3, y);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {d0, d1, d2, d3} = $random;
            #10;
        end
    end

endmodule
