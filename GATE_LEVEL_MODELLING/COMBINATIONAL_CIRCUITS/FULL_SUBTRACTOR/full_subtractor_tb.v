// Halima Diyauddeen — 2026 — Full Subtractor Testbench

/*
 * Module Name : full_subtractor_tb
 * Description : Testbench for the Full Subtractor DUT
 */

module full_subtractor_tb;

    // Testbench signals
    reg a;
    reg b;
    reg bin;

    wire diff;
    wire bout;

    // Instantiate the Design Under Test (DUT)
    full_subtractor dut (
        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .bout(bout)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b | B=%b | Bin=%b | Diff=%b | Bout=%b",
                  a, b, bin, diff, bout);

    // Apply test vectors
    initial begin
        a = 0; b = 0; bin = 0; #10;
        a = 0; b = 0; bin = 1; #10;
        a = 0; b = 1; bin = 0; #10;
        a = 0; b = 1; bin = 1; #10;
        a = 1; b = 0; bin = 0; #10;
        a = 1; b = 0; bin = 1; #10;
        a = 1; b = 1; bin = 0; #10;
        a = 1; b = 1; bin = 1; #10;
    end

endmodule
