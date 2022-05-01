module mux_using_decoder (output out, input [3:0] in, input [1:0] sel);
	
	wire [3:0] dec_out;
	
	decoder_2_to_4 dec(dec_out,sel, 1);
	
	assign out = dec_out[0]?in[0]:1'bz;
	assign out = dec_out[1]?in[1]:1'bz;
	assign out = dec_out[2]?in[2]:1'bz;
	assign out = dec_out[3]?in[3]:1'bz;
	
endmodule