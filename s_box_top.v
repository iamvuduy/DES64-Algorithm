module s_box_top (
    input  [47:0] s_box_in,  // Đầu vào 48-bit sau bước XOR key
    output [31:0] s_box_out  // Đầu ra 32-bit trước khi qua hàm P-Permutation
);

 
    wire [3:0] out1, out2, out3, out4, out5, out6, out7, out8;

    
    s_box1 sb1 (.s1_in(s_box_in[47:42]), .s1_out(out1));
    s_box2 sb2 (.s2_in(s_box_in[41:36]), .s2_out(out2));
    s_box3 sb3 (.s3_in(s_box_in[35:30]), .s3_out(out3));
    s_box4 sb4 (.s4_in(s_box_in[29:24]), .s4_out(out4));
    s_box5 sb5 (.s5_in(s_box_in[23:18]), .s5_out(out5));
    s_box6 sb6 (.s6_in(s_box_in[17:12]), .s6_out(out6));
    s_box7 sb7 (.s7_in(s_box_in[11:6]),  .s7_out(out7));
    s_box8 sb8 (.s8_in(s_box_in[5:0]),   .s8_out(out8));

    // Ghép nối các đầu ra 4-bit thành vector 32-bit
    assign s_box_out = {out1, out2, out3, out4, out5, out6, out7, out8};

endmodule