module sinc_sync (
    clk,
    rst,
    data_in,
    enable_in,
    data_valid,
    data_out
);

    // Khai báo tham số hệ thống
    parameter DATA_WIDTH = 32;
    parameter OSR        = 256;

    // Khai báo chân ngõ vào
    input                  clk;
    input                  rst;
    input                  data_in;
    input                  enable_in;
    
    // SỬA LỖI: Thêm từ khóa 'reg signed' và 'reg' cho ngõ ra chạy trong khối always
    output reg             data_valid;
    output reg [11:0] data_out;

    // Tự động tính toán số bit cần thiết cho bộ đếm: log2(OSR)
    localparam CNT_WIDTH = $clog2(OSR);
    
    // Tự động tính toán vị trí bit MSB có nghĩa dựa trên OSR
    localparam BIT_GROWTH = 3 * $clog2(OSR);
    localparam MSB_BIT    = BIT_GROWTH;

    //====================================================
    // 1-bit input mapping (0 -> -1, 1 -> +1)
    //====================================================
    wire signed [DATA_WIDTH-1:0] din;
    assign din = data_in ? 32'sd1 : -32'sd1;

    //====================================================
    // Integrator stage
    //====================================================
    reg signed [DATA_WIDTH-1:0] int1;
    reg signed [DATA_WIDTH-1:0] int2;
    reg signed [DATA_WIDTH-1:0] int3;

    always @(posedge clk) begin
        if(rst) begin
            int1 <= 0;
            int2 <= 0;
            int3 <= 0;
        end
        else if(enable_in) begin
            int1 <= int1 + din;
            int2 <= int2 + int1;
            int3 <= int3 + int2;
        end
    end

    //====================================================
    // Decimation counter
    //====================================================
    reg [CNT_WIDTH-1:0] dec_cnt;
    reg dec_en;

    always @(posedge clk) begin
        if(rst) begin
            dec_cnt <= 0;
            dec_en  <= 0;
        end
        else if(enable_in) begin
            // SỬA LỖI WIDTHEXPAND: Ép kiểu hằng số (OSR-1) về đúng độ rộng CNT_WIDTH
            if(dec_cnt == (OSR[CNT_WIDTH-1:0] - 1'b1)) begin
                dec_cnt <= 0;
                dec_en  <= 1'b1;
            end
            else begin
                dec_cnt <= dec_cnt + 1'b1;
                dec_en  <= 1'b0;
            end
        end
        else begin
            dec_en <= 1'b0;
        end
    end

    //====================================================
    // Comb stage (Sinc3)
    //====================================================
    reg signed [DATA_WIDTH-1:0] z1;
    reg signed [DATA_WIDTH-1:0] z2;
    reg signed [DATA_WIDTH-1:0] z3;

    reg signed [DATA_WIDTH-1:0] c1;
    reg signed [DATA_WIDTH-1:0] c2;
    reg signed [DATA_WIDTH-1:0] c3;
    reg                         dec_en_d; 

    always @(posedge clk) begin
        if(rst) begin
            z1 <= 0; z2 <= 0; z3 <= 0;
            c1 <= 0; c2 <= 0; c3 <= 0;
            dec_en_d <= 0;
        end
        else begin
            dec_en_d <= dec_en; 
            
            if(dec_en) begin
                // comb1
                c1 <= int3 - z1;
                z1 <= int3;

                // comb2
                c2 <= c1 - z2;
                z2 <= c1;

                // comb3
                c3 <= c2 - z3;
                z3 <= c2;
            end
        end
    end

    //====================================================
    // Output scaling
    //====================================================
    always @(posedge clk) begin
        if(rst) begin
            data_out   <= 0;
            data_valid <= 0;
        end
        else begin
            data_valid <= dec_en_d; 

            if(dec_en_d) begin
                data_out <= c3[MSB_BIT : (MSB_BIT-11)];
            end
        end
    end

endmodule
