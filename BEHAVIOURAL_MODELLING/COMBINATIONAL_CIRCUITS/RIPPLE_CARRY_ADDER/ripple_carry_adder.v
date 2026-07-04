// Halima Diyauddeen — 2026 — 4-Bit Ripple Carry Adder (DUT)

/*
 * Module Name : ripple_carry_adder
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module ripple_carry_adder (
    input  [3:0] a,
    input  [3:0] b,
    input        cin,

    output reg [3:0] sum,
    output reg       cout
);

    always @(*) begin
        {cout, sum} = a + b + cin;
    end

endmodule
