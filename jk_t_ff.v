module jk_ff(j,k,clk,q);
input wire j,k,clk;
output reg q;

always@(posedge clk)begin 
	if(j==0 && k==0) q<=q;
	else if(j==0 && k==1) q<=0;
	else if(j==1 && k==0) q<=1;
	else q<=~q;
end

endmodule

module t_ff(t,clk,q);
input wire t,clk;
output reg q;

wire j,k;

and g1(j,t,q);
and g2(k,t,~q);

jk_ff t_f(.j(j),.k(k),.clk(clk),.q(q));


endmodule
