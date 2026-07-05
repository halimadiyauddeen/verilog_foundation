// Halima Diyauddeen — 2026 — 4×1 MUX (DUT)

/*
 * Module Name : mux_4x1
 * Modeling    : Structural
 * Description : Design Under Test (DUT)
 */

module mux_4x1 (
    input  i0,
    input  i1,
    input  i2,
    input  i3,
    input  s1,
    input  s0,

    output y
);

    // Internal wires
    wire s1_bar;
    wire s0_bar;

    wire w0;
    wire w1;
    wire w2;
    wire w3;

    // Invert select lines
    not (s1_bar, s1);
    not (s0_bar, s0);

    // Generate minterms
    and (w0, i0, s1_bar, s0_bar);
    and (w1, i1, s1_bar, s0);
    and (w2, i2, s1, s0_bar);
    and (w3, i3, s1, s0);

    // Output
    or (y, w0, w1, w2, w3);

endmodule
