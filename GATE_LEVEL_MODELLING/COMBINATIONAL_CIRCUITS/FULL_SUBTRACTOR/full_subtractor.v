// Halima Diyauddeen — 2026 — Full Subtractor (DUT)

/*
 * Module Name : full_subtractor
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module full_subtractor (
    input  a,          // Minuend
    input  b,          // Subtrahend
    input  bin,        // Borrow input

    output diff,       // Difference output
    output bout        // Borrow output
);

    wire xor1;
    wire not_a;
    wire and1;
    wire and2;
    wire and3;

    // Generate difference
    xor (xor1, a, b);
    xor (diff, xor1, bin);

    // Generate complement of A
    not (not_a, a);

    // Generate borrow terms
    and (and1, not_a, b);
    and (and2, not_a, bin);
    and (and3, b, bin);

    // Generate borrow output
    or (bout, and1, and2, and3);

endmodule
