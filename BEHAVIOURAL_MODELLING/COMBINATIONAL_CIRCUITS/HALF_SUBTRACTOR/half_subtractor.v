// Halima Diyauddeen — 2026 — Half Subtractor (DUT)

/*
 * Module Name : half_subtractor
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module half_subtractor (
    input  a,
    input  b,

    output reg diff,
    output reg borrow
);

    always @(*) begin
        diff   = a ^ b;
        borrow = ~a & b;
    end

endmodule
