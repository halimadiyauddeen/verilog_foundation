// Halima Diyauddeen — 2026 — OR Gate (DUT)

/*
 * Module Name : or_gate
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module or_gate (
    input  a,      // First input
    input  b,      // Second input
    output y       // OR gate output
);

    // Implement the OR gate using the built-in gate primitive
    or (y, a, b);

endmodule
