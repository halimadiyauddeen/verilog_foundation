// Halima Diyauddeen — 2026 — Ripple Carry Adder (Testbench)

/*
 * Module Name : ripple_carry_adder_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module ripple_carry_adder_tb;

reg [3:0] a;
reg [3:0] b;
reg       cin;

wire [3:0] sum;
wire       carry;

ripple_carry_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry)
);

initial begin

    $monitor("A=%b | B=%b | Cin=%b | Sum=%b | Carry=%b",
              a, b, cin, sum, carry);

    repeat (10) begin
        {a, b, cin} = $random;
        #10;
    end

end

endmodule
