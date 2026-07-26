// Halima Diyauddeen — 2026 — Half Adder (DUT)

/*
 * Module Name : half_adder
 * Modeling    : Structural
 * Description : Design Under Test (DUT)
 */

module half_adder (

    input  a,
    input  b,

    output sum,
    output carry
);

    // Sum
    xor (sum, a, b);

    // Carry
    and (carry, a, b);

endmodule
