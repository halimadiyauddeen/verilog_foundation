// Halima Diyauddeen — 2026 — Half Subtractor (DUT)

/*
 * Module Name : half_subtractor
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module half_subtractor (
    input  a,          // Minuend
    input  b,          // Subtrahend

    output diff,       // Difference output
    output borrow      // Borrow output
);

    wire not_a;

    // Generate difference
    xor (diff, a, b);

    // Generate complement of A
    not (not_a, a);

    // Generate borrow
    and (borrow, not_a, b);

endmodule
