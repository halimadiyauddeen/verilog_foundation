// Halima Diyauddeen — 2026 — 8x3 Encoder (DUT)

/*
 * Module Name : encoder_8x3
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module encoder_8x3 (
    input  d0,
    input  d1,
    input  d2,
    input  d3,
    input  d4,
    input  d5,
    input  d6,
    input  d7,

    output y2,
    output y1,
    output y0
);

    // Generate encoded outputs
    assign y2 = d4 | d5 | d6 | d7;
    assign y1 = d2 | d3 | d6 | d7;
    assign y0 = d1 | d3 | d5 | d7;

endmodule
