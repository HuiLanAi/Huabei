/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is the top-controller of a regheap_64x16b. All output is already 
stored in inner regheap_64x16b. This top controller only decides the loop count
along channel dimension.
************************************************ */

module LOOP3_REGHEAP(
    input                               clk,
    input                               rst,

    input                               data_v,
    input   [1023:0]                    in_data,
    input                               halt,

    output  [1023:0]                    loop3_regdata_w,
    output                              loop3_regdata_v_w
);



parameter LOOP_CNT = 3;



assign loop3_regdata_w = reg_data_w;
assign loop3_regdata_v_w = reg_data_v_w;



reg [1:0]                           loop_cnt;
reg                                 usr_rst;





wire                                reg_data_v_w;
wire    [1023:0]                    reg_data_w;

REGHEAP_SELFADD_64x16b  chn_selfadd_reg_array(
    .clk                        (clk),
    .rst                        (rst),
    .data_v                     (data_v),
    .in_data                    (in_data),
    .usr_rst                    (usr_rst),
    .reg_data_v_w               (reg_data_v_w),
    .reg_data_w                 (reg_data_w),
    .halt                       (halt)
);


// always @ (posedge clk) begin
//     if(!rst) begin
//         if(halt) begin
//             loop_cnt <= loop_cnt;
//             usr_rst <= usr_rst;
//             loop3_regdata_v <= loop3_regdata_v;
//         end
//         else begin
//             if(reg_data_v_w) begin
//                 case(loop_cnt)
//                 'b00: begin
//                     loop_cnt <= 'b01;
//                     usr_rst <= 'd0;
//                     loop3_regdata_v <= 'd0;
//                 end

//                 'b01: begin
//                     loop_cnt <= 'b10;
//                     usr_rst <= 'd1;
//                     loop3_regdata_v <= 'd0;
//                 end
                
//                 'b10: begin
//                     loop_cnt <= 'b00;
//                     usr_rst <= 'd0;
//                     loop3_regdata_v <= 'd0;
//                 end
                
//                 'b11: begin
//                     loop_cnt <= 'b00;
//                     usr_rst <= 'd0;
//                     loop3_regdata_v <= 'd0;
//                 end
//                 endcase
//             end
//         end
//     end
//     else begin
//         loop_cnt <= 'b11;
//         usr_rst <= 'd0;
//         loop3_regdata_v <= 'd0;
//     end
// end




endmodule