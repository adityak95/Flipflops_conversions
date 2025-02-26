module t_ff(t,clk,q,rst);
input wire t,clk,rst;
output reg q;

always@(posedge clk)begin 
	if(rst) q<=0;
	else begin 
		if(t=0) q<=1;
		else q<=0;
	end
end

endmodule

module jk_ff(j,k,clk,rst,q);
input wire j,k,clk,rst;
output reg q;
wire [1:0]w;
wire t;

and g1(w[0],k,q);
and g2(w[1],j,q);
or  g3(t,w[0],w[1]);

t_ff jk_f(.t(t),.clk(clk),.rst(rst),.q(q));

endmodule
