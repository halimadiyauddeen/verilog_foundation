// Halima Diyauddeen — 2026 — OR Gate (DUT)

/*
 * Module Name : or_gate
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module or_gate (
    input  a,      // First input
    input  b,      // Second input
    output y       // OR gate output
);

    // Perform the OR operation
    assign y = a | b;

endmodule
