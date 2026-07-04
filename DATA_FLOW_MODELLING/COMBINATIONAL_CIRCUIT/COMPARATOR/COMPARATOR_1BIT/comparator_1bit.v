// Halima Diyauddeen — 2026 — 1-Bit Comparator (DUT)

/*
 * Module Name : comparator_1bit
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module comparator_1bit (
    input  a,          // First input
    input  b,          // Second input

    output a_gt_b,     // A greater than B
    output a_eq_b,     // A equal to B
    output a_lt_b      // A less than B
);

    // Generate comparator outputs
    assign a_gt_b =  a & ~b;
    assign a_eq_b = ~(a ^ b);
    assign a_lt_b = ~a &  b;

endmodule
