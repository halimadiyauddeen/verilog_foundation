// Halima Diyauddeen — 2026 — All Logic Gates (DUT)

/*
 * Module Name : all_logic_gates
 * Modeling    : Dataflow
 * Description : Demonstrates all basic logic gates
 */

module all_logic_gates (
    input  a,              // First input
    input  b,              // Second input

    output and_out,        // AND gate output
    output or_out,         // OR gate output
    output not_a,          // NOT of input A
    output not_b,          // NOT of input B
    output nand_out,       // NAND gate output
    output nor_out,        // NOR gate output
    output xor_out,        // XOR gate output
    output xnor_out        // XNOR gate output
);

    // AND Gate
    assign and_out = a & b;

    // OR Gate
    assign or_out = a | b;

    // NOT Gates
    assign not_a = ~a;
    assign not_b = ~b;

    // NAND Gate
    assign nand_out = ~(a & b);

    // NOR Gate
    assign nor_out = ~(a | b);

    // XOR Gate
    assign xor_out = a ^ b;

    // XNOR Gate
    assign xnor_out = ~(a ^ b);

endmodule
