// Halima Diyauddeen — 2026 — Full Subtractor (Testbench)

/*
 * Module Name : full_subtractor_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module full_subtractor_func_tb;

    // Testbench signals
    reg a;
    reg b;
    reg bin;

    wire diff;
    wire borrow;

    // Instantiate the Design Under Test (DUT)
    full_subtractor_func dut (
        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .borrow(borrow)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b | B=%b | Bin=%b | Diff=%b | Borrow=%b",
                  a, b, bin, diff, borrow);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {a, b, bin} = $random;
            #10;
        end
    end

endmodule
