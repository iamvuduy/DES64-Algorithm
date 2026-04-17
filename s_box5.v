module s_box5 (
    input [5:0] s5_in,
    output reg [3:0] s5_out
);
always @(*) begin
    case ({s5_in[5], s5_in[0]})
        2'b00: case(s5_in[4:1])
            4'd0: s5_out = 4'd2;  4'd1: s5_out = 4'd12; 4'd2: s5_out = 4'd4;  4'd3: s5_out = 4'd1;
            4'd4: s5_out = 4'd7;  4'd5: s5_out = 4'd10; 4'd6: s5_out = 4'd11; 4'd7: s5_out = 4'd6;
            4'd8: s5_out = 4'd8;  4'd9: s5_out = 4'd5;  4'd10: s5_out = 4'd3;  4'd11: s5_out = 4'd15;
            4'd12: s5_out = 4'd13; 4'd13: s5_out = 4'd0;  4'd14: s5_out = 4'd14; default: s5_out = 4'd9;
        endcase
        2'b01: case(s5_in[4:1])
            4'd0: s5_out = 4'd14; 4'd1: s5_out = 4'd11; 4'd2: s5_out = 4'd2;  4'd3: s5_out = 4'd12;
            4'd4: s5_out = 4'd4;  4'd5: s5_out = 4'd7;  4'd6: s5_out = 4'd13; 4'd7: s5_out = 4'd1;
            4'd8: s5_out = 4'd5;  4'd9: s5_out = 4'd0;  4'd10: s5_out = 4'd15; 4'd11: s5_out = 4'd10;
            4'd12: s5_out = 4'd3;  4'd13: s5_out = 4'd9;  4'd14: s5_out = 4'd8;  default: s5_out = 4'd6;
        endcase
        2'b10: case(s5_in[4:1])
            4'd0: s5_out = 4'd4;  4'd1: s5_out = 4'd2;  4'd2: s5_out = 4'd1;  4'd3: s5_out = 4'd11;
            4'd4: s5_out = 4'd10; 4'd5: s5_out = 4'd13; 4'd6: s5_out = 4'd7;  4'd7: s5_out = 4'd8;
            4'd8: s5_out = 4'd15; 4'd9: s5_out = 4'd9;  4'd10: s5_out = 4'd12; 4'd11: s5_out = 4'd5;
            4'd12: s5_out = 4'd6;  4'd13: s5_out = 4'd3;  4'd14: s5_out = 4'd0;  default: s5_out = 4'd14;
        endcase
        default: case(s5_in[4:1])
            4'd0: s5_out = 4'd11; 4'd1: s5_out = 4'd8;  4'd2: s5_out = 4'd12; 4'd3: s5_out = 4'd7;
            4'd4: s5_out = 4'd1;  4'd5: s5_out = 4'd14; 4'd6: s5_out = 4'd2;  4'd7: s5_out = 4'd13;
            4'd8: s5_out = 4'd6;  4'd9: s5_out = 4'd15; 4'd10: s5_out = 4'd0;  4'd11: s5_out = 4'd9;
            4'd12: s5_out = 4'd10; 4'd13: s5_out = 4'd4;  4'd14: s5_out = 4'd5;  default: s5_out = 4'd3;
        endcase
    endcase
end
endmodule