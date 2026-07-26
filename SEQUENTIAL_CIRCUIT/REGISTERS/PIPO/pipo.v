module pipo(
    input clk,
    input rst,
    input [3:0] pi,
    output reg [3:0] q
);

always @(posedge clk) begin
    if (!rst)
        q <= 4'b0000;
    else
        q <= pi;
end

endmodule
