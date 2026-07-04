// Halima Diyauddeen — 2026 — 4x1 MUX (DUT)

/*
 * Module Name : mux_4x1
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module mux_4x1 (
    input  i0,         // Input 0
    input  i1,         // Input 1
    input  i2,         // Input 2
    input  i3,         // Input 3

    input  s1,         // Most significant select input
    input  s0,         // Least significant select input

    output y           // MUX output
);

    wire not_s1;
    wire not_s0;

    wire w0;
    wire w1;
    wire w2;
    wire w3;

    // Generate complements of the select inputs
    not (not_s1, s1);
    not (not_s0, s0);

    // Generate intermediate outputs
    and (w0, i0, not_s1, not_s0);
    and (w1, i1, not_s1, s0);
    and (w2, i2, s1, not_s0);
    and (w3, i3, s1, s0);

    // Generate final output
    or (y, w0, w1, w2, w3);

endmodule
