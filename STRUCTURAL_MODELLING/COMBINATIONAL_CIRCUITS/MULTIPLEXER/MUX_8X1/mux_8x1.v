// Halima Diyauddeen — 2026 — 8×1 MUX (DUT)

/*
 * Module Name : mux_8x1
 * Modeling    : Structural
 * Description : Design Under Test (DUT)
 */

module mux_8x1 (
    input  i0,
    input  i1,
    input  i2,
    input  i3,
    input  i4,
    input  i5,
    input  i6,
    input  i7,

    input  s2,
    input  s1,
    input  s0,

    output y
);

    // Internal wires
    wire s2_bar;
    wire s1_bar;
    wire s0_bar;

    wire w0;
    wire w1;
    wire w2;
    wire w3;
    wire w4;
    wire w5;
    wire w6;
    wire w7;

    // Invert select lines
    not (s2_bar, s2);
    not (s1_bar, s1);
    not (s0_bar, s0);

    // Generate minterms
    and (w0, i0, s2_bar, s1_bar, s0_bar);
    and (w1, i1, s2_bar, s1_bar, s0);
    and (w2, i2, s2_bar, s1, s0_bar);
    and (w3, i3, s2_bar, s1, s0);
    and (w4, i4, s2, s1_bar, s0_bar);
    and (w5, i5, s2, s1_bar, s0);
    and (w6, i6, s2, s1, s0_bar);
    and (w7, i7, s2, s1, s0);

    // Generate output
    or (y, w0, w1, w2, w3, w4, w5, w6, w7);

endmodule
