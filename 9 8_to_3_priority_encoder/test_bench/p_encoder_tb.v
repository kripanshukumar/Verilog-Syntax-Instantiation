module p_encoder_tb();

reg [7:0] in;
wire [2:0]out;
wire idle;
integer itr;

priority_encoder DUT(out,idle,in);

initial
begin
	in = 8'b00000000;
end

initial
begin
	for(itr = 0; itr < 256; itr = itr + 1)
	begin
		in = itr;
		#10;
	end
	#20 $finish;
end

initial
begin
	$monitor("INPUT=%b, OUTPUT=%d, IDLE = %b",in,out,idle);
end

endmodule