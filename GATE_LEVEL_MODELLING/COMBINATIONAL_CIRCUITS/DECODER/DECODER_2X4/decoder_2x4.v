// Halima Diyauddeen — 2026 — 2x4 Decoder (DUT)

/*
 * Module Name : decoder_2x4
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module decoder_2x4 (
    input  a,          // Most significant input
    input  b,          // Least significant input

    output y0,         // Output 0
    output y1,         // Output 1
    output y2,         // Output 2
    output y3          // Output 3
);

    wire not_a;
    wire not_b;

    // Generate complements of the inputs
    not (not_a, a);
    not (not_b, b);

    // Generate decoder outputs
    and (y0, not_a, not_b);
    and (y1, not_a, b);
    and (y2, a, not_b);
    and (y3, a, b);

endmodule
