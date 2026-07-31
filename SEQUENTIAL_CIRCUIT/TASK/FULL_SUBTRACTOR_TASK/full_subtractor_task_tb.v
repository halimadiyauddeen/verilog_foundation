// Halima Diyauddeen — 2026 — Full Subtractor Task (Testbench)

/*
 * Module Name : full_subtractor_task_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module full_subtractor_task_tb;

    // Testbench signals
    reg a;
    reg b;
    reg bin;

    wire diff;
    wire borrow;

    // Instantiate the Design Under Test (DUT)
    full_subtractor_task dut (

        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .borrow(borrow)

    );

    // Monitor the input and output signals
    initial
        $monitor("Time=%0t | A=%b | B=%b | Bin=%b | Diff=%b | Borrow=%b",
                  $time, a, b, bin, diff, borrow);

    // Apply random test vectors
    initial begin

        repeat (10) begin

            {a, b, bin} = $random;
            #10;

        end

    end

endmodule
