/* *********************************************
This module is the top module of conv1_layer1_dense function parts
************************************************ */

module CONV1_LAYER1_DENSE_TOP(
    input                               clk, 
    input                               rst,
    input                               start,

    input                               need_data
);



wire                                data_v_w;
wire    [399:0]                     in_fea_w;
wire    [399:0]                     matrix_para_w;




// global bram storage
GLOBAL_IN_FEA global_in_fea(
    .clk                        (clk),
    .rst                        (rst),
    .start                      (start),
    .need_data                  (need_data),
    .data_v                     (data_v_w),
    .in_fea                     (in_fea_w)
);



// A_Matrix bram storage
A_MATRIX a_matrix(
    .clk                        (clk), 
    .rst                        (rst),
    .start                      (start),
    .need_data                  (need_data),
    // .data_v                     (data_v_w),
    .matrix_para                (matrix_para_w)
);



wire    [399:0]                         mult_res_w;
wire                                    mult_res_v_w;



CONV1_LAYER1_DENSE_MXMULT conv1_layer_dense_mxmult(
    .clk                        (clk),
    .rst                        (rst),
    .start                      (start),
    .data_v                     (data_v_w),
    .in_fea_w                   (in_fea_w),
    .a_mx_w                     (matrix_para_w),
    .mult_res                   (mult_res_w),
    .mult_res_v                 (mult_res_v_w)
);



wire    [15:0]                          mxmultadd_res_w;
wire                                    mxmultadd_res_v_w;


ADDERTREE_25WISE addertree_25wise_0(
    .clk                        (clk),
    .rst                        (rst),
    .start                      (start),
    .data_v                     (mult_res_v_w),
    .in_add_w                   (mult_res_w),
    .add_res_w                  (mxmultadd_res_w),
    .add_res_v_w                (mxmultadd_res_v_w)
);


PARAMULT_1_64 parallel_mult_1_64(
    .clk                        (clk),
    .rst                        (rst)
);


endmodule