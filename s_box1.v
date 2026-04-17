module s_box1 (
input [5:0] s1_in,
output reg[3:0] s1_out );

always @ (*) begin
 case ({s1_in[5], s1_in[0]})
  2'b00: begin
   case (s1_in[4:1])
    4'd0: s1_out = 4'd14;
    4'd1: s1_out = 4'd4;
    4'd2: s1_out = 4'd13;
    4'd3: s1_out = 4'd1;
    4'd4: s1_out = 4'd2;
    4'd5: s1_out = 4'd15;
    4'd6: s1_out = 4'd11;
    4'd7: s1_out = 4'd8;
    4'd8: s1_out = 4'd3;
    4'd9: s1_out = 4'd10;
    4'd10: s1_out = 4'd6;
    4'd11: s1_out = 4'd12;
    4'd12: s1_out = 4'd5;
    4'd13: s1_out = 4'd9;
    4'd14: s1_out = 4'd0;
    default: s1_out = 4'd7;
   endcase
  end
  2'b01: begin
   case (s1_in[4:1])
    4'd0: s1_out = 4'd0;
    4'd1: s1_out = 4'd15;
    4'd2: s1_out = 4'd7;
    4'd3: s1_out = 4'd4;
    4'd4: s1_out = 4'd14;
    4'd5: s1_out = 4'd2;
    4'd6: s1_out = 4'd13;
    4'd7: s1_out = 4'd1;
    4'd8: s1_out = 4'd10;
    4'd9: s1_out = 4'd6;
    4'd10: s1_out = 4'd12;
    4'd11: s1_out = 4'd11;
    4'd12: s1_out = 4'd9;
    4'd13: s1_out = 4'd5;
    4'd14: s1_out = 4'd3;
    default: s1_out = 4'd8;
   endcase
  end
  2'b10: begin
   case (s1_in[4:1])
    4'd0: s1_out = 4'd4;
    4'd1: s1_out = 4'd1;
    4'd2: s1_out = 4'd14;
    4'd3: s1_out = 4'd8;
    4'd4: s1_out = 4'd13;
    4'd5: s1_out = 4'd6;
    4'd6: s1_out = 4'd2;
    4'd7: s1_out = 4'd11;
    4'd8: s1_out = 4'd15;
    4'd9: s1_out = 4'd12;
    4'd10: s1_out = 4'd9;
    4'd11: s1_out = 4'd7;
    4'd12: s1_out = 4'd3;
    4'd13: s1_out = 4'd10;
    4'd14: s1_out = 4'd5;
    default: s1_out = 4'd0;
   endcase
  end
  default: begin
   case (s1_in[4:1])
    4'd0: s1_out = 4'd15;
    4'd1: s1_out = 4'd12;
    4'd2: s1_out = 4'd8;
    4'd3: s1_out = 4'd2;
    4'd4: s1_out = 4'd4;
    4'd5: s1_out = 4'd9;
    4'd6: s1_out = 4'd1;
    4'd7: s1_out = 4'd7;
    4'd8: s1_out = 4'd5;
    4'd9: s1_out = 4'd11;
    4'd10: s1_out = 4'd3;
    4'd11: s1_out = 4'd14;
    4'd12: s1_out = 4'd10;
    4'd13: s1_out = 4'd0;
    4'd14: s1_out = 4'd6;
    default: s1_out = 4'd13;
   endcase
  end
 endcase
end
endmodule