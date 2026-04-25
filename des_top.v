module des_top (
    input clk, rst_n, start,mode, //mode = 0 (ENCRYPT), mode=1 (DECRYPT)
    input [63:0] plain_text, key,
    output [63:0] cipher_text,
    output done
);
    // 1. Khai báo các wire điều khiển từ FSM sang Datapath
    wire ld_en, round_en, sel_final;
    wire [3:0] round_cnt;

    // 2. Gọi Instance FSM
    des_ctrl controller (
        .clk(clk), .rst_n(rst_n), .start(start),
        .round_cnt(round_cnt), // Input từ datapath để FSM biết khi nào dừng
        .ld_en(ld_en), .round_en(round_en), .sel_final(sel_final),
        .done(done)
    );

    // 3. Gọi Instance Datapath
    datapath datapath (
        .clk(clk), .plain_text(plain_text), .rst_n(rst_n), .key(key),
        .ld_en(ld_en), .round_en(round_en), .mode(mode), .sel_final(sel_final),
        .round_cnt(round_cnt), // Output để báo số vòng hiện tại cho FSM
        .cipher_text(cipher_text)
    );
endmodule