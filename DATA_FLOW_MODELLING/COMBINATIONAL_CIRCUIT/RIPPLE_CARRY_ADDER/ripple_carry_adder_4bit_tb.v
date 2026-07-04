// Halima Diyauddeen — 2026 — 4-Bit Ripple Carry Adder Testbench

/*
 * Module Name : ripple_carry_adder_4bit_tb
 * Description : Testbench for the 4-Bit Ripple Carry Adder DUT
 */

module ripple_carry_adder_4bit_tb;

    // Testbench signals
    reg  [3:0] a;
    reg  [3:0] b;
    reg        cin;

    wire [3:0] sum;
    wire       cout;

    // Instantiate the Design Under Test (DUT)
    ripple_carry_adder_4bit dut (
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

    // Apply test vectors
    initial begin
        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        a = 4'b0011; b = 4'b0010; cin = 0; #10;
        a = 4'b0101; b = 4'b0011; cin = 0; #10;
        a = 4'b0111; b = 4'b0001; cin = 1; #10;
        a = 4'b1111; b = 4'b0001; cin = 0; #10;
        a = 4'b1010; b = 4'b0101; cin = 1; #10;
        a = 4'b1111; b = 4'b1111; cin = 1; #10;
    end

endmodule
