module s_box4 (
    input [5:0] s4_in,
    output reg [3:0] s4_out
);
always @(*) begin
    case ({s4_in[5], s4_in[0]})
        2'b00: case(s4_in[4:1])
            4'd0: s4_out = 4'd7;  4'd1: s4_out = 4'd13; 4'd2: s4_out = 4'd14; 4'd3: s4_out = 4'd3;
            4'd4: s4_out = 4'd0;  4'd5: s4_out = 4'd6;  4'd6: s4_out = 4'd9;  4'd7: s4_out = 4'd10;
            4'd8: s4_out = 4'd1;  4'd9: s4_out = 4'd2;  4'd10: s4_out = 4'd8;  4'd11: s4_out = 4'd5;
            4'd12: s4_out = 4'd11; 4'd13: s4_out = 4'd12; 4'd14: s4_out = 4'd4;  default: s4_out = 4'd15;
        endcase
        2'b01: case(s4_in[4:1])
            4'd0: s4_out = 4'd13; 4'd1: s4_out = 4'd8;  4'd2: s4_out = 4'd11; 4'd3: s4_out = 4'd5;
            4'd4: s4_out = 4'd6;  4'd5: s4_out = 4'd15; 4'd6: s4_out = 4'd0;  4'd7: s4_out = 4'd3;
            4'd8: s4_out = 4'd4;  4'd9: s4_out = 4'd7;  4'd10: s4_out = 4'd2;  4'd11: s4_out = 4'd12;
            4'd12: s4_out = 4'd1;  4'd13: s4_out = 4'd10; 4'd14: s4_out = 4'd14; default: s4_out = 4'd9;
        endcase
        2'b10: case(s4_in[4:1])
            4'd0: s4_out = 4'd10; 4'd1: s4_out = 4'd6;  4'd2: s4_out = 4'd9;  4'd3: s4_out = 4'd0;
            4'd4: s4_out = 4'd12; 4'd5: s4_out = 4'd11; 4'd6: s4_out = 4'd7;  4'd7: s4_out = 4'd13;
            4'd8: s4_out = 4'd15; 4'd9: s4_out = 4'd1;  4'd10: s4_out = 4'd3;  4'd11: s4_out = 4'd14;
            4'd12: s4_out = 4'd5;  4'd13: s4_out = 4'd2;  4'd14: s4_out = 4'd8;  default: s4_out = 4'd4;
        endcase
        default: case(s4_in[4:1])
            4'd0: s4_out = 4'd3;  4'd1: s4_out = 4'd15; 4'd2: s4_out = 4'd0;  4'd3: s4_out = 4'd6;
            4'd4: s4_out = 4'd10; 4'd5: s4_out = 4'd1;  4'd6: s4_out = 4'd13; 4'd7: s4_out = 4'd8;
            4'd8: s4_out = 4'd9;  4'd9: s4_out = 4'd4;  4'd10: s4_out = 4'd5;  4'd11: s4_out = 4'd11;
            4'd12: s4_out = 4'd12; 4'd13: s4_out = 4'd7;  4'd14: s4_out = 4'd2;  default: s4_out = 4'd14;
        endcase
    endcase
end
endmodule