module sr_ff_tb;

reg clk;
reg rst;
reg s;
reg r;
wire q;

sr_ff dut(
    .clk(clk),
    .rst(rst),
    .s(s),
    .r(r),
    .q(q)
);

// Clock Generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Monitor outputs
initial begin
    $monitor(
        "Time=%0t clk=%b rst=%b s=%b r=%b q=%b",
        $time, clk, rst, s, r, q
    );
end

// Apply stimulus
initial begin
    rst = 0;
    s   = 0;
    r   = 0;

    #10;
    rst = 1;

    repeat (10) begin
        {s, r} = $random;
        #10;
    end

    $finish;
end

endmodule

