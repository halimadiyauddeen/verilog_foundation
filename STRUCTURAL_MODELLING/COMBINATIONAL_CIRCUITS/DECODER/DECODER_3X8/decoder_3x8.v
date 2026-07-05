// Halima Diyauddeen — 2026 — 3×8 Decoder (DUT)

/*
 * Module Name : decoder_3x8
 * Modeling    : Structural
 * Description : Design Under Test (DUT)
 */

module decoder_3x8 (
    input  a,
    input  b,
    input  c,

    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7
);

    // Internal wires
    wire a_bar;
    wire b_bar;
    wire c_bar;

    // Invert inputs
    not (a_bar, a);
    not (b_bar, b);
    not (c_bar, c);

    // Generate outputs
    and (y0, a_bar, b_bar, c_bar);
    and (y1, a_bar, b_bar, c);
    and (y2, a_bar, b, c_bar);
    and (y3, a_bar, b, c);
    and (y4, a, b_bar, c_bar);
    and (y5, a, b_bar, c);
    and (y6, a, b, c_bar);
    and (y7, a, b, c);

endmodule
