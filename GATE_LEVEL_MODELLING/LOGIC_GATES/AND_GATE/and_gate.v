// Halima Diyauddeen — 2026 — AND Gate (DUT)

/*
 * Module Name : and_gate
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module and_gate (
    input  a,      // First input
    input  b,      // Second input
    output y       // AND gate output
);

    // Implement the AND gate using the built-in gate primitive
    and (y, a, b);

endmodule
