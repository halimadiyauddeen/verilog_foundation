// Halima Diyauddeen — 2026 — 2x1 MUX (DUT)

/*
 * Module Name : mux_2x1
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module mux_2x1 (
    input  i0,      // Input 0
    input  i1,      // Input 1
    input  s,       // Select input

    output y        // Output
);

    // Generate MUX output
    assign y = (~s & i0) | (s & i1);

endmodule
