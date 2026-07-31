// Halima Diyauddeen — 2026 — Half Subtractor (DUT)

/*
 * Module Name : half_subtractor
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module half_subtractor_func (

    input  a,
    input  b,

    output diff,
    output borrow
);

    // Function definition
    function [1:0] half_subtractor_func;
        input a;
        input b;

        begin
            half_subtractor_func[1] = (~a) & b;
            half_subtractor_func[0] = a ^ b;
        end
    endfunction

    // Function call
    assign {borrow, diff} = half_subtractor_func(a, b);

endmodule
