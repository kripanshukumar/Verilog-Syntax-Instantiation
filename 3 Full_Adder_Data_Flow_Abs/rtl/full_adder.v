module full_adder (output sum,cout, input a,b,cin);

wire t1,t2,t3;

xor G1(t1,a,b);
xor G2(sum,t1,cin);
and G3(t2,a,b);
and G4(t3,cin,t1);
or G5(cout, t2, t3);

endmodule
