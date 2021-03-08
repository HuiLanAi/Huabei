/* *********************************************
This module is the top module of conv1_layer1_dense function parts
************************************************ */

module CONV1_LAYER1_DENSE_TOP(
    input                               clk, 
    input                               rst,
    input                               start,

    input                               halt
);



reg                                 en_mx_func;


always @ (posedge clk) begin
    if(!rst) begin
        en_mx_func <= 'd1;
    end
    else begin
        en_mx_func <= 'd0;
    end
end



wire                                infea_v_w;
wire                                mxbram_v_w;
wire                                col_loop_w;
wire    [399:0]                     in_fea_w;
wire    [399:0]                     matrix_para_w;
reg     [15:0]                      fea_data_4conv1;
reg                                 data_v_4conv1;





// data-shortcut: when mx func part is not used, choose the corresponding data from 
// global input feature bram and send it directly into conv1 parallel mult module
// always @ (en_mx_func or col_loop_w or infea_v_w or mxmultadd_res_v_w or mxmultadd_res_w or in_fea_w or halt) begin
//     if (!rst) begin
//         if (halt) begin
//             fea_data_4conv1 = fea_data_4conv1;
//             data_v_4conv1 = data_v_4conv1;
//         end
//         else if(en_mx_func) begin
//             fea_data_4conv1 = mxmultadd_res_w;
//             data_v_4conv1 = mxmultadd_res_v_w;
//         end
//         else begin
//             case (col_loop_w)
//             'd0: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[15:0];
//             end
//             'd1: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[31:16];
//             end
//             'd2: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[47:32];
//             end

//             'd3: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[63:48];
//             end

//             'd4: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[79:64];
//             end

//             'd5: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[95:80];
//             end

//             'd6: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[111:96];
//             end

//             'd7: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[127:112];
//             end

//             'd8: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[143:128];
//             end

//             'd9: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[159:144];
//             end

//             'd10: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[175:160];
//             end

//             'd11: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[191:176];
//             end

//             'd12: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[207:192];
//             end

//             'd13: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[223:208];
//             end

//             'd14: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[239:224];
//             end

//             'd15: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[255:240];
//             end

//             'd16: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[271:256];
//             end

//             'd17: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[287:272];
//             end

//             'd18: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[303:288];
//             end

//             'd19: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[319:304];
//             end

//             'd20: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[335:320];
//             end

//             'd21: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[351:336];
//             end

//             'd22: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[367:352];
//             end

//             'd23: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[383:368];
//             end

//             'd24: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = in_fea_w[399:384];
//             end

//             default: begin
//                 data_v_4conv1 = infea_v_4conv1;
//                 fea_data_4conv1 = fea_data_4conv1;
//             end

//             endcase
//         end
//     end
//     else begin
//         fea_data_4conv1 = 'd0;
//         data_v_4conv1 = 'd0;
//     end
// end



wire                            infea_v_4conv1;



// global bram storage
GLOBAL_IN_FEA global_in_fea(
    .clk                        (clk),
    .rst                        (rst),
    .start                      (start),
    .halt                       (halt),
    .data_v                     (infea_v_w),
    .in_fea                     (in_fea_w),
    .col_loop_w                 (col_loop_w),
    .data_v_4conv1              (infea_v_4conv1)
);



// A_Matrix bram storage
A_MATRIX a_matrix(
    .clk                        (clk), 
    .rst                        (rst),
    .start                      (start),
    .halt                       (halt),
    .en_mxbram                  (en_mx_func),
    .data_v                     (mxbram_v_w),
    .matrix_para                (matrix_para_w)
);




wire    [399:0]                         mult_res_w;
wire                                    mult_res_v_w;



