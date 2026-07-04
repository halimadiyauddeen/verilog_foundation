// Halima Diyauddeen — 2026 — 4x2 Encoder (DUT)

/*
 * Module Name : encoder_4x2
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module encoder_4x2 (
    input  d0,      // Input 0
    input  d1,      // Input 1
    input  d2,      // Input 2
    input  d3,      // Input 3

    output y1,      // Most Significant Bit
    output y0       // Least Significant Bit
);

    // Generate encoded outputs
    assign y1 = d2 | d3;
    assign y0 = d1 | d3;

endmodule
