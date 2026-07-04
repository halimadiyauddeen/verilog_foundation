// Halima Diyauddeen — 2026 — 4x1 MUX (DUT)

/*
 * Module Name : mux_4x1
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module mux_4x1 (
    input  i0,      // Input 0
    input  i1,      // Input 1
    input  i2,      // Input 2
    input  i3,      // Input 3
    input  s1,      // Most Significant Select
    input  s0,      // Least Significant Select

    output y        // Output
);

    // Generate MUX output
    assign y = (~s1 & ~s0 & i0) |
               (~s1 &  s0 & i1) |
               ( s1 & ~s0 & i2) |
               ( s1 &  s0 & i3);

endmodule
