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

module t_ff(t,clk,rst,q);
input wire t,clk,rst;
output reg q;

wire d;

xor g1(d,t,q);


d_ff t_f(.d(d),.clk(clk),.rst(rst),.q(q));


endmodule
