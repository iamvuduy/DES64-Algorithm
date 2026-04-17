module gen_key (
    input clk,
    input rst_n,
    input [63:0] key,
	input [3:0] round,

    output [47:0] key_n
);


wire [27:0] C0, D0;
reg  [27:0] C_reg, D_reg;
wire [27:0] C_shift, D_shift;

reg [3:0] round_d;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        round_d <= 0;
    else
       round_d <= round;
end

// PC1 (combinational)
PC1 u_pc1 (
    .key(key),
    .C0(C0),
    .D0(D0)
);

// register stage (C0, D0)
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        C_reg <= 0;
        D_reg <= 0;
	end else if (round==0) begin
		C_reg <= C0;
      D_reg <= D0;
		
    end else begin
        C_reg <= C_shift;
		  D_reg <= D_shift;
    end

end

// shift
shift_cd u_shift (
    .C_in(C_reg),
    .D_in(D_reg),
    .round(round_d),
    .C_out(C_shift),
    .D_out(D_shift)
);

// PC2
PC2 u_pc2 (
    .C(C_shift),
    .D(D_shift),
    .key_n(key_n)
);

endmodule