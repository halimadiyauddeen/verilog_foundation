// Halima Diyauddeen — 2026 — 1-Bit Comparator (DUT)

/*
 * Module Name : comparator_1bit
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module comparator_1bit (
    input  a,          // First input
    input  b,          // Second input

    output greater,    // A > B
    output equal,      // A = B
    output less        // A < B
);

    wire not_a;
    wire not_b;

    // Generate complements of the inputs
    not (not_a, a);
    not (not_b, b);

    // Generate comparison outputs
    and  (greater, a, not_b);
    xnor (equal, a, b);
    and  (less, not_a, b);

endmodule
