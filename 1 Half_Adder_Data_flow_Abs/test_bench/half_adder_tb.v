module half_adder_tb();

reg a,b;
wire sum,cout;
integer itr;

half_adder DUT(a,b,sum,cout);

initial 
      begin
	 a   = 1'b0;
	 b   = 1'b0;
	end
initial
	begin
	for(itr = 0; itr < 4; itr = itr+1)
	begin
	{a,b} = itr;
	#10;
	end
	end

initial
	begin
		$monitor("A=%d, B=%d, Sum=%d, Cout=%d",a,b,sum,cout);
	end
	
initial
	begin
		#100 $finish;
	end

endmodule
