`timescale 1ns / 1ps

module tb_sinc_sync;

    // 1. Tham số hệ thống cấu hình cho DUT
    parameter DATA_WIDTH = 32;
    parameter OSR        = 256; // <--- Đổi thành OSR tĩnh theo module mới (Ví dụ chọn 256)
    
    // Các tín hiệu kết nối vào DUT
    reg                      clk;
    reg                      rst;
    reg                      data_in;
    reg                      enable_in;
    
    // Các tín hiệu ngõ ra từ DUT
    wire                     data_valid;
    wire signed [11:0]       data_out; // <--- Đồng bộ kiểu dữ liệu signed [11:0]

    
    sinc_sync #(
        .DATA_WIDTH(DATA_WIDTH),
        .OSR(OSR)
    ) uut (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .enable_in(enable_in),
        .data_valid(data_valid),
        .data_out(data_out)
    );

    // 3. Tạo xung Clock chính (Chu kỳ 20ns -> Tần số 50MHz)
    always begin
        #10 clk = ~clk;
    end

    // 4. Tạo xung kích hoạt Enable (Giữ bằng 1 liên tục giống thực tế hoạt động DSM)
    always @(posedge clk) begin
        if (rst) 
            enable_in <= 1'b0;
        else 
            enable_in <= 1'b1;
    end

    // 5. Kịch bản mô phỏng (Stimulus Process)
    initial begin
        // Ghi file sóng VCD phục vụ GTKWave
        $dumpfile("sinc_filter_sim.vcd");
        $dumpvars(0, tb_sinc_sync);

        // Khởi tạo giá trị ban đầu
        clk = 0;
        rst = 1;
        data_in = 0;

        // Duy trì trạng thái Reset trong 100ns
        #100;
        rst = 0;
        $display("[TB] Bat dau mo phong sau Reset...");

        // --- Kịch bản 1: Cấp chuỗi toàn bit 1 (Giá trị kịch trần dương) ---
        $display("[TB] Kich ban 1: Cap chuoi bit toan 1 (+1 mapping)");
        data_in = 1'b1;
        // Chờ chạy qua vài chu kỳ hạ mẫu (Với OSR=256, cần ít nhất 256 * 3 chu kỳ clk để bộ lọc Sinc3 ổn định hoàn toàn)
        #20000; 

        // --- Kịch bản 2: Cấp chuỗi toàn bit 0 (Giá trị kịch sàn âm) ---
        $display("[TB] Kich ban 2: Cap chuoi bit toan 0 (-1 mapping)");
        data_in = 1'b0;
        #20000;

        // --- Kịch bản 3: Cấp chuỗi bit ngẫu nhiên (Giả lập tín hiệu Delta-Sigma thực tế) ---
        $display("[TB] Kich ban 3: Cap chuoi bit ngau nhien");
        repeat (2000) begin
            @(posedge clk);
            if (enable_in) begin
                data_in <= $random % 2; // Sinh ngẫu nhiên bit 0 hoặc 1
            end
        end

        // Kết thúc mô phỏng
        $display("[TB] Mo phong hoan thanh.");
        $finish;
    end

    // 6. Giám sát hệ thống qua màn hình Console
    initial begin
        // Vì data_out ở module mới đã được định nghĩa sẵn là signed nên không cần tạo net trung gian để ép kiểu nữa
        $monitor("Thoi gian: %0t ns | Data_Valid = %b | Data_Out (HEX) = %h | Data_Out (DEC) = %d", 
                 $time, data_valid, data_out, data_out);
    end

endmodule
