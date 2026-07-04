// Halima Diyauddeen — 2026 — 1x4 DEMUX (DUT)

/*
 * Module Name : demux_1x4
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module demux_1x4 (
    input  d,          // Data input
    input  s1,         // Most significant select input
    input  s0,         // Least significant select input

    output y0,         // Output 0
    output y1,         // Output 1
    output y2,         // Output 2
    output y3          // Output 3
);

    wire not_s1;
    wire not_s0;

    // Generate complements of the select inputs
    not (not_s1, s1);
    not (not_s0, s0);

    // Generate DEMUX outputs
    and (y0, d, not_s1, not_s0);
    and (y1, d, not_s1, s0);
    and (y2, d, s1, not_s0);
    and (y3, d, s1, s0);

endmodule
