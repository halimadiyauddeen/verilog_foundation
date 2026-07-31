// Halima Diyauddeen — 2026 — Full Adder Task (DUT)

/*
 * Module Name : full_adder_task
 * Modeling    : Task
 * Description : Design Under Test (DUT)
 */

module full_adder_task (

    input  a,
    input  b,
    input  cin,

    output reg sum,
    output reg carry
);

    // Task definition
    task full_adder;

        input  a;
        input  b;
        input  cin;

        output sum;
        output carry;

        begin

            sum   = a ^ b ^ cin;
            carry = (a & b) | (a & cin) | (b & cin);

        end

    endtask

    // Task call
    always @(*) begin

        full_adder(a, b, cin, sum, carry);

    end

endmodule
