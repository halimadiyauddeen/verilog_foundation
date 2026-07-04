// Halima Diyauddeen — 2026 — Half Adder (DUT)

/*
 * Module Name : half_adder
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module half_adder (
    input  a,          // First input
    input  b,          // Second input

    output sum,        // Sum output
    output carry       // Carry output
);

    // Generate sum
    xor (sum, a, b);

    // Generate carry
    and (carry, a, b);

endmodule
