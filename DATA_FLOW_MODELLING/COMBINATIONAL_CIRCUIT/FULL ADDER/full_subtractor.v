// Halima Diyauddeen — 2026 — Full Subtractor (DUT)

/*
 * Module Name : full_subtractor
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module full_subtractor (
    input  a,          // Minuend
    input  b,          // Subtrahend
    input  bin,        // Borrow input
    output diff,       // Difference output
    output bout        // Borrow output
);

    // Calculate the difference
    assign diff = a ^ b ^ bin;

    // Calculate the borrow output
    assign bout = (~a & b) | (~(a ^ b) & bin);

endmodule
