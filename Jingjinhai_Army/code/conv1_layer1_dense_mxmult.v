/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
/* *********************************************
This module is the computing parts of conv1 layer1's matrix computing between A and input feature.
This array contains 25 DSPs and finish computing with 3 clk delay
Designed for two 25x1 vector's mult
************************************************ */


module CONV1_LAYER1_DENSE_MXMULT(
    input                               clk, 
    input                               rst,
    input                               start,

    input                               data_v,
    input                               halt,
    input   [399:0]                     in_fea_w,
    input   [399:0]                     a_mx_w,

    output  [399:0]                     mult_res_w,
    output                              mult_res_v_w
);


wire    [31:0]                          mult_out_0;
wire    [31:0]                          mult_out_1;
wire    [31:0]                          mult_out_2;
wire    [31:0]                          mult_out_3;
wire    [31:0]                          mult_out_4;
wire    [31:0]                          mult_out_5;
wire    [31:0]                          mult_out_6;
wire    [31:0]                          mult_out_7;
wire    [31:0]                          mult_out_8;
wire    [31:0]                          mult_out_9;
wire    [31:0]                          mult_out_10;
wire    [31:0]                          mult_out_11;
wire    [31:0]                          mult_out_12;
wire    [31:0]                          mult_out_13;
wire    [31:0]                          mult_out_14;
wire    [31:0]                          mult_out_15;
wire    [31:0]                          mult_out_16;
wire    [31:0]                          mult_out_17;
wire    [31:0]                          mult_out_18;
wire    [31:0]                          mult_out_19;
wire    [31:0]                          mult_out_20;
wire    [31:0]                          mult_out_21;
wire    [31:0]                          mult_out_22;
wire    [31:0]                          mult_out_23;
wire    [31:0]                          mult_out_24;

reg mult_en_0;
reg mult_en_1;
reg mult_en_2;
reg mult_en_3;
reg mult_en_4;
reg mult_en_5;
reg mult_en_6;






reg     [4:0]                               working_flag;


always @ (posedge clk) begin
    if(!rst) begin
        if(halt) begin
            working_flag <= working_flag;
        end
        
        else begin
            if(data_v) begin
                working_flag <= (working_flag << 1) + 'd1;
            end
            else begin
                working_flag <= working_flag << 1;
            end
        end
    end
    else begin
        working_flag <= 'd0;
    end
end



assign mult_res_v_w = working_flag[3];



always @ (working_flag) begin
    if(!rst) begin
        mult_en_0 = working_flag[0]||working_flag[1]||working_flag[2]||working_flag[3];
        mult_en_1 = working_flag[0]||working_flag[1]||working_flag[2]||working_flag[3];
        mult_en_2 = working_flag[0]||working_flag[1]||working_flag[2]||working_flag[3];
        mult_en_3 = working_flag[0]||working_flag[1]||working_flag[2]||working_flag[3];
        mult_en_4 = working_flag[0]||working_flag[1]||working_flag[2]||working_flag[3];
        mult_en_5 = working_flag[0]||working_flag[1]||working_flag[2]||working_flag[3];
        mult_en_6 = working_flag[0]||working_flag[1]||working_flag[2]||working_flag[3];
    end
    else begin
        mult_en_0 = 'd0;
        mult_en_1 = 'd0;
        mult_en_2 = 'd0;
        mult_en_3 = 'd0;
        mult_en_4 = 'd0;
        mult_en_5 = 'd0;
        mult_en_6 = 'd0;
    end
end







// always @(posedge clk) begin
//     if(!rst) begin
        
//     end
//     else begin
        
//     end
// end
assign  mult_res_w = {
            mult_out_24[23:8]
            ,mult_out_23[23:8]
            ,mult_out_22[23:8]
            ,mult_out_21[23:8]
            ,mult_out_20[23:8]
            ,mult_out_19[23:8]
            ,mult_out_18[23:8]
            ,mult_out_17[23:8]
            ,mult_out_16[23:8]
            ,mult_out_15[23:8]
            ,mult_out_14[23:8]
            ,mult_out_13[23:8]
            ,mult_out_12[23:8]
            ,mult_out_11[23:8]
            ,mult_out_10[23:8]
            ,mult_out_9[23:8]
            ,mult_out_8[23:8]
            ,mult_out_7[23:8]
            ,mult_out_6[23:8]
            ,mult_out_5[23:8]
            ,mult_out_4[23:8]
            ,mult_out_3[23:8]
            ,mult_out_2[23:8]
            ,mult_out_1[23:8]
            ,mult_out_0[23:8]};









