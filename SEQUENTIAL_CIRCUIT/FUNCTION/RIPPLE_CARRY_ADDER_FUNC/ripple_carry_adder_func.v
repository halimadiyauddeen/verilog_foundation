// Halima Diyauddeen — 2026 — 4-Bit Ripple Carry Adder (DUT)

/*
 * Module Name : ripple_carry_adder
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module ripple_carry_adder_func (

    input  [3:0] a,
    input  [3:0] b,
    input        cin,

    output [3:0] sum,
    output       cout
);

    // Function definition
    function [4:0] rca_func;
        input [3:0] a;
        input [3:0] b;
        input       cin;

        begin
            rca_func = a + b + cin;
        end
    endfunction

    // Function call
    assign {cout, sum} = rca_func(a, b, cin);

endmodule
