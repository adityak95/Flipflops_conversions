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

module sr_ff(s,r,clk,q);
input wire s,r,clk;
output reg q;

wire j,k;
and g1(j,s,(~r));
and g2(k,(~s),r);

jk_ff sr_f(.j(j),.k(k),.clk(clk),.q(q));

endmodule
