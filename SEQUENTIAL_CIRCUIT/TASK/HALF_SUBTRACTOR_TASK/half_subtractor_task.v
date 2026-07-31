// Halima Diyauddeen — 2026 — Half Subtractor Task (DUT)

/*
 * Module Name : half_subtractor_task
 * Modeling    : Task
 * Description : Design Under Test (DUT)
 */

module half_subtractor_task (

    input  a,
    input  b,

    output reg diff,
    output reg borrow
);

    // Task definition
    task half_subtractor;

        input  a;
        input  b;

        output diff;
        output borrow;

        begin

            diff   = a ^ b;
            borrow = (~a) & b;

        end

    endtask

    // Task call
    always @(*) begin

        half_subtractor(a, b, diff, borrow);

    end

endmodule
