module des_ctrl (
    input clk,
    input rst_n,
    input cipher_en,
    
    output reg [3:0] round_cnt,
    output reg ld_en,
    output reg round_en,
    output reg sel_final,
    output reg done
);

    // Định nghĩa các trạng thái
    localparam IDLE  = 3'd0,
               LOAD  = 3'd1,
               ROUND = 3'd2,
               FINAL = 3'd3,
               DONE  = 3'd4;

    reg [2:0] state, next_state;

    // Chuyển trạng thái
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= IDLE;
        else state <= next_state;
    end

    // Logic chuyển trạng thái
    always @(*) begin
        case (state)
            IDLE:  next_state = cipher_en ? LOAD : IDLE;
            LOAD:  next_state = ROUND;
            ROUND: next_state = (round_cnt == 4'd15) ? FINAL : ROUND;
            FINAL: next_state = DONE;
            DONE:  next_state = IDLE;
            default: next_state = IDLE;
        endcase
    end

    // Logic điều khiển tín hiệu và bộ đếm vòng
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            round_cnt <= 4'd0;
            ld_en     <= 1'b0;
            round_en  <= 1'b0;
            sel_final <= 1'b0;
            done      <= 1'b0;
        end else begin
            // Mặc định các tín hiệu
            ld_en     <= 1'b0;
            round_en  <= 1'b0;
            sel_final <= 1'b0;
            done      <= 1'b0;

            case (state)
                IDLE: begin
                    round_cnt <= 4'd0;
                end
                LOAD: begin
                    ld_en <= 1'b1;
                    round_cnt <= 4'd0;
                end
                ROUND: begin
                round_en <= 1'b1; 
                if (round_cnt < 4'd15) 
                    round_cnt <= round_cnt + 1'b1;
						end
                FINAL: begin
                    sel_final <= 1'b1;
                end
                DONE: begin
                    done <= 1'b1;
                end
            endcase
        end
    end
endmodule