// matrix mult: feature-vector dot mx_abc-vector
CONV1_LAYER1_DENSE_MXMULT conv1_layer_dense_mxmult(
    .clk                        (clk),
    .rst                        (rst),
    .start                      (start),
    .data_v                     (infea_v_w),
    .in_fea_w                   (in_fea_w),
    .a_mx_w                     (matrix_para_w),
    .mult_res_w                 (mult_res_w),
    .mult_res_v_w               (mult_res_v_w),
    .halt                       (halt)
);



wire    [15:0]                          mxmultadd_res_w;
wire                                    mxmultadd_res_v_w;


// accumulate dot result
ADDERTREE_25WISE addertree_25wise_0(
    .clk                        (clk),
    .rst                        (rst),
    .start                      (start),
    .data_v                     (mult_res_v_w),
    .in_add_w                   (mult_res_w),
    .add_res_w                  (mxmultadd_res_w),
    .add_res_v_w                (mxmultadd_res_v_w)
);




wire    [1023:0]                            conv1_wei_w;
wire                                        conv1_wei_v_w;


// conv1 weight storage from bram
CONV1_WEI_63X3 conv1_wei_64_ocx_3ic(
    .clk                        (clk),
    .rst                        (rst),
    .need_data                  (data_v_4conv1),
    .halt                       (halt),
    .conv1_wei                  (conv1_wei_w),
    .conv1_wei_v                (conv1_wei_v_w)
);





wire                            para_mult_res_v;
wire    [1023:0]                para_mult_res;




// conv1x1 function part
PARAMULT_1x64 parallel_mult_1x64(
    .clk                        (clk),
    .rst                        (rst),
    .sigdata_v                  (data_v_4conv1),
    .vecdata_v                  (conv1_wei_v_w),
    .halt                       (halt),
    .in_veca_data               (conv1_wei_w),
    .in_sig_data                (fea_data_4conv1),
    .mult_res_w                 (para_mult_res),
    .mult_res_v_w               (para_mult_res_v)
);




wire    [1023:0]                        loop3_regdata_w;
wire                                    loop3_regdata_v_w;


// accumulate conv1x1's result along channel dimension
LOOP3_REGHEAP loop3_regheap(
    .clk                        (clk),
    .rst                        (rst),
    .data_v                     (para_mult_res_v),
    .in_data                    (para_mult_res),
    .halt                       (halt),
    .loop3_regdata_w            (loop3_regdata_w),
    .loop3_regdata_v_w          (loop3_regdata_v_w)
);




wire    [1023:0]                        bn_add_res_w;
wire                                    bn_add_res_v_w;


BNADD_CHN64 bn_add(
    .clk                        (clk),
    .rst                        (rst),
    .acc_res_w                  (loop3_regdata_w),
    .acc_res_v_w                (loop3_regdata_v_w),
    .bn_add_res_w               (bn_add_res_w),
    .bn_add_res_v_w             (bn_add_res_v_w)
);





wire    [1023:0]                        bn_mult_res_w;
wire                                    bn_mult_res_v_w;


BNMULT_CHN64 bn_mult(
    .clk                        (clk),
    .rst                        (rst),
    .bn_add_res_w               (bn_add_res_w),
    .bn_add_res_v_w             (bn_add_res_v_w),
    .bn_mult_res_w              (bn_mult_res_w),
    .bn_mult_res_v_w            (bn_mult_res_v_w)
);




wire    [1023:0]                    out_part_sum_w;
wire                                out_part_sum_v_w;

INTERPE_FIFO_CHN64 interpe_fifo(
    .clk                        (clk),
    .rst                        (rst),
    .part_sum                   (out_part_sum_w),
    .part_sum_v                 (out_part_sum_v_w)
);




PART_SUM_CHN64 part_sum_chn64(
    .clk                        (clk),
    .rst                        (rst),
    .bn_mult_res_w              (bn_mult_res_w),
    .bn_mult_res_v_w            (bn_mult_res_v_w),
    .out_part_sum_w             (out_part_sum_w),
    .out_part_sum_v_w           (out_part_sum_v_w)
);





endmodule