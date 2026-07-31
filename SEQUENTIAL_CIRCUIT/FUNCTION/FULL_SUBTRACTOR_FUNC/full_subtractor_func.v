// Halima Diyauddeen — 2026 — Full Subtractor (DUT)

/*
 * Module Name : full_subtractor
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module full_subtractor_func (

    input  a,
    input  b,
    input  bin,

    output diff,
    output borrow
);

    // Function definition
    function [1:0] full_subtractor_func;
        input a;
        input b;
        input bin;

        begin
            full_subtractor_func[1] = (~a & b) | (~(a ^ b) & bin);
            full_subtractor_func[0] = a ^ b ^ bin;
        end
    endfunction

    // Function call
    assign {borrow, diff} = full_subtractor_func(a, b, bin);

endmodule
