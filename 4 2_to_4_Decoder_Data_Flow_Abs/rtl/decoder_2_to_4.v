module decoder_2_to_4(output [3:0] out, input [1:0]in, input en);

wire [1:0] t;

not g1(t[0],in[0]);
not g2(t[1],in[1]);

and g3(out[0],t[0],t[1],en);
and g4(out[1],t[1],in[0],en);
and g5(out[2],in[1],t[0],en);
and g6(out[3], in[1], in[0],en);

endmodule