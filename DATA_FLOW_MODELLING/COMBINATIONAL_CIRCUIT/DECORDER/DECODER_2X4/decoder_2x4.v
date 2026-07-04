// Halima Diyauddeen — 2026 — 2x4 Decoder (DUT)

/*
 * Module Name : decoder_2x4
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module decoder_2x4 (
    input  a,          // Most Significant Bit (MSB)
    input  b,          // Least Significant Bit (LSB)
    output y0,         // Output 0
    output y1,         // Output 1
    output y2,         // Output 2
    output y3          // Output 3
);

    // Generate decoder outputs
    assign y0 = ~a & ~b;
    assign y1 = ~a &  b;
    assign y2 =  a & ~b;
    assign y3 =  a &  b;

endmodule
