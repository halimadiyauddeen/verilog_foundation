// Halima Diyauddeen — 2026 — Full Adder (DUT)

/*
 * Module Name : full_adder
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module full_adder_func (

    input  a,
    input  b,
    input  cin,

    output sum,
    output carry
);

    // Function definition
    function [1:0] full_adder_func;
        input a;
        input b;
        input cin;

        begin
            full_adder_func[1] = (a & b) | (a & cin) | (b & cin);
            full_adder_func[0] = a ^ b ^ cin;
        end
    endfunction

    // Function call
    assign {carry, sum} = full_adder_func(a, b, cin);

endmodule
