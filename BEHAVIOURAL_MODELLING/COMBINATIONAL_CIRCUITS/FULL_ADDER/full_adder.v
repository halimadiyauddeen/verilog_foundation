// Halima Diyauddeen — 2026 — Full Adder (DUT)

/*
 * Module Name : full_adder
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module full_adder (
    input  a,
    input  b,
    input  cin,

    output reg sum,
    output reg carry
);

    always @(*) begin
        sum   = a ^ b ^ cin;
        carry = (a & b) | (b & cin) | (a & cin);
    end

endmodule
