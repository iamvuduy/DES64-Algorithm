module shift_cd (
    input  [27:0] C_in, D_in,
    input  [3:0]  round,
    input         mode,
    output reg [27:0] C_out, D_out
);

// Tầng 1: Tính số bit shift
reg [1:0] n;
always @(*) begin
    if (!mode) begin // ENCRYPT: rotate left
        case (round)
            4'd0, 4'd1, 4'd8, 4'd15 : n = 2'd1;
            default                  : n = 2'd2;
        endcase
    end else begin   // DECRYPT: rotate right
        case (round)
            4'd0                     : n = 2'd0;
            4'd1, 4'd8, 4'd15        : n = 2'd1;
            default                  : n = 2'd2;
        endcase
    end
end

// Tầng 2: Thực hiện rotate
always @(*) begin
    if (!mode) begin // rotate left
        case (n)
            2'd1: begin C_out = {C_in[26:0], C_in[27]};    D_out = {D_in[26:0], D_in[27]};    end
            2'd2: begin C_out = {C_in[25:0], C_in[27:26]}; D_out = {D_in[25:0], D_in[27:26]}; end
            default: begin C_out = C_in; D_out = D_in; end
        endcase
    end else begin   // rotate right
        case (n)
            2'd1: begin C_out = {C_in[0],   C_in[27:1]};   D_out = {D_in[0],   D_in[27:1]};   end
            2'd2: begin C_out = {C_in[1:0], C_in[27:2]};   D_out = {D_in[1:0], D_in[27:2]};   end
            default: begin C_out = C_in; D_out = D_in; end
        endcase
    end
end

endmodule