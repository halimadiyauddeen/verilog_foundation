// Halima Diyauddeen — 2026 — 3x8 Decoder (DUT)

/*
 * Module Name : decoder_3x8
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module decoder_3x8 (
    input  a,          // Most Significant Bit (MSB)
    input  b,          // Middle Bit
    input  c,          // Least Significant Bit (LSB)

    output y0,         // Output 0
    output y1,         // Output 1
    output y2,         // Output 2
    output y3,         // Output 3
    output y4,         // Output 4
    output y5,         // Output 5
    output y6,         // Output 6
    output y7          // Output 7
);

    // Generate decoder outputs
    assign y0 = ~a & ~b & ~c;
    assign y1 = ~a & ~b &  c;
    assign y2 = ~a &  b & ~c;
    assign y3 = ~a &  b &  c;
    assign y4 =  a & ~b & ~c;
    assign y5 =  a & ~b &  c;
    assign y6 =  a &  b & ~c;
    assign y7 =  a &  b &  c;

endmodule
