// Halima Diyauddeen — 2026 — NOR Gate (DUT)

/*
 * Module Name : nor_gate
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module nor_gate (
    input  a,      // First input
    input  b,      // Second input
    output y       // NOR gate output
);

    // Implement the NOR gate using the built-in gate primitive
    nor (y, a, b);

endmodule
