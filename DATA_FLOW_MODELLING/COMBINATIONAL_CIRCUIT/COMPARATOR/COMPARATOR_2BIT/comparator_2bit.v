// Halima Diyauddeen — 2026 — 2-Bit Comparator (DUT)

/*
 * Module Name : comparator_2bit
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module comparator_2bit (
    input  a1,         // Most Significant Bit of A
    input  a0,         // Least Significant Bit of A
    input  b1,         // Most Significant Bit of B
    input  b0,         // Least Significant Bit of B

    output a_gt_b,     // A greater than B
    output a_eq_b,     // A equal to B
    output a_lt_b      // A less than B
);

    // Generate comparator outputs
    assign a_gt_b = (a1 & ~b1) |
                    (~(a1 ^ b1) & a0 & ~b0);

    assign a_eq_b = ~(a1 ^ b1) &
                    ~(a0 ^ b0);

    assign a_lt_b = (~a1 & b1) |
                    (~(a1 ^ b1) & ~a0 & b0);

endmodule
