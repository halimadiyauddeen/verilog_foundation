// Halima Diyauddeen — 2026 — 4-Bit Ripple Carry Adder Testbench

/*
 * Module Name : ripple_carry_adder_tb
 * Description : Testbench for the 4-Bit Ripple Carry Adder DUT
 */

module ripple_carry_adder_tb;

    // Testbench signals
    reg [3:0] a;
    reg [3:0] b;
    reg       cin;

    wire [3:0] sum;
    wire       cout;

    // Instantiate the Design Under Test (DUT)
    ripple_carry_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b | B=%b | Cin=%b | Sum=%b | Cout=%b",
                  a, b, cin, sum, cout);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {a, b, cin} = $random;
            #10;
        end
    end

endmodule
