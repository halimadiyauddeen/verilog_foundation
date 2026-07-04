// Halima Diyauddeen — 2026 — 2x4 Decoder Testbench

/*
 * Module Name : decoder_2x4_tb
 * Description : Testbench for the 2x4 Decoder DUT
 */

module decoder_2x4_tb;

    // Testbench signals
    reg a;
    reg b;

    wire y0;
    wire y1;
    wire y2;
    wire y3;

    // Instantiate the Design Under Test (DUT)
    decoder_2x4 dut (
        .a(a),
        .b(b),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
    );

    // Monitor the input and output signals
    initial
        $monitor("A = %b | B = %b | Y0 = %b | Y1 = %b | Y2 = %b | Y3 = %b",
                  a, b, y0, y1, y2, y3);

    // Apply test vectors
    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
    end

endmodule
