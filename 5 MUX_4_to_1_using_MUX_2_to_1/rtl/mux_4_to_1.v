module mux_4_to_1 (output out, input [3:0] in , input [1:0] sel);

	wire t1,t2;
	
	mux_2_to_1 m1(t1, in[1:0], sel[0]);
	mux_2_to_1 m2(t2, in[3:2], sel[0]);
	mux_2_to_1 m3(out, {t2,t1}, sel[1]);
	
endmodule