module s_box8 (
    input [5:0] s8_in,
    output reg [3:0] s8_out
);
always @(*) begin
    case ({s8_in[5], s8_in[0]})
        2'b00: case(s8_in[4:1])
            4'd0: s8_out = 4'd13; 4'd1: s8_out = 4'd2;  4'd2: s8_out = 4'd8;  4'd3: s8_out = 4'd4;
            4'd4: s8_out = 4'd6;  4'd5: s8_out = 4'd15; 4'd6: s8_out = 4'd11; 4'd7: s8_out = 4'd1;
            4'd8: s8_out = 4'd10; 4'd9: s8_out = 4'd9;  4'd10: s8_out = 4'd3;  4'd11: s8_out = 4'd14;
            4'd12: s8_out = 4'd5;  4'd13: s8_out = 4'd0;  4'd14: s8_out = 4'd12; default: s8_out = 4'd7;
        endcase
        2'b01: case(s8_in[4:1])
            4'd0: s8_out = 4'd1;  4'd1: s8_out = 4'd15; 4'd2: s8_out = 4'd13; 4'd3: s8_out = 4'd8;
            4'd4: s8_out = 4'd10; 4'd5: s8_out = 4'd3;  4'd6: s8_out = 4'd7;  4'd7: s8_out = 4'd4;
            4'd8: s8_out = 4'd12; 4'd9: s8_out = 4'd5;  4'd10: s8_out = 4'd6;  4'd11: s8_out = 4'd11;
            4'd12: s8_out = 4'd0;  4'd13: s8_out = 4'd14; 4'd14: s8_out = 4'd9;  default: s8_out = 4'd2;
        endcase
        2'b10: case(s8_in[4:1])
            4'd0: s8_out = 4'd7;  4'd1: s8_out = 4'd11; 4'd2: s8_out = 4'd4;  4'd3: s8_out = 4'd1;
            4'd4: s8_out = 4'd9;  4'd5: s8_out = 4'd12; 4'd6: s8_out = 4'd14; 4'd7: s8_out = 4'd2;
            4'd8: s8_out = 4'd0;  4'd9: s8_out = 4'd6;  4'd10: s8_out = 4'd10; 4'd11: s8_out = 4'd13;
            4'd12: s8_out = 4'd15; 4'd13: s8_out = 4'd3;  4'd14: s8_out = 4'd5;  default: s8_out = 4'd8;
        endcase
        default: case(s8_in[4:1])
            4'd0: s8_out = 4'd2;  4'd1: s8_out = 4'd1;  4'd2: s8_out = 4'd14; 4'd3: s8_out = 4'd7;
            4'd4: s8_out = 4'd4;  4'd5: s8_out = 4'd10; 4'd6: s8_out = 4'd8;  4'd7: s8_out = 4'd13;
            4'd8: s8_out = 4'd15; 4'd9: s8_out = 4'd12; 4'd10: s8_out = 4'd9;  4'd11: s8_out = 4'd0;
            4'd12: s8_out = 4'd3;  4'd13: s8_out = 4'd5;  4'd14: s8_out = 4'd6;  default: s8_out = 4'd11;
        endcase
    endcase
end
endmodule