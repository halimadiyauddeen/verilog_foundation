// Halima Diyauddeen — 2026 — Half Subtractor (DUT)

/*
 * Module Name : half_subtractor
 * Modeling    : Structural
 * Description : Design Under Test (DUT)
 */

module half_subtractor (

    input  a,
    input  b,

    output diff,
    output borrow
);

    // Internal wire
    wire nota;

    // Difference
    xor (diff, a, b);

    // Borrow
    not (nota, a);
    and (borrow, nota, b);

endmodule
