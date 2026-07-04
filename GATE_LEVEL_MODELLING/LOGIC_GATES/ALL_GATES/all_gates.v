// Halima Diyauddeen — 2026 — All Gates (DUT)

/*
 * Module Name : all_gates
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module all_gates (
    input  a,          // First input
    input  b,          // Second input

    output and_out,    // AND gate output
    output or_out,     // OR gate output
    output nand_out,   // NAND gate output
    output nor_out,    // NOR gate output
    output xor_out,    // XOR gate output
    output xnor_out,   // XNOR gate output
    output not_a,      // Inverted A
    output not_b       // Inverted B
);

    // Implement logic gates using gate primitives
    and  (and_out,  a, b);
    or   (or_out,   a, b);
    nand (nand_out, a, b);
    nor  (nor_out,  a, b);
    xor  (xor_out,  a, b);
    xnor (xnor_out, a, b);
    not  (not_a,    a);
    not  (not_b,    b);

endmodule
