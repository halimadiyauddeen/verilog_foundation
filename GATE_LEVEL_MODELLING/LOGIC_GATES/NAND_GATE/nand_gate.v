// Halima Diyauddeen — 2026 — NAND Gate (DUT)

/*
 * Module Name : nand_gate
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module nand_gate (
    input  a,      // First input
    input  b,      // Second input
    output y       // NAND gate output
);

    // Implement the NAND gate using the built-in gate primitive
    nand (y, a, b);

endmodule
