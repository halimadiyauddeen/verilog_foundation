// Halima Diyauddeen — 2026 — 2×4 Decoder (DUT)

/*
 * Module Name : decoder_2x4
 * Modeling    : Structural
 * Description : Design Under Test (DUT)
 */

module decoder_2x4 (
    input  a,
    input  b,

    output y0,
    output y1,
    output y2,
    output y3
);

    // Internal wires
    wire a_bar;
    wire b_bar;

    // Invert inputs
    not (a_bar, a);
    not (b_bar, b);

    // Generate outputs
    and (y0, a_bar, b_bar);
    and (y1, a_bar, b);
    and (y2, a, b_bar);
    and (y3, a, b);

endmodule
