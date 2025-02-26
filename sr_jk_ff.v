module sr_ff(s,r,clk,q);
input wire s,r,clk;
output reg q;

always@(posedge clk)begin
	if(s==1 && r==0)begin 
		q<=1;
	end
	else if(s==0 && r==1)begin 
		q<=0;
	end
end

endmodule

module jk_ff(j,k,clk,q);
input wire  j,k,clk;
output reg q;

wire s,r;
and g1(s,j,(~q));
and g2(r,k,q);

sr_ff s_d(.s(s),.r(r),.clk(clk),.q(q));
endmodule
