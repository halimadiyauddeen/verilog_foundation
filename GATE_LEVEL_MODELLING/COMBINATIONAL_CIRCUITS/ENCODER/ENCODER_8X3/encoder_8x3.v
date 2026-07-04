// Halima Diyauddeen — 2026 — 8x3 Encoder (DUT)

/*
 * Module Name : encoder_8x3
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module encoder_8x3 (
    input  d0,         // Input 0
    input  d1,         // Input 1
    input  d2,         // Input 2
    input  d3,         // Input 3
    input  d4,         // Input 4
    input  d5,         // Input 5
    input  d6,         // Input 6
    input  d7,         // Input 7

    output y2,         // Most significant output
    output y1,
    output y0          // Least significant output
);

    // Generate encoder outputs
    or (y2, d4, d5, d6, d7);
    or (y1, d2, d3, d6, d7);
    or (y0, d1, d3, d5, d7);

endmodule
