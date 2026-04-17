module datapath (
    input clk,
    input rst_n,
    input [63:0] plain_text,
    input [63:0] key,
    input [3:0]  round_cnt,
    input        ld_en,       // Tín hiệu load dữ liệu ban đầu từ FSM
    input        round_en,    // Tín hiệu cập nhật L, R sau mỗi vòng
    input        sel_final,   // Tín hiệu chọn kết quả cuối (Swap + IP-1)
    
    output [63:0] cipher_text
);

    wire [31:0] L_next, R_next;
    reg  [31:0] L_reg, R_reg;
    
    // 1. Initial Permutation (IP)
    wire [31:0] L0, R0;
    ip u_ip (
        .plain_text(plain_text),
        .L0(L0),
        .R0(R0)
    );

    // 2. Key Scheduling
    wire [47:0] round_key;
    gen_key u_gen_key (
        .clk(clk),
        .rst_n(rst_n),
        .key(key),
        .round(round_cnt),
        .key_n(round_key)
    );

    // 3. F-Function
    wire [31:0] f_out;
    f_function u_f (
        .right(R_reg),
        .key(round_key),
        .f_res(f_out)
    );

    // 4. L, R Update Logic
    // Trong mỗi vòng: L_mới = R_cũ; R_mới = L_cũ XOR f(R_cũ, K)
    assign L_next = ld_en ? L0 : R_reg;
    assign R_next = ld_en ? R0 : (L_reg ^ f_out);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            L_reg <= 32'b0;
            R_reg <= 32'b0;
        end else if (ld_en || round_en) begin
            L_reg <= L_next;
            R_reg <= R_next;
        end
    end

    // 5. Final Stage: Swap + IP-1
    wire [63:0] pre_output = {R_reg, L_reg}; // Swap L và R ở vòng 16
    wire [63:0] final_out;
    fp u_fp (
        .pre_final(pre_output),
        .cipher_text(final_out)
    );

assign cipher_text = sel_final ? final_out : 64'b0;

endmodule