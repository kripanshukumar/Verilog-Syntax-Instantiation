module bd_buffer_tb ();

	reg en;
	reg data;
	wire out,inward;
  	integer itr;
	
bd_buffer b(out,inward, data,en);

initial
	begin
		{en,data} = 2'b00;
	end

initial
	begin
		for(itr = 0; itr < 4; itr = itr+1)
		begin
			{en,data} = itr;
			#10;
		end
		#20 $finish;
	end

initial
	begin
		$monitor("EN=%d, DATA = %d, Outward = %d, inward = %d",en,data,out,inward);
	end

endmodule
