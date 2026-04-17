module s_box2 (
input [5:0] s2_in,
output reg[3:0] s2_out );

always @ (*) begin
 case ({s2_in[5], s2_in[0]})
  2'b00: begin
   case (s2_in[4:1])
    4'd0: s2_out = 4'd15;
    4'd1: s2_out = 4'd1;
    4'd2: s2_out = 4'd8;
    4'd3: s2_out = 4'd14;
    4'd4: s2_out = 4'd6;
    4'd5: s2_out = 4'd11;
    4'd6: s2_out = 4'd3;
    4'd7: s2_out = 4'd4;
    4'd8: s2_out = 4'd9;
    4'd9: s2_out = 4'd7;
    4'd10: s2_out = 4'd2;
    4'd11: s2_out = 4'd13;
    4'd12: s2_out = 4'd12;
    4'd13: s2_out = 4'd0;
    4'd14: s2_out = 4'd5;
    default: s2_out = 4'd10;
   endcase
  end
  2'b01: begin
   case (s2_in[4:1])
    4'd0: s2_out = 4'd3;
    4'd1: s2_out = 4'd13;
    4'd2: s2_out = 4'd4;
    4'd3: s2_out = 4'd7;
    4'd4: s2_out = 4'd15;
    4'd5: s2_out = 4'd2;
    4'd6: s2_out = 4'd8;
    4'd7: s2_out = 4'd14;
    4'd8: s2_out = 4'd12;
    4'd9: s2_out = 4'd0;
    4'd10: s2_out = 4'd1;
    4'd11: s2_out = 4'd10;
    4'd12: s2_out = 4'd6;
    4'd13: s2_out = 4'd9;
    4'd14: s2_out = 4'd11;
    default: s2_out = 4'd5;
   endcase
  end
  2'b10: begin
   case (s2_in[4:1])
    4'd0: s2_out = 4'd0;
    4'd1: s2_out = 4'd14;
    4'd2: s2_out = 4'd7;
    4'd3: s2_out = 4'd11;
    4'd4: s2_out = 4'd10;
    4'd5: s2_out = 4'd4;
    4'd6: s2_out = 4'd13;
    4'd7: s2_out = 4'd1;
    4'd8: s2_out = 4'd5;
    4'd9: s2_out = 4'd8;
    4'd10: s2_out = 4'd12;
    4'd11: s2_out = 4'd6;
    4'd12: s2_out = 4'd9;
    4'd13: s2_out = 4'd3;
    4'd14: s2_out = 4'd2;
    default: s2_out = 4'd15;
   endcase
  end
  default: begin
   case (s2_in[4:1])
    4'd0: s2_out = 4'd13;
    4'd1: s2_out = 4'd8;
    4'd2: s2_out = 4'd10;
    4'd3: s2_out = 4'd1;
    4'd4: s2_out = 4'd3;
    4'd5: s2_out = 4'd15;
    4'd6: s2_out = 4'd4;
    4'd7: s2_out = 4'd2;
    4'd8: s2_out = 4'd11;
    4'd9: s2_out = 4'd6;
    4'd10: s2_out = 4'd7;
    4'd11: s2_out = 4'd12;
    4'd12: s2_out = 4'd0;
    4'd13: s2_out = 4'd5;
    4'd14: s2_out = 4'd14;
    default: s2_out = 4'd9;
   endcase
  end
 endcase
end
endmodule