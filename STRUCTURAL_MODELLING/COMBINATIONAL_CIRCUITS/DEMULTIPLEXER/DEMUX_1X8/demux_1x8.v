// Halima Diyauddeen — 2026 — 1×8 DEMUX (DUT)

/*
 * Module Name : demux_1x8
 * Modeling    : Structural
 * Description : Design Under Test (DUT)
 */

module demux_1x8 (
    input  d,
    input  s2,
    input  s1,
    input  s0,

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
    wire s2_bar;
    wire s1_bar;
    wire s0_bar;

    // Invert select lines
    not (s2_bar, s2);
    not (s1_bar, s1);
    not (s0_bar, s0);

    // Generate outputs
    and (y0, d, s2_bar, s1_bar, s0_bar);
    and (y1, d, s2_bar, s1_bar, s0);
    and (y2, d, s2_bar, s1, s0_bar);
    and (y3, d, s2_bar, s1, s0);
    and (y4, d, s2, s1_bar, s0_bar);
    and (y5, d, s2, s1_bar, s0);
    and (y6, d, s2, s1, s0_bar);
    and (y7, d, s2, s1, s0);

endmodule
