module t_ff(
    input clk,
    input rst,
    input t,
    output reg q
);

always @(posedge clk) begin
    if (!rst)
        q <= 1'b0;
    else begin
        case (t)
            1'b0: q <= q;   // Hold
            1'b1: q <= ~q;  // Toggle
            default: q <= 1'bx;
        endcase
    end
end

endmodule
