// Halima Diyauddeen — 2026 — NOT Gate (DUT)

/*
 * Module Name : not_gate
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module not_gate (
    input  a,      // Input
    output y       // NOT gate output
);

    // Perform the NOT operation
    assign y = ~a;

endmodule
