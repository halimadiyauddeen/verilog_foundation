// Halima Diyauddeen — 2026 — Half Adder (DUT)

/*
 * Module Name : half_adder
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module half_adder (
    input  a,
    input  b,

    output reg sum,
    output reg carry
);

    always @(*) begin
        sum   = a ^ b;
        carry = a & b;
    end

endmodule
