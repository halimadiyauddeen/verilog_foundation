// Halima Diyauddeen — 2026 — 1x2 DEMUX (DUT)

/*
 * Module Name : demux_1x2
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module demux_1x2 (
    input  d,      // Data input
    input  s,      // Select input

    output y0,     // Output 0
    output y1      // Output 1
);

    // Generate DEMUX outputs
    assign y0 = d & ~s;
    assign y1 = d &  s;

endmodule// Halima Diyauddeen — 2026 — 1x2 DEMUX (DUT)

/*
 * Module Name : demux_1x2
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module demux_1x2 (
    input  d,      // Data input
    input  s,      // Select input

    output y0,     // Output 0
    output y1      // Output 1
);

    // Generate DEMUX outputs
    assign y0 = d & ~s;
    assign y1 = d &  s;

endmodule
