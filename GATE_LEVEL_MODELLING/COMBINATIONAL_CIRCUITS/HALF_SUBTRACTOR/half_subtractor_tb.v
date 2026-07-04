// Halima Diyauddeen — 2026 — Half Subtractor Testbench

/*
 * Module Name : half_subtractor_tb
 * Description : Testbench for the Half Subtractor DUT
 */

module half_subtractor_tb;

    // Testbench signals
    reg a;
    reg b;

    wire diff;
    wire borrow;

    // Instantiate the Design Under Test (DUT)
    half_subtractor dut (
        .a(a),
        .b(b),
        .diff(diff),
        .borrow(borrow)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b | B=%b | Diff=%b | Borrow=%b",
                  a, b, diff, borrow);

    // Apply test vectors
    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
    end

endmodule
