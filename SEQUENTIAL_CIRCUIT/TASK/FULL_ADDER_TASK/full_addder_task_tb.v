// Halima Diyauddeen — 2026 — Full Adder Task (Testbench)

/*
 * Module Name : full_adder_task_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module full_adder_task_tb;

    // Testbench signals
    reg a;
    reg b;
    reg cin;

    wire sum;
    wire carry;

    // Instantiate the Design Under Test (DUT)
    full_adder_task dut (

        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .carry(carry)

    );

    // Monitor the input and output signals
    initial
        $monitor("Time=%0t | A=%b | B=%b | Cin=%b | Sum=%b | Carry=%b",
                  $time, a, b, cin, sum, carry);

    // Apply random test vectors
    initial begin

        repeat (10) begin

            {a, b, cin} = $random;
            #10;

        end

    end

endmodule
