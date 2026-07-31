// Halima Diyauddeen — 2026 — Half Subtractor Task (Testbench)

/*
 * Module Name : half_subtractor_task_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module half_subtractor_task_tb;

    // Testbench signals
    reg a;
    reg b;

    wire diff;
    wire borrow;

    // Instantiate the Design Under Test (DUT)
    half_subtractor_task dut (

        .a(a),
        .b(b),
        .diff(diff),
        .borrow(borrow)

    );

    // Monitor the input and output signals
    initial
        $monitor("Time=%0t | A=%b | B=%b | Diff=%b | Borrow=%b",
                  $time, a, b, diff, borrow);

    // Apply random test vectors
    initial begin

        repeat (10) begin

            {a, b} = $random;
            #10;

        end

    end

endmodule
