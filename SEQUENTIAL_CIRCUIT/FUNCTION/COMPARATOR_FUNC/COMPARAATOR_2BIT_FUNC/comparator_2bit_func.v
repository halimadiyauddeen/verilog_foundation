// Halima Diyauddeen — 2026 — 2-Bit Comparator (DUT)

/*
 * Module Name : comparator_2bit
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module comparator_2bit_func (

    input  [1:0] a,
    input  [1:0] b,

    output gt,
    output eq,
    output lt
);

    // Function definition
    function [2:0] comparator_func;
        input [1:0] a;
        input [1:0] b;

        begin
            if (a > b)
                comparator_func = 3'b100;
            else if (a == b)
                comparator_func = 3'b010;
            else
                comparator_func = 3'b001;
        end
    endfunction

    // Function call
    assign {gt, eq, lt} = comparator_func(a, b);

endmodule
