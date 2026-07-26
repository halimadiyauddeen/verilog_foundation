module piso(
input clk,
input [3:0]pi,
input mode,
output sout
);

reg [3:0] q;

always @(posedge clk)
begin

if (mode==0)
q<=pi;

else
begin
q[3]<=1'bx;
q[2]<=q[3];
q[1]<=q[2];
q[0]<=q[1];
end
end

assign sout=q[0];
endmodule 
