// Halima Diyauddeen — 2026 — 4-Bit Ripple Carry Adder Task (DUT)

/*
 * Module Name : ripple_carry_adder_task
 * Modeling    : Task
 * Description : Design Under Test (DUT)
 */

module ripple_carry_adder_task (

    input  [3:0] a,
    input  [3:0] b,
    input        cin,

    output reg [3:0] sum,
    output reg       cout
);

    // Internal carry signals
    reg c1;
    reg c2;
    reg c3;

    // Full Adder Task
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

    // Ripple Carry Adder
    always @(*) begin

        full_adder(a[0], b[0], cin, sum[0], c1);
        full_adder(a[1], b[1], c1,  sum[1], c2);
        full_adder(a[2], b[2], c2,  sum[2], c3);
        full_adder(a[3], b[3], c3,  sum[3], cout);

    end

endmodule
