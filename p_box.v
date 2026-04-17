module p_box (
input [31:0] s_box_out,
output [31:0] p_box_res);
assign p_box_res= {s_box_out[16], s_box_out[25], s_box_out[12], s_box_out[11],
						s_box_out[3], s_box_out[20], s_box_out[4], s_box_out[15],
						s_box_out[31], s_box_out[17], s_box_out[9], s_box_out[6],
						s_box_out[27], s_box_out[14], s_box_out[1], s_box_out[22],
						s_box_out[30], s_box_out[24], s_box_out[8], s_box_out[18],
						s_box_out[0], s_box_out[5], s_box_out[29], s_box_out[23],
						s_box_out[13], s_box_out[19], s_box_out[2], s_box_out[26],
						s_box_out[10], s_box_out[21], s_box_out[28], s_box_out[7] };
endmodule