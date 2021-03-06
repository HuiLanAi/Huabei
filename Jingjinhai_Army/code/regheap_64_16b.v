/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is a regheap with self-adding function, the size of 
regsiter array is 16bit*64. All output will be stored in reg, so 
the user does not need to process output value in pipeline method.
When users set usr_rst as high, all reg will be returned to zero.

This module only contains self-adding controling logic, users may
need to set their loop-cnter outside this module.

The basic unit of this module is 2 16bit regs and an adding dsp core.
Two regs are combined to fully use dsp's bandwidth.
************************************************ */

module REGHEAP_SELFADD_64x16b (
    input                           clk, 
    input                           rst, 

    input                           data_v,
    input   [1023:0]                in_data,
    input                           usr_rst,

    output                          reg_data_v_w,
    output  [1023:0]                reg_data_w

);




SELFADD_REG_16bx2 regu_0(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[15:0]), .in_data_b(in_data[31:16]), .out_data_a_w(reg_data_w[15:0]), .out_data_b_w(reg_data_w[31:16]), .out_data_v_w(reg_data_v_w), .data_v(data_v));
SELFADD_REG_16bx2 regu_1(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[47:32]), .in_data_b(in_data[63:48]), .out_data_a_w(reg_data_w[47:32]), .out_data_b_w(reg_data_w[63:48]), .data_v(data_v));
SELFADD_REG_16bx2 regu_2(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[79:64]), .in_data_b(in_data[95:80]), .out_data_a_w(reg_data_w[79:64]), .out_data_b_w(reg_data_w[95:80]), .data_v(data_v));
SELFADD_REG_16bx2 regu_3(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[111:96]), .in_data_b(in_data[127:112]), .out_data_a_w(reg_data_w[111:96]), .out_data_b_w(reg_data_w[127:112]), .data_v(data_v));
SELFADD_REG_16bx2 regu_4(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[143:128]), .in_data_b(in_data[159:144]), .out_data_a_w(reg_data_w[143:128]), .out_data_b_w(reg_data_w[159:144]), .data_v(data_v));
SELFADD_REG_16bx2 regu_5(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[175:160]), .in_data_b(in_data[191:176]), .out_data_a_w(reg_data_w[175:160]), .out_data_b_w(reg_data_w[191:176]), .data_v(data_v));
SELFADD_REG_16bx2 regu_6(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[207:192]), .in_data_b(in_data[223:208]), .out_data_a_w(reg_data_w[207:192]), .out_data_b_w(reg_data_w[223:208]), .data_v(data_v));
SELFADD_REG_16bx2 regu_7(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[239:224]), .in_data_b(in_data[255:240]), .out_data_a_w(reg_data_w[239:224]), .out_data_b_w(reg_data_w[255:240]), .data_v(data_v));
SELFADD_REG_16bx2 regu_8(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[271:256]), .in_data_b(in_data[287:272]), .out_data_a_w(reg_data_w[271:256]), .out_data_b_w(reg_data_w[287:272]), .data_v(data_v));
SELFADD_REG_16bx2 regu_9(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[303:288]), .in_data_b(in_data[319:304]), .out_data_a_w(reg_data_w[303:288]), .out_data_b_w(reg_data_w[319:304]), .data_v(data_v));
SELFADD_REG_16bx2 regu_10(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[335:320]), .in_data_b(in_data[351:336]), .out_data_a_w(reg_data_w[335:320]), .out_data_b_w(reg_data_w[351:336]), .data_v(data_v));
SELFADD_REG_16bx2 regu_11(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[367:352]), .in_data_b(in_data[383:368]), .out_data_a_w(reg_data_w[367:352]), .out_data_b_w(reg_data_w[383:368]), .data_v(data_v));
SELFADD_REG_16bx2 regu_12(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[399:384]), .in_data_b(in_data[415:400]), .out_data_a_w(reg_data_w[399:384]), .out_data_b_w(reg_data_w[415:400]), .data_v(data_v));
SELFADD_REG_16bx2 regu_13(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[431:416]), .in_data_b(in_data[447:432]), .out_data_a_w(reg_data_w[431:416]), .out_data_b_w(reg_data_w[447:432]), .data_v(data_v));
SELFADD_REG_16bx2 regu_14(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[463:448]), .in_data_b(in_data[479:464]), .out_data_a_w(reg_data_w[463:448]), .out_data_b_w(reg_data_w[479:464]), .data_v(data_v));
SELFADD_REG_16bx2 regu_15(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[495:480]), .in_data_b(in_data[511:496]), .out_data_a_w(reg_data_w[495:480]), .out_data_b_w(reg_data_w[511:496]), .data_v(data_v));
SELFADD_REG_16bx2 regu_16(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[527:512]), .in_data_b(in_data[543:528]), .out_data_a_w(reg_data_w[527:512]), .out_data_b_w(reg_data_w[543:528]), .data_v(data_v));
SELFADD_REG_16bx2 regu_17(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[559:544]), .in_data_b(in_data[575:560]), .out_data_a_w(reg_data_w[559:544]), .out_data_b_w(reg_data_w[575:560]), .data_v(data_v));
SELFADD_REG_16bx2 regu_18(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[591:576]), .in_data_b(in_data[607:592]), .out_data_a_w(reg_data_w[591:576]), .out_data_b_w(reg_data_w[607:592]), .data_v(data_v));
SELFADD_REG_16bx2 regu_19(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[623:608]), .in_data_b(in_data[639:624]), .out_data_a_w(reg_data_w[623:608]), .out_data_b_w(reg_data_w[639:624]), .data_v(data_v));
SELFADD_REG_16bx2 regu_20(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[655:640]), .in_data_b(in_data[671:656]), .out_data_a_w(reg_data_w[655:640]), .out_data_b_w(reg_data_w[671:656]), .data_v(data_v));
SELFADD_REG_16bx2 regu_21(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[687:672]), .in_data_b(in_data[703:688]), .out_data_a_w(reg_data_w[687:672]), .out_data_b_w(reg_data_w[703:688]), .data_v(data_v));
SELFADD_REG_16bx2 regu_22(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[719:704]), .in_data_b(in_data[735:720]), .out_data_a_w(reg_data_w[719:704]), .out_data_b_w(reg_data_w[735:720]), .data_v(data_v));
SELFADD_REG_16bx2 regu_23(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[751:736]), .in_data_b(in_data[767:752]), .out_data_a_w(reg_data_w[751:736]), .out_data_b_w(reg_data_w[767:752]), .data_v(data_v));
SELFADD_REG_16bx2 regu_24(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[783:768]), .in_data_b(in_data[799:784]), .out_data_a_w(reg_data_w[783:768]), .out_data_b_w(reg_data_w[799:784]), .data_v(data_v));
SELFADD_REG_16bx2 regu_25(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[815:800]), .in_data_b(in_data[831:816]), .out_data_a_w(reg_data_w[815:800]), .out_data_b_w(reg_data_w[831:816]), .data_v(data_v));
SELFADD_REG_16bx2 regu_26(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[847:832]), .in_data_b(in_data[863:848]), .out_data_a_w(reg_data_w[847:832]), .out_data_b_w(reg_data_w[863:848]), .data_v(data_v));
SELFADD_REG_16bx2 regu_27(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[879:864]), .in_data_b(in_data[895:880]), .out_data_a_w(reg_data_w[879:864]), .out_data_b_w(reg_data_w[895:880]), .data_v(data_v));
SELFADD_REG_16bx2 regu_28(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[911:896]), .in_data_b(in_data[927:912]), .out_data_a_w(reg_data_w[911:896]), .out_data_b_w(reg_data_w[927:912]), .data_v(data_v));
SELFADD_REG_16bx2 regu_29(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[943:928]), .in_data_b(in_data[959:944]), .out_data_a_w(reg_data_w[943:928]), .out_data_b_w(reg_data_w[959:944]), .data_v(data_v));
SELFADD_REG_16bx2 regu_30(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[975:960]), .in_data_b(in_data[991:976]), .out_data_a_w(reg_data_w[975:960]), .out_data_b_w(reg_data_w[991:976]), .data_v(data_v));
SELFADD_REG_16bx2 regu_31(.clk(clk), .rst(rst), .usr_rst(usr_rst), .in_data_a(in_data[1007:992]), .in_data_b(in_data[1023:1008]), .out_data_a_w(reg_data_w[1007:992]), .out_data_b_w(reg_data_w[1023:1008]), .data_v(data_v));






    
endmodule