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

// initial begin
//     rst <= 'd1;
//     start <= 'd0;
//     need_data <= 'd0;
//     #5;
//     rst <= 'd0;
//     #2;
//     start <= 'd1;
//     #2;
//     start <= 'd0;
//     #2;
//     need_data <= 'd1;
//     #2;
//     need_data <= 'd0;
//     #20;
//     need_data <= 'd1;
//     #2;
//     need_data <= 'd0;
// end


// initial begin
//     rst <= 'd1;
//     start <= 'd0;
//     need_data <= 'd0;
//     #5;
//     rst <= 'd0;
//     #2;
//     start <= 'd1;
//     #2;
//     start <= 'd0;
//     #2;
//     need_data <= 'd1;
//     #2;
//     need_data <= 'd0;
//     #20;
//     need_data <= 'd1;
//     #2;
//     need_data <= 'd0;
// end

// CONV1_LAYER1_DENSE_TOP conv1_layer1_dense_top(
//     .clk                        (clk),
//     .rst                        (rst),
//     .start                      (start),
//     .need_data                  (need_data)
// );


wire                                                reg_data_v_w;
wire    [1023:0]                                    reg_data_w;
reg                                                 data_v;
reg     [1023:0]                                    in_veca_data;
reg     [15:0]                                      in_sig_data;
reg                                                 usr_rst;


initial begin
    rst <= 'd1;
    data_v <= 'd0;
    usr_rst <= 'd0;
    #5;
    rst <= 'd0;
    #2;
    data_v <= 'd1;
    #2;
    data_v <= 'd1;
    #2;
    data_v <= 'd1;
    #2;
    data_v <= 'd1;
    #2;
    data_v <= 'd1;
    #2;
    data_v <= 'd1;
    #2;
    data_v <= 'd0;

    #200;
    usr_rst <= 'd1;
    
    #2;
    data_v <= 'd1;
    usr_rst <= 'd0;
    #2;
    data_v <= 'd0;
    #2;
end

always @ (posedge clk) begin
    in_sig_data <= 'h0100;
    in_veca_data <= 'h0100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100;
end


TB4PARAMULT_REGHEAP tb4paramult_regheap(
    .clk                                (clk),
    .rst                                (rst),
    .data_v                             (data_v),
    .in_veca_data                       (in_veca_data),
    .in_sig_data                        (in_sig_data),
    .usr_rst                            (usr_rst),
    .reg_data_w                         (reg_data_w),
    .reg_data_v_w                       (reg_data_v_w)
);


endmodule



