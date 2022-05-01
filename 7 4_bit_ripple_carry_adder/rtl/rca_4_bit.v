module rca_4_bit (output [3:0]out, cout, input [3:0] A, input [3:0] B, input cin);
	wire [2:0] ctrns;
	full_adder adr0(out[0],ctrns[0],A[0],B[0], cin);
	full_adder adr1(out[1],ctrns[1],A[1],B[1], ctrns[0]);
	full_adder adr2(out[2],ctrns[2],A[2],B[2], ctrns[1]);
	full_adder adr3(out[3],cout,A[3],B[3], ctrns[2]);
	
endmodule
	
	