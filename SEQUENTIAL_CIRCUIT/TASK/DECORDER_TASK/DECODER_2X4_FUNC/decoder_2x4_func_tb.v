// Halima Diyauddeen — 2026 — 2×4 Decoder (Testbench)

/*
 * Module Name : decoder_2x4_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module decoder_2x4_func_tb;

    // Testbench signals
    reg [1:0] in;

    wire [3:0] y;

    // Instantiate the Design Under Test (DUT)
    decoder_2x4_func dut (
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
