// Halima Diyauddeen — 2026 — 4×2 Encoder (DUT)

/*
 * Module Name : encoder_4x2
 * Modeling    : Structural
 * Description : Design Under Test (DUT)
 */

module encoder_4x2 (
    input  d0,
    input  d1,
    input  d2,
    input  d3,

    output y1,
    output y0
);

    // Generate outputs
    or (y1, d2, d3);
    or (y0, d1, d3);

endmodule
