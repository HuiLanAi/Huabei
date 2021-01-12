/* *********************************************
This file is a top module to generate clk, rst and start signal
************************************************ */


module clk_rst();

reg clk;
reg rst;
reg start;
reg need_data;


always begin
    clk <= 'd0;
    #1;
    clk <= ~clk;
    #1;
end

initial begin
    rst <= 'd1;
    start <= 'd0;
    need_data <= 'd0;
    #5;
    rst <= 'd0;
    #2;
    start <= 'd1;
    #2;
    start <= 'd0;
    #2;
    need_data <= 'd1;
    #2;
    need_data <= 'd0;
    #20;
    need_data <= 'd1;
    #2;
    need_data <= 'd0;
end




CONV1_LAYER1_DENSE_TOP conv1_layer1_dense_top(
    .clk                        (clk),
    .rst                        (rst),
    .start                      (start),
    .need_data                  (need_data)
    // .data_v                     (data_v),
    // .in_fea                     (in_fea)
);


endmodule



