// Halima Diyauddeen — 2026 — Half Adder (DUT)

/*
 * Module Name : half_adder
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module half_adder_func (

    input  a,
    input  b,

    output sum,
    output carry
);

    // Function definition
    function [1:0] half_adder_func;
        input a;
        input b;

        begin
            half_adder_func[1] = a & b;
            half_adder_func[0] = a ^ b;
        end
    endfunction

    // Function call
    assign {carry, sum} = half_adder_func(a, b);

endmodule
