// Halima Diyauddeen — 2026 — NOR Gate (DUT)

/*
 * Module Name : nor_gate
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module nor_gate (
    input  a,      // First input
    input  b,      // Second input
    output y       // NOR gate output
);

    // Perform the NOR operation
    assign y = ~(a | b);

endmodule
