module expan(
input [31:0] right,
output [47:0] right_exp);

assign right_exp = { right[0], right[31], right[30], right[29], right[28], right[27],
							right[28], right[27], right[26], right[25], right[24], right[23],
							right[24], right[23], right[22], right[21], right[20], right[19],
							right[20], right[19], right[18], right[17], right[16], right[15],
							right[16], right[15], right[14], right[13], right[12], right[11],
							right[12], right[11], right[10], right[9], right[8], right[7],
							right[8], right[7], right[6], right[5], right[4], right[3],
							right[4], right[3], right[2], right[1], right[0], right[31]};
endmodule