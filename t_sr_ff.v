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

module sr_ff(s,r,clk,rst,q);
input wire s,r,clk,rst;
output reg q;
wire [1:0]w;
wire t;

and g1(w[0],s,~q);
and g2(w[1],s,q);
or  g3(t,w[1],w[2]);

t_ff sr_f(.t(t),.clk(clk),.rst(rst),.q(q));
endmodule
