module s_box7 (
    input [5:0] s7_in,
    output reg [3:0] s7_out
);
always @(*) begin
    case ({s7_in[5], s7_in[0]})
        2'b00: case(s7_in[4:1])
            4'd0: s7_out = 4'd4;  4'd1: s7_out = 4'd11; 4'd2: s7_out = 4'd2;  4'd3: s7_out = 4'd14;
            4'd4: s7_out = 4'd15; 4'd5: s7_out = 4'd0;  4'd6: s7_out = 4'd8;  4'd7: s7_out = 4'd13;
            4'd8: s7_out = 4'd3;  4'd9: s7_out = 4'd12; 4'd10: s7_out = 4'd9;  4'd11: s7_out = 4'd7;
            4'd12: s7_out = 4'd5;  4'd13: s7_out = 4'd10; 4'd14: s7_out = 4'd6;  default: s7_out = 4'd1;
        endcase
        2'b01: case(s7_in[4:1])
            4'd0: s7_out = 4'd13; 4'd1: s7_out = 4'd0;  4'd2: s7_out = 4'd11; 4'd3: s7_out = 4'd7;
            4'd4: s7_out = 4'd4;  4'd5: s7_out = 4'd9;  4'd6: s7_out = 4'd1;  4'd7: s7_out = 4'd10;
            4'd8: s7_out = 4'd14; 4'd9: s7_out = 4'd3;  4'd10: s7_out = 4'd5;  4'd11: s7_out = 4'd12;
            4'd12: s7_out = 4'd2;  4'd13: s7_out = 4'd15; 4'd14: s7_out = 4'd8;  default: s7_out = 4'd6;
        endcase
        2'b10: case(s7_in[4:1])
            4'd0: s7_out = 4'd1;  4'd1: s7_out = 4'd4;  4'd2: s7_out = 4'd11; 4'd3: s7_out = 4'd13;
            4'd4: s7_out = 4'd12; 4'd5: s7_out = 4'd3;  4'd6: s7_out = 4'd7;  4'd7: s7_out = 4'd14;
            4'd8: s7_out = 4'd10; 4'd9: s7_out = 4'd15; 4'd10: s7_out = 4'd6;  4'd11: s7_out = 4'd8;
            4'd12: s7_out = 4'd0;  4'd13: s7_out = 4'd5;  4'd14: s7_out = 4'd9;  default: s7_out = 4'd2;
        endcase
        default: case(s7_in[4:1])
            4'd0: s7_out = 4'd6;  4'd1: s7_out = 4'd11; 4'd2: s7_out = 4'd13; 4'd3: s7_out = 4'd8;
            4'd4: s7_out = 4'd1;  4'd5: s7_out = 4'd4;  4'd6: s7_out = 4'd10; 4'd7: s7_out = 4'd7;
            4'd8: s7_out = 4'd9;  4'd9: s7_out = 4'd5;  4'd10: s7_out = 4'd0;  4'd11: s7_out = 4'd15;
            4'd12: s7_out = 4'd14; 4'd13: s7_out = 4'd2;  4'd14: s7_out = 4'd3;  default: s7_out = 4'd12;
        endcase
    endcase
end
endmodule