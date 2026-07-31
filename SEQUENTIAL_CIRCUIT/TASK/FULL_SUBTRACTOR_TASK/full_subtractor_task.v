// Halima Diyauddeen — 2026 — Full Subtractor Task (DUT)

/*
 * Module Name : full_subtractor_task
 * Modeling    : Task
 * Description : Design Under Test (DUT)
 */

module full_subtractor_task (

    input  a,
    input  b,
    input  bin,

    output reg diff,
    output reg borrow
);

    // Task definition
    task full_subtractor;

        input  a;
        input  b;
        input  bin;

        output diff;
        output borrow;

        begin

            diff   = a ^ b ^ bin;
            borrow = ((~a) & b) | ((~a) & bin) | (b & bin);

        end

    endtask

    // Task call
    always @(*) begin

        full_subtractor(a, b, bin, diff, borrow);

    end

endmodule
