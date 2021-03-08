/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is designed of parallel mulplication of 16X16. In detail, 
this module gets two 16bit*16 vector to compelte vector-vector parallel 
mulplication and outputs 16bit*16 value. The need_data_w signal is aimed
at sending to the vector-data source. User can customized this signal's behaviour.

The user who import this module should keep output stored for at least 
1 clk in register.
************************************************ */

module PARAMULT_16_16(
    input                           clk,
    input                           rst, 

    input                           data_v,
    input   [255:0]                 in_veca_data,
    input   [255:0]                 in_vecb_data,

    output                          mult_res_v_w,
    output  [255:0]                 mult_res_w,
    
    output                          need_data_w
);




reg                                     mult_en_0_7;
reg                                     mult_en_8_15;

reg     [4:0]                           busy_flag;




// use shifter to control busy_flag
always @ (posedge clk) begin
    if(!rst) begin
        if(data_v) begin
            busy_flag <= (busy_flag << 1) + 'b1;
        end
        else begin
            busy_flag <= busy_flag << 1;
        end
    end
    else begin
        busy_flag <= 'd0;
    end
end


// assign module's output_valid: mult_res_v_w
assign mult_res_v_w = busy_flag[3];


// control mult_en signal
always @ (busy_flag or data_v) begin
    if(!rst) begin
        mult_en_0_7 <= busy_flag[0]||busy_flag[1]||busy_flag[2] || data_v;
        mult_en_8_15 <= busy_flag[0]||busy_flag[1]||busy_flag[2] || data_v;
    end
    else begin
        mult_en_0_7 <= 'd0;
        mult_en_8_15 <= 'd0;
    end
end






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






MULT_16X16 mult_16X16_0(.CLK(clk), .CE(mult_en_0_7), .A(in_vecb_data[15:0]), .B(in_veca_data[15:0]), .P(mult_out_0));
MULT_16X16 mult_16X16_1(.CLK(clk), .CE(mult_en_0_7), .A(in_vecb_data[31:16]), .B(in_veca_data[31:16]), .P(mult_out_1));
MULT_16X16 mult_16X16_2(.CLK(clk), .CE(mult_en_0_7), .A(in_vecb_data[47:32]), .B(in_veca_data[47:32]), .P(mult_out_2));
MULT_16X16 mult_16X16_3(.CLK(clk), .CE(mult_en_0_7), .A(in_vecb_data[63:48]), .B(in_veca_data[63:48]), .P(mult_out_3));
MULT_16X16 mult_16X16_4(.CLK(clk), .CE(mult_en_0_7), .A(in_vecb_data[79:64]), .B(in_veca_data[79:64]), .P(mult_out_4));
MULT_16X16 mult_16X16_5(.CLK(clk), .CE(mult_en_0_7), .A(in_vecb_data[95:80]), .B(in_veca_data[95:80]), .P(mult_out_5));
MULT_16X16 mult_16X16_6(.CLK(clk), .CE(mult_en_0_7), .A(in_vecb_data[111:96]), .B(in_veca_data[111:96]), .P(mult_out_6));
MULT_16X16 mult_16X16_7(.CLK(clk), .CE(mult_en_0_7), .A(in_vecb_data[127:112]), .B(in_veca_data[127:112]), .P(mult_out_7));
MULT_16X16 mult_16X16_8(.CLK(clk), .CE(mult_en_8_15), .A(in_vecb_data[143:128]), .B(in_veca_data[143:128]), .P(mult_out_8));
MULT_16X16 mult_16X16_9(.CLK(clk), .CE(mult_en_8_15), .A(in_vecb_data[159:144]), .B(in_veca_data[159:144]), .P(mult_out_9));
MULT_16X16 mult_16X16_10(.CLK(clk), .CE(mult_en_8_15), .A(in_vecb_data[175:160]), .B(in_veca_data[175:160]), .P(mult_out_10));
MULT_16X16 mult_16X16_11(.CLK(clk), .CE(mult_en_8_15), .A(in_vecb_data[191:176]), .B(in_veca_data[191:176]), .P(mult_out_11));
MULT_16X16 mult_16X16_12(.CLK(clk), .CE(mult_en_8_15), .A(in_vecb_data[207:192]), .B(in_veca_data[207:192]), .P(mult_out_12));
MULT_16X16 mult_16X16_13(.CLK(clk), .CE(mult_en_8_15), .A(in_vecb_data[223:208]), .B(in_veca_data[223:208]), .P(mult_out_13));
MULT_16X16 mult_16X16_14(.CLK(clk), .CE(mult_en_8_15), .A(in_vecb_data[239:224]), .B(in_veca_data[239:224]), .P(mult_out_14));
MULT_16X16 mult_16X16_15(.CLK(clk), .CE(mult_en_8_15), .A(in_vecb_data[255:240]), .B(in_veca_data[255:240]), .P(mult_out_15));







assign mult_res_w = {
            mult_out_15[23:8]
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




endmodule