// DSP array
MULT_16X16 mult_16X16_0(.CLK(clk), .CE(mult_en_0), .A(in_fea_w[15:0]), .B(a_mx_w[15:0]), .P(mult_out_0));
MULT_16X16 mult_16X16_1(.CLK(clk), .CE(mult_en_0), .A(in_fea_w[31:16]), .B(a_mx_w[31:16]), .P(mult_out_1));
MULT_16X16 mult_16X16_2(.CLK(clk), .CE(mult_en_0), .A(in_fea_w[47:32]), .B(a_mx_w[47:32]), .P(mult_out_2));
MULT_16X16 mult_16X16_3(.CLK(clk), .CE(mult_en_0), .A(in_fea_w[63:48]), .B(a_mx_w[63:48]), .P(mult_out_3));
MULT_16X16 mult_16X16_4(.CLK(clk), .CE(mult_en_1), .A(in_fea_w[79:64]), .B(a_mx_w[79:64]), .P(mult_out_4));
MULT_16X16 mult_16X16_5(.CLK(clk), .CE(mult_en_1), .A(in_fea_w[95:80]), .B(a_mx_w[95:80]), .P(mult_out_5));
MULT_16X16 mult_16X16_6(.CLK(clk), .CE(mult_en_1), .A(in_fea_w[111:96]), .B(a_mx_w[111:96]), .P(mult_out_6));
MULT_16X16 mult_16X16_7(.CLK(clk), .CE(mult_en_1), .A(in_fea_w[127:112]), .B(a_mx_w[127:112]), .P(mult_out_7));
MULT_16X16 mult_16X16_8(.CLK(clk), .CE(mult_en_2), .A(in_fea_w[143:128]), .B(a_mx_w[143:128]), .P(mult_out_8));
MULT_16X16 mult_16X16_9(.CLK(clk), .CE(mult_en_2), .A(in_fea_w[159:144]), .B(a_mx_w[159:144]), .P(mult_out_9));
MULT_16X16 mult_16X16_10(.CLK(clk), .CE(mult_en_2), .A(in_fea_w[175:160]), .B(a_mx_w[175:160]), .P(mult_out_10));
MULT_16X16 mult_16X16_11(.CLK(clk), .CE(mult_en_2), .A(in_fea_w[191:176]), .B(a_mx_w[191:176]), .P(mult_out_11));
MULT_16X16 mult_16X16_12(.CLK(clk), .CE(mult_en_3), .A(in_fea_w[207:192]), .B(a_mx_w[207:192]), .P(mult_out_12));
MULT_16X16 mult_16X16_13(.CLK(clk), .CE(mult_en_3), .A(in_fea_w[223:208]), .B(a_mx_w[223:208]), .P(mult_out_13));
MULT_16X16 mult_16X16_14(.CLK(clk), .CE(mult_en_3), .A(in_fea_w[239:224]), .B(a_mx_w[239:224]), .P(mult_out_14));
MULT_16X16 mult_16X16_15(.CLK(clk), .CE(mult_en_3), .A(in_fea_w[255:240]), .B(a_mx_w[255:240]), .P(mult_out_15));
MULT_16X16 mult_16X16_16(.CLK(clk), .CE(mult_en_4), .A(in_fea_w[271:256]), .B(a_mx_w[271:256]), .P(mult_out_16));
MULT_16X16 mult_16X16_17(.CLK(clk), .CE(mult_en_4), .A(in_fea_w[287:272]), .B(a_mx_w[287:272]), .P(mult_out_17));
MULT_16X16 mult_16X16_18(.CLK(clk), .CE(mult_en_4), .A(in_fea_w[303:288]), .B(a_mx_w[303:288]), .P(mult_out_18));
MULT_16X16 mult_16X16_19(.CLK(clk), .CE(mult_en_4), .A(in_fea_w[319:304]), .B(a_mx_w[319:304]), .P(mult_out_19));
MULT_16X16 mult_16X16_20(.CLK(clk), .CE(mult_en_5), .A(in_fea_w[335:320]), .B(a_mx_w[335:320]), .P(mult_out_20));
MULT_16X16 mult_16X16_21(.CLK(clk), .CE(mult_en_5), .A(in_fea_w[351:336]), .B(a_mx_w[351:336]), .P(mult_out_21));
MULT_16X16 mult_16X16_22(.CLK(clk), .CE(mult_en_5), .A(in_fea_w[367:352]), .B(a_mx_w[367:352]), .P(mult_out_22));
MULT_16X16 mult_16X16_23(.CLK(clk), .CE(mult_en_5), .A(in_fea_w[383:368]), .B(a_mx_w[383:368]), .P(mult_out_23));
MULT_16X16 mult_16X16_24(.CLK(clk), .CE(mult_en_6), .A(in_fea_w[399:384]), .B(a_mx_w[399:384]), .P(mult_out_24));


endmodule