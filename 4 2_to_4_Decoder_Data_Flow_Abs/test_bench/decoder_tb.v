module decoder_tb ();

parameter N = 2;
integer itr;

reg [1:0] in;
reg en;
wire [3:0] out;

decoder_2_to_4 DUT(out,in,en);

initial
	begin
		in = 2'b00;
		en = 1'b1;
	end

initial
	begin
		for(itr = 0; itr<8; itr = itr + 1)
		begin
			{en,in} = itr;
			#10;
		end
		#40 $finish;
	end

initial
	begin
		$monitor("SEL=%d, OUT=%d, EN=%d",in,out,en);
	end
endmodule
	