// Halima Diyauddeen — 2026 — XNOR Gate (DUT)

/*
 * Module Name : xnor_gate
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module xnor_gate (
    input  a,      // First input
    input  b,      // Second input
    output y       // XNOR gate output
);

    // Perform the XNOR operation
    assign y = ~(a ^ b);

endmodule
