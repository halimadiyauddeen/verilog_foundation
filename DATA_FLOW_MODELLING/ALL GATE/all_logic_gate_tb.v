// Halima Diyauddeen — 2026 — All Logic Gates Testbench

/*
 * Module Name : all_logic_gates_tb
 * Description : Testbench for All Logic Gates
 */

module all_logic_gates_tb;

    reg a;
    reg b;

    wire and_out;
    wire or_out;
    wire not_a;
    wire not_b;
    wire nand_out;
    wire nor_out;
    wire xor_out;
    wire xnor_out;

    // Instantiate the Design Under Test (DUT)
    all_logic_gates dut (

        .a(a),
        .b(b),

        .and_out(and_out),
        .or_out(or_out),
        .not_a(not_a),
        .not_b(not_b),
        .nand_out(nand_out),
        .nor_out(nor_out),
        .xor_out(xor_out),
        .xnor_out(xnor_out)
    );

    // Monitor all inputs and outputs
    initial
        $monitor(
            "A=%b B=%b | AND=%b OR=%b NOTA=%b NOTB=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
             a,b,and_out,or_out,not_a,not_b,nand_out,nor_out,xor_out,xnor_out
        );

    // Apply test vectors
    initial begin
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
    end

endmodule
