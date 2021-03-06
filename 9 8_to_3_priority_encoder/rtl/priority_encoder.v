module priority_encoder (output [2:0] out, output idle, input [7:0] in);
	
	wire [7:0]inv;
	wire [6:0]t;
	
	not G0(inv[0],in[0]);
	not G1(inv[1],in[1]);
	not G2(inv[2],in[2]);
	not G3(inv[3],in[3]);
	not G4(inv[4],in[4]);
	not G5(inv[5],in[5]);
	not G6(inv[6],in[6]);
	not G7(inv[7],in[7]);
	
	and A6(t[6],inv[7],in[6]);
	and A5(t[5],inv[7],inv[6],in[5]);
	and A4(t[4],inv[7],inv[6],inv[5],in[4]);
	and A3(t[3],inv[7],inv[6],inv[5],inv[4],in[3]);
	and A2(t[2],inv[7],inv[6],inv[5],inv[4],inv[3],in[2]);
	and A1(t[1],inv[7],inv[6],inv[5],inv[4],inv[3],inv[2],in[1]);
	and A0(t[0],inv[7],inv[6],inv[5],inv[4],inv[3],inv[2],inv[1],in[0]);
	and A7(idle,inv[7],inv[6],inv[5],inv[4],inv[3],inv[2],inv[1],inv[0]);
	
	or O0(out[0],in[7],t[5],t[3],t[1]);
	or O1(out[1],in[7],t[6],t[3],t[2]);
	or O2(out[2],in[7],t[6],t[5],t[4]);
	
endmodule