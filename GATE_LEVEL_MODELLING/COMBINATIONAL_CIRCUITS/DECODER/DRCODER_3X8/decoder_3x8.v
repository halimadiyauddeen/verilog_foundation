// Halima Diyauddeen — 2026 — 3x8 Decoder (DUT)

/*
 * Module Name : decoder_3x8
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module decoder_3x8 (
    input  a,          // Most significant input
    input  b,          // Middle input
    input  c,          // Least significant input

    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7
);

    wire not_a;
    wire not_b;
    wire not_c;

    // Generate complements of the inputs
    not (not_a, a);
    not (not_b, b);
    not (not_c, c);

    // Generate decoder outputs
    and (y0, not_a, not_b, not_c);
    and (y1, not_a, not_b, c);
    and (y2, not_a, b, not_c);
    and (y3, not_a, b, c);
    and (y4, a, not_b, not_c);
    and (y5, a, not_b, c);
    and (y6, a, b, not_c);
    and (y7, a, b, c);

endmodule
