// Halima Diyauddeen — 2026 — XOR Gate (DUT)

/*
 * Module Name : xor_gate
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module xor_gate (
    input  a,      // First input
    input  b,      // Second input
    output y       // XOR gate output
);

    // Implement the XOR gate using the built-in gate primitive
    xor (y, a, b);

endmodule
