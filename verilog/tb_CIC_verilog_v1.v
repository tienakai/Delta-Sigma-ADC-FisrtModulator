`timescale 1ns / 1ps

module tb_CIC_verilog_v1;

    // Khai báo các tham số (parameters)
    parameter WIDTH = 14;
    parameter K = 16;
    parameter CLKDIV_WIDTH = 6;

    // Khai báo tín hiệu kết nối
    reg X;
    reg clk;
    reg rst;
    wire signed [WIDTH-1:0] ADC_out;

    // Khởi tạo (Instantiate) Module chính
    CIC_verilog_v1 #(
        .WIDTH(WIDTH), 
        .K(K), 
        .CLKDIV_WIDTH(CLKDIV_WIDTH)
    ) uut (
        .X(X), 
        .clk(clk), 
        .rst(rst), 
        .ADC_out(ADC_out)
    );

    // Tạo xung nhịp (Clock generation) - Chu kỳ 10ns (100 MHz)
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // Tạo kịch bản mô phỏng (Stimulus)
    initial begin
        // Khởi tạo ban đầu
        rst = 1'b1;
        X = 1'b0;

        // Đợi 4 chu kỳ xung nhịp và nhả reset
        #40;
        rst = 1'b0;

        // Bơm tín hiệu ngõ vào X (Giả lập dòng bit từ Sigma-Delta)
        // Kịch bản 1: Cấp toàn bit 1 trong một khoảng thời gian
        repeat(500) @(posedge clk) X = 1'b1;
        
        // Kịch bản 2: Cấp toàn bit 0
        repeat(500) @(posedge clk) X = 1'b0;

        // Kịch bản 3: Cấp chuỗi bit nhấp nháy 1-0-1-0 (Tín hiệu trung bình)
        repeat(500) begin
            @(posedge clk) X = 1'b1;
            @(posedge clk) X = 1'b0;
        end

        // Kết thúc mô phỏng
        #1000;
        $display("Simulation Finished!");
        $finish;
    end

    // Lưu file VCD để xem dạng sóng trên GTKWave hoặc ModelSim
    initial begin
        $dumpfile("cic_filter_sim.vcd");
        $dumpvars(1, uut);
    end

endmodule
