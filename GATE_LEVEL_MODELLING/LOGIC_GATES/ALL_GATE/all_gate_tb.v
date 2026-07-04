// Halima Diyauddeen — 2026 — All Gates Testbench

/*
 * Module Name : all_gates_tb
 * Description : Testbench for the All Gates DUT
 */

module all_gates_tb;

    // Testbench signals
    reg a;
    reg b;

    wire and_out;
    wire or_out;
    wire nand_out;
    wire nor_out;
    wire xor_out;
    wire xnor_out;
    wire not_a;
    wire not_b;

    // Instantiate the Design Under Test (DUT)
    all_gates dut (
        .a(a),
        .b(b),
        .and_out(and_out),
        .or_out(or_out),
        .nand_out(nand_out),
        .nor_out(nor_out),
        .xor_out(xor_out),
        .xnor_out(xnor_out),
        .not_a(not_a),
        .not_b(not_b)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b B=%b | AND=%b OR=%b NAND=%b NOR=%b XOR=%b XNOR=%b NOT_A=%b NOT_B=%b",
                  a, b,
                  and_out, or_out, nand_out,
                  nor_out, xor_out, xnor_out,
                  not_a, not_b);

    // Apply test vectors
    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
    end

endmodule
