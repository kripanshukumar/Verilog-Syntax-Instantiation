module full_adder(output sum, cout, input a,b,cin);

wire s;
wire [1:0]c;

half_adder ad1(a,b,s,c[0]);
half_adder ad12(cin,s,sum,c[1]);

or G1(cout,c[0],c[1]);

endmodule