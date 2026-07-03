// Halima Diyauddeen — 2026 — XOR Gate (DUT)

/*
 * Module Name : xor_gate
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module xor_gate (
    input  a,      // First input
    input  b,      // Second input
    output y       // XOR gate output
);

    // Perform the XOR operation
    assign y = a ^ b;

endmodule
