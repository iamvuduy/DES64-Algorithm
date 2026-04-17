module shift_cd (
    input [27:0] C_in,
    input [27:0] D_in,
    input [3:0] round,
    output reg [27:0] C_out,
    output reg [27:0] D_out
);

always @(*) begin
    if (round==0 || round==1 || round==8 || round==15) begin
        C_out = {C_in[26:0], C_in[27]};
        D_out = {D_in[26:0], D_in[27]};
    end else begin
        C_out = {C_in[25:0], C_in[27:26]};
        D_out = {D_in[25:0], D_in[27:26]};
    end
end

endmodule