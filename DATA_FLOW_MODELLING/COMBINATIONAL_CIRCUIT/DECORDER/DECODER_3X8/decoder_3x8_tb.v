// Halima Diyauddeen — 2026 — 3x8 Decoder Testbench

/*
 * Module Name : decoder_3x8_tb
 * Description : Testbench for the 3x8 Decoder DUT
 */

module decoder_3x8_tb;

    // Testbench signals
    reg a;
    reg b;
    reg c;

    wire y0;
    wire y1;
    wire y2;
    wire y3;
    wire y4;
    wire y5;
    wire y6;
    wire y7;

    // Instantiate the Design Under Test (DUT)
    decoder_3x8 dut (
        .a(a),
        .b(b),
        .c(c),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3),
        .y4(y4),
        .y5(y5),
        .y6(y6),
        .y7(y7)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b B=%b C=%b | Y0=%b Y1=%b Y2=%b Y3=%b Y4=%b Y5=%b Y6=%b Y7=%b",
                  a, b, c, y0, y1, y2, y3, y4, y5, y6, y7);

    // Apply test vectors
    initial begin
        a = 0; b = 0; c = 0; #10;
        a = 0; b = 0; c = 1; #10;
        a = 0; b = 1; c = 0; #10;
        a = 0; b = 1; c = 1; #10;
        a = 1; b = 0; c = 0; #10;
        a = 1; b = 0; c = 1; #10;
        a = 1; b = 1; c = 0; #10;
        a = 1; b = 1; c = 1; #10;
    end

endmodule
