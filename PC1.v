module PC1 (
input [63:0] key,
output [27:0] C0,
output [27:0] D0);

assign C0 = {key[7], key[15], key[23], key[31], key[39], key[47], key[55],
  key[63], key[6], key[14], key[22], key[30], key[38], key[46],
  key[54], key[62], key[5], key[13], key[21], key[29], key[37],
  key[45], key[53], key[61], key[4], key[12], key[20], key[28]};	
assign D0 = {key[1], key[9], key[17], key[25], key[33], key[41], key[49],
  key[57], key[2], key[10], key[18], key[26], key[34], key[42],
  key[50], key[58], key[3], key[11], key[19], key[27], key[35],
  key[43], key[51], key[59], key[36], key[44], key[52], key[60]};	

endmodule