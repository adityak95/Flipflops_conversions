module d_ff(d,clk,rst,q);
input wire d,clk,rst;
output reg q;

always@(posegde clk)begin 
	if(rst) q<=0;
	else begin 
		if(d) q<=1;
		else q<=0;
	end
end

endmodule

module sr_ff(s,r,clk,rst,q);
input wire s,r,clk,rst;
output reg q;

wire [1:0]w;
wire d;

not g1(w[0],r);
and g2(w[1],w[0],q);
or  g3(d,s,w[1]);

d_ff sr_f(.d(d),.clk(clk),.rst(rst),.q(q));
endmodule
