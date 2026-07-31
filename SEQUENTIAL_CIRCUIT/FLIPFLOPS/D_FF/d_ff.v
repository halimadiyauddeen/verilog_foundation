module d_ff(
    input clk,
    input rst,
    input d,
    output reg q
);

always @(posedge clk) begin
    if (!rst)
        q <= 1'b0;
    else begin
         case (d)
            1'b0: q <= 1'b0;
            1'b1: q <= 1'b1;
            default: q <= 1'bx;
        endcase
    end
end

endmodule
