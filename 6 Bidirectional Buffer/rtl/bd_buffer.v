module bd_buffer (output outward, inward, input in, enable);

	assign outward = enable?in:'bz;
	assign inward = enable?'bz:outward;

endmodule