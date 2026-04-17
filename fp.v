module fp(
input [63:0] pre_final,
output [63:0] cipher_text);

assign cipher_text= {pre_final[24], pre_final[56], pre_final[16], pre_final[48], pre_final[8], pre_final[40], pre_final[0], pre_final[32],
   pre_final[25], pre_final[57], pre_final[17], pre_final[49], pre_final[9], pre_final[41], pre_final[1], pre_final[33],
   pre_final[26], pre_final[58], pre_final[18], pre_final[50], pre_final[10], pre_final[42], pre_final[2], pre_final[34],
   pre_final[27], pre_final[59], pre_final[19], pre_final[51], pre_final[11], pre_final[43], pre_final[3], pre_final[35],
   pre_final[28], pre_final[60], pre_final[20], pre_final[52], pre_final[12], pre_final[44], pre_final[4], pre_final[36],
   pre_final[29], pre_final[61], pre_final[21], pre_final[53], pre_final[13], pre_final[45], pre_final[5], pre_final[37],
   pre_final[30], pre_final[62], pre_final[22], pre_final[54], pre_final[14], pre_final[46], pre_final[6], pre_final[38],
   pre_final[31], pre_final[63], pre_final[23], pre_final[55], pre_final[15], pre_final[47], pre_final[7], pre_final[39]};
	
endmodule