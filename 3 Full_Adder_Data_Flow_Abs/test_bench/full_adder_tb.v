module full_adder_tb();

reg a,b,cin;
wire sum, cout;
integer itr;

full_adder DUT(sum,cout,a,b,cin);

initial
	begin
	{a,b,cin} = 3'b000;
	end

initial
	begin
		for(itr=0; itr<8; itr = itr+1)
		begin
			{a,b,cin} = itr;
			#10;
		end
		#30;
		$finish;
	end

endmodule
	

	