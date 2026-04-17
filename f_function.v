module f_function (
input [31:0] right,
input [47:0] key,
output [31:0] f_res );

wire [47:0] right_exp;
expan r_e (.right(right),.right_exp(right_exp));

wire [47:0] xor_res;
assign xor_res = right_exp ^ key;

wire [31:0] s_box_out;

wire [31:0] p_box_out;
s_box_top s_box (.s_box_in(xor_res), .s_box_out(s_box_out));
p_box p_box (.s_box_out(s_box_out), .p_box_res(p_box_out));

assign f_res = p_box_out;
endmodule