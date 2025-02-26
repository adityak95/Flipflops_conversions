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

module d_ff(d,clk,q);
input wire  d,clk;
output reg q;

wire s,r;

assign s=d;
assign r=~d;

sr_ff s_d(.s(s),.r(r),.clk(clk),.q(q));
endmodule
