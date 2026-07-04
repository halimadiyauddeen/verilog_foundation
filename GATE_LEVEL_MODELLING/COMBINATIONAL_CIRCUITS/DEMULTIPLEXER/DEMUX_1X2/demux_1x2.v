// Halima Diyauddeen — 2026 — 1x2 DEMUX (DUT)

/*
 * Module Name : demux_1x2
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module demux_1x2 (
    input  d,          // Data input
    input  s,          // Select input

    output y0,         // Output 0
    output y1          // Output 1
);

    wire not_s;

    // Generate complement of the select input
    not (not_s, s);

    // Generate demultiplexer outputs
    and (y0, d, not_s);
    and (y1, d, s);

endmodule
