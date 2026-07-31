// Halima Diyauddeen — 2026 — Half Adder Task (Testbench)

/*
 * Module Name : half_adder_task_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module half_adder_task_tb;

    // Testbench signals
    reg a;
    reg b;

    wire sum;
    wire carry;

    // Instantiate the Design Under Test (DUT)
    half_adder_task dut (

        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)

    );

    // Monitor the input and output signals
    initial
        $monitor("Time=%0t | A=%b | B=%b | Sum=%b | Carry=%b",
                  $time, a, b, sum, carry);

    // Apply random test vectors
    initial begin

        repeat (10) begin

            {a, b} = $random;
            #10;

        end

    end

endmodule
