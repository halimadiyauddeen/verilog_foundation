// Halima Diyauddeen — 2026 — NAND Gate (DUT)

/*
 * Module Name : nand_gate
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module nand_gate (
    input  a,      // First input
    input  b,      // Second input
    output y       // NAND gate output
);

    // Perform the NAND operation
    assign y = ~(a & b);

endmodule
