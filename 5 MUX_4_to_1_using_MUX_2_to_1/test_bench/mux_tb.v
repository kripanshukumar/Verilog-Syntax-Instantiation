module mux_tv();
	
	integer itr;

	reg [3:0] in;
	reg [1:0] sel;
	wire out;
	
	
	mux_4_to_1 DUT(out, in,sel);
	
	initial
		begin
			{in,sel} = 6'b000000;
		end
	
	initial
		begin
			for(itr = 0; itr < 32; itr = itr+1)
			begin
				#10;
				{in,sel} = itr;
			end
		end
	
	initial
		begin
			$monitor("INPUT=%b, SELECT=%d, OUTPUT=%b, ITR=%d",in,sel,out,itr);
			//$monitor("ITR =%d",itr);
		end
endmodule