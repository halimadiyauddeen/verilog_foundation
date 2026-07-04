// Halima Diyauddeen — 2026 — 1x2 Decoder Testbench

/*
 * Module Name : decoder_1x2_tb
 * Description : Testbench for the 1x2 Decoder DUT
 */

module decoder_1x2_tb;

    // Testbench signal
    reg a;

    wire y0;
    wire y1;

    // Instantiate the Design Under Test (DUT)
    decoder_1x2 dut (
        .a(a),
        .y0(y0),
        .y1(y1)
    );

    // Monitor the input and output signals
    initial
        $monitor("A = %b | Y0 = %b | Y1 = %b",
                  a, y0, y1);

    // Apply test vectors
    initial begin
        a = 0; #10;
        a = 1; #10;
    end

endmodule
