// Halima Diyauddeen — 2026 — 2x1 Encoder (DUT)

/*
 * Module Name : encoder_2x1
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module encoder_2x1 (
    input  d0,      // Input 0
    input  d1,      // Input 1
    output y        // Encoded output
);

    // Generate encoded output
    assign y = d1;

endmodule
