module rca_4_bit_tb();
	reg [3:0] A;
	reg [3:0] B;
	wire [3:0] out;
	wire cout;
	reg cin;
	
	integer itr;
	
	rca_4_bit DUT(out,cout,A,B,cin);
	
	initial
		begin
			for(itr = 0; itr < 512; itr = itr + 1)
			begin
				{cin,A,B} = itr;
				#10;
			end
			#20 $finish;
		end
	
	initial
		begin
			{cin,A,B} = 9'b000000000;
		end
	
	initial
		begin
			$monitor("Cin=%d, A=%d, B=%d, out=%d, cout=%b",cin,A,B,out,cout);
		end

endmodule