// Halima Diyauddeen — 2026 — XNOR Gate (DUT)

/*
 * Module Name : xnor_gate
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module xnor_gate (
    input  a,      // First input
    input  b,      // Second input
    output y       // XNOR gate output
);

    // Implement the XNOR gate using the built-in gate primitive
    xnor (y, a, b);

endmodule
