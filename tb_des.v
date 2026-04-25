`timescale 1ns/1ps

module tb_des;

    // Inputs
    reg clk;
    reg rst_n;
    reg start;
    reg mode;
    reg [63:0] plain_text;
    reg [63:0] key;

    // Outputs
    wire [63:0] cipher_text;
    wire done;

    // Instantiate DUT
    des_top uut (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .mode(mode),
        .plain_text(plain_text),
        .key(key),
        .cipher_text(cipher_text),
        .done(done)
    );

    // Clock: 10ns period
    always #5 clk = ~clk;

    // Task: pulse start 1 cycle
    task start_pulse;
    begin
        start = 1;
        @(posedge clk);
        start = 0;
    end
    endtask

    initial begin
        // Init
        clk = 0;
        rst_n = 0;
        start = 0;
        mode = 0;
        plain_text = 0;
        key = 0;

        // Reset
        #20;
        rst_n = 1;

        //----------------------------------------
        // TEST 1: ENCRYPT
        //----------------------------------------
        @(posedge clk);
        plain_text = 64'h0123456789ABCDEF;
        key        = 64'h133457799BBCDFF1;
        mode       = 0; // encrypt

        start_pulse(); // start chỉ 1 chu kỳ

        // Chờ done
        wait(done == 1);
        @(posedge clk);

        $display("ENCRYPT DONE: cipher = %h", cipher_text);

        //----------------------------------------
        // TEST 2: DECRYPT
        //----------------------------------------
        @(posedge clk);
        plain_text = 64'h85E813540F0AB405; // lấy output làm input
        key        = 64'h133457799BBCDFF1;
        mode       = 1; // decrypt

        start_pulse();

        wait(done == 1);
        @(posedge clk);

        $display("DECRYPT DONE: plain = %h", cipher_text);

        //----------------------------------------
        // Kết thúc
        //----------------------------------------
        #20;
        $stop;
    end

endmodule
