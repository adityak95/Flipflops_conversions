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

module d_ff(d,clk,rst,q);
input wire d,clk,rst;
output reg q;
wire t;
xor g1(t,d,q);


t_ff d_f(.t(t),.clk(clk),.rst(rst),.q(q));

endmodule
