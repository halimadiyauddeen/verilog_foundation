// Halima Diyauddeen — 2026 — 3×8 Decoder (Testbench)

/*
 * Module Name : decoder_3x8_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module decoder_3x8__func_tb;

    // Testbench signals
    reg [2:0] in;

    wire [7:0] y;

    // Instantiate the Design Under Test (DUT)
    decoder_3x8_func dut (
        .in(in),
        .y(y)
    );

    // Monitor the input and output signals
    initial
        $monitor("IN=%b | Y=%b", in, y);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            in = $random;
            #10;
        end
    end

endmodule
