module pipo_tb;

reg clk;
reg rst;
reg [3:0] pi;
wire [3:0] q;

// DUT Instantiation
pipo dut(
    .clk(clk),
    .rst(rst),
    .pi(pi),
    .q(q)
);

// Clock Generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Monitor
initial begin
    $monitor(
        "Time=%0t clk=%b rst=%b pi=%b q=%b",
        $time, clk, rst, pi, q
    );
end

// Stimulus
initial begin
    rst = 0;
    pi   = 4'b0000;

    #10;
    rst = 1;

    repeat (10) begin
        pi = $random;
        #10;
    end

    $finish;
end

endmodule
