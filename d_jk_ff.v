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

module jk_ff(j,k,clk,rst,q);
input wire j,k,clk,rst;
output reg q;

wire [3:0]w;
wire d;

not g0(w[0],k);
and g1(w[1],w[0],q);
and g2(w[2],j,~q);
or  g3(d,w[1],w[2]);

d_ff jk_f(.d(d),.clk(clk),.rst(rst),.q(q));
endmodule
