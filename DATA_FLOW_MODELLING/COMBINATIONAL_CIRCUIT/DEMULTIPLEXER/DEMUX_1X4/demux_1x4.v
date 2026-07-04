// Halima Diyauddeen — 2026 — 1x4 DEMUX (DUT)

/*
 * Module Name : demux_1x4
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module demux_1x4 (
    input  d,        // Data input
    input  s1,       // Most Significant Select
    input  s0,       // Least Significant Select

    output y0,       // Output 0
    output y1,       // Output 1
    output y2,       // Output 2
    output y3        // Output 3
);

    // Generate DEMUX outputs
    assign y0 = d & ~s1 & ~s0;
    assign y1 = d & ~s1 &  s0;
    assign y2 = d &  s1 & ~s0;
    assign y3 = d &  s1 &  s0;

endmodule
