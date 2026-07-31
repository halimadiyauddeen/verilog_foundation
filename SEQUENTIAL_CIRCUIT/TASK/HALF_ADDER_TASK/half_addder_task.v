// Halima Diyauddeen — 2026 — Half Adder Task (DUT)

/*
 * Module Name : half_adder_task
 * Modeling    : Task
 * Description : Design Under Test (DUT)
 */

module half_adder_task (

    input  a,
    input  b,

    output reg sum,
    output reg carry
);

    // Task definition
    task half_adder;

        input  a;
        input  b;

        output sum;
        output carry;

        begin

            sum   = a ^ b;
            carry = a & b;

        end

    endtask

    // Task call
    always @(*) begin

        half_adder(a, b, sum, carry);

    end

endmodule
