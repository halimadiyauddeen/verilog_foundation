// Halima Diyauddeen — 2026 — 3×8 Decoder Testbench

/*
 * Module Name : decoder_3x8_tb
 * Description : Testbench for the 3×8 Decoder DUT
 */

module decoder_3x8_tb;

    // Testbench signals
    reg [2:0] a;

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
        $monitor("A=%b | Y0=%b | Y1=%b | Y2=%b | Y3=%b | Y4=%b | Y5=%b | Y6=%b | Y7=%b",
                  a, y0, y1, y2, y3, y4, y5, y6, y7);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            a = $random;
            #10;
        end
    end

endmodule
