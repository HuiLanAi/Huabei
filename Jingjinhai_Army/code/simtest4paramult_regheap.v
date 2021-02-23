/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This is the simulation testbench for the combination of paramult_1_64 and regheap_64_16b
************************************************ */


module TB4PARAMULT_REGHEAP(
    input                               clk,
    input                               rst, 

    input                               data_v,
    input   [1023:0]                    in_veca_data,
    input   [15:0]                      in_sig_data,
    input                               usr_rst,

    output                              reg_data_v_w,
    output  [1023:0]                    reg_data_w
    
    // output                              need_data_w
);





wire    [1023:0]                            mult_res_w;
wire                                        mult_res_v_w;


PARAMULT_1_64   paramult_1x64(
    .clk                                (clk),
    .rst                                (rst),
    .data_v                             (data_v),
    .in_veca_data                       (in_veca_data),
    .in_sig_data                        (in_sig_data),
    .mult_res_w                         (mult_res_w),
    .mult_res_v_w                       (mult_res_v_w)
);



REGHEAP_SELFADD_64x16b regheap_add_64x16b(
    .clk                                (clk),
    .rst                                (rst),
    .data_v                             (mult_res_v_w),
    .in_data                            (mult_res_w),
    .usr_rst                            (usr_rst),
    .reg_data_w                         (reg_data_w),
    .reg_data_v_w                       (reg_data_v_w)
);




endmodule