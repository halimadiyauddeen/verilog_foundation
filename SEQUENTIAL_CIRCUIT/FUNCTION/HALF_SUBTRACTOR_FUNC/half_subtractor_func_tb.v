// Halima Diyauddeen — 2026 — Half Subtractor (Testbench)

/*
 * Module Name : half_subtractor_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module half_subtractor_func_tb;

    // Testbench signals
    reg a;
    reg b;

    wire diff;
    wire borrow;

    // Instantiate the Design Under Test (DUT)
    half_subtractor_func dut (
        .a(a),
        .b(b),
        .diff(diff),
        .borrow(borrow)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b | B=%b | Diff=%b | Borrow=%b",
                  a, b, diff, borrow);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {a, b} = $random;
            #10;
        end
    end

endmodule
