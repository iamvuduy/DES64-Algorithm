module s_box3 (
    input [5:0] s3_in,
    output reg [3:0] s3_out
);
always @(*) begin
    case ({s3_in[5], s3_in[0]})
        2'b00: case(s3_in[4:1])
            4'd0: s3_out = 4'd10; 4'd1: s3_out = 4'd0;  4'd2: s3_out = 4'd9;  4'd3: s3_out = 4'd14;
            4'd4: s3_out = 4'd6;  4'd5: s3_out = 4'd3;  4'd6: s3_out = 4'd15; 4'd7: s3_out = 4'd5;
            4'd8: s3_out = 4'd1;  4'd9: s3_out = 4'd13; 4'd10: s3_out = 4'd12; 4'd11: s3_out = 4'd7;
            4'd12: s3_out = 4'd11; 4'd13: s3_out = 4'd4; 4'd14: s3_out = 4'd2; default: s3_out = 4'd8;
        endcase
        2'b01: case(s3_in[4:1])
            4'd0: s3_out = 4'd13; 4'd1: s3_out = 4'd7;  4'd2: s3_out = 4'd0;  4'd3: s3_out = 4'd9;
            4'd4: s3_out = 4'd3;  4'd5: s3_out = 4'd4;  4'd6: s3_out = 4'd6;  4'd7: s3_out = 4'd10;
            4'd8: s3_out = 4'd2;  4'd9: s3_out = 4'd8;  4'd10: s3_out = 4'd5;  4'd11: s3_out = 4'd14;
            4'd12: s3_out = 4'd12; 4'd13: s3_out = 4'd11; 4'd14: s3_out = 4'd15; default: s3_out = 4'd1;
        endcase
        2'b10: case(s3_in[4:1])
            4'd0: s3_out = 4'd13; 4'd1: s3_out = 4'd6;  4'd2: s3_out = 4'd4;  4'd3: s3_out = 4'd9;
            4'd4: s3_out = 4'd8;  4'd5: s3_out = 4'd15; 4'd6: s3_out = 4'd3;  4'd7: s3_out = 4'd0;
            4'd8: s3_out = 4'd11; 4'd9: s3_out = 4'd1;  4'd10: s3_out = 4'd2;  4'd11: s3_out = 4'd12;
            4'd12: s3_out = 4'd5;  4'd13: s3_out = 4'd10; 4'd14: s3_out = 4'd14; default: s3_out = 4'd7;
        endcase
        default: case(s3_in[4:1])
            4'd0: s3_out = 4'd1;  4'd1: s3_out = 4'd10; 4'd2: s3_out = 4'd13; 4'd3: s3_out = 4'd0;
            4'd4: s3_out = 4'd6;  4'd5: s3_out = 4'd9;  4'd6: s3_out = 4'd8;  4'd7: s3_out = 4'd7;
            4'd8: s3_out = 4'd4;  4'd9: s3_out = 4'd15; 4'd10: s3_out = 4'd14; 4'd11: s3_out = 4'd3;
            4'd12: s3_out = 4'd11; 4'd13: s3_out = 4'd5;  4'd14: s3_out = 4'd2;  default: s3_out = 4'd12;
        endcase
    endcase
end
endmodule