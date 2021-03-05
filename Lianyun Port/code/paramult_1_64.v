/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is designed of parallel mulplication of 1-64. In detail, 
this module gets one 16bit data and one 16bit*64 vector to compelte 
element-vector parallel mulplication. The need_data_w signal is aimed at
sending to the vector-data source. User can customized this signal's behaviour.

The user who import this module should keep output stored for at least 
1 clk in register.

This module also contains a fanout_16_1024 to boardcast the signal data
into 64 republication to handle fan-out problems.
************************************************ */

module PARAMULT_1_64(
    input                           clk,
    input                           rst, 

    input                           data_v,
    input   [1023:0]                in_veca_data,
    input   [15:0]                  in_sig_data,

    output                          mult_res_v_w,
    output  [1023:0]                mult_res_w,
    
    output                          need_data_w
);




wire                                brdcast_data_v_w;
wire    [1023:0]                    brdcast_data_w;

FANOUT_16_1024 fanout_16_1024(
    .clk                        (clk),
    .rst                        (rst),
    .data_v                     (data_v),
    .in_data                    (in_sig_data),
    .brdcast_data_v_w           (brdcast_data_v_w),
    .brdcast_data_w             (brdcast_data_w)
);





reg                                     mult_en_0_7;
reg                                     mult_en_8_15;
reg                                     mult_en_16_23;
reg                                     mult_en_24_31;
reg                                     mult_en_32_39;
reg                                     mult_en_40_47;
reg                                     mult_en_48_55;
reg                                     mult_en_56_63;

reg     [4:0]                           busy_flag;




// use shifter to control busy_flag
always @ (posedge clk) begin
    if(!rst) begin
        if(brdcast_data_v_w) begin
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
always @ (busy_flag) begin
    if(!rst) begin
        mult_en_0_7 = busy_flag[0]||busy_flag[1]||busy_flag[2]||busy_flag[3];
        mult_en_8_15 = busy_flag[0]||busy_flag[1]||busy_flag[2]||busy_flag[3];
        mult_en_16_23 = busy_flag[0]||busy_flag[1]||busy_flag[2]||busy_flag[3];
        mult_en_24_31 = busy_flag[0]||busy_flag[1]||busy_flag[2]||busy_flag[3];
        mult_en_32_39 = busy_flag[0]||busy_flag[1]||busy_flag[2]||busy_flag[3];
        mult_en_40_47 = busy_flag[0]||busy_flag[1]||busy_flag[2]||busy_flag[3];
        mult_en_48_55 = busy_flag[0]||busy_flag[1]||busy_flag[2]||busy_flag[3];
        mult_en_56_63 = busy_flag[0]||busy_flag[1]||busy_flag[2]||busy_flag[3];
    end
    else begin
        mult_en_0_7 = 'd0;
        mult_en_8_15 = 'd0;
        mult_en_16_23 = 'd0;
        mult_en_24_31 = 'd0;
        mult_en_32_39 = 'd0;
        mult_en_40_47 = 'd0;
        mult_en_48_55 = 'd0;
        mult_en_56_63 = 'd0;
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
wire    [31:0]                          mult_out_16;
wire    [31:0]                          mult_out_17;
wire    [31:0]                          mult_out_18;
wire    [31:0]                          mult_out_19;
wire    [31:0]                          mult_out_20;
wire    [31:0]                          mult_out_21;
wire    [31:0]                          mult_out_22;
wire    [31:0]                          mult_out_23;
wire    [31:0]                          mult_out_24;
wire    [31:0]                          mult_out_25;
wire    [31:0]                          mult_out_26;
wire    [31:0]                          mult_out_27;
wire    [31:0]                          mult_out_28;
wire    [31:0]                          mult_out_29;
wire    [31:0]                          mult_out_30;
wire    [31:0]                          mult_out_31;
wire    [31:0]                          mult_out_32;
wire    [31:0]                          mult_out_33;
wire    [31:0]                          mult_out_34;
wire    [31:0]                          mult_out_35;
wire    [31:0]                          mult_out_36;
wire    [31:0]                          mult_out_37;
wire    [31:0]                          mult_out_38;
wire    [31:0]                          mult_out_39;
wire    [31:0]                          mult_out_40;
wire    [31:0]                          mult_out_41;
wire    [31:0]                          mult_out_42;
wire    [31:0]                          mult_out_43;
wire    [31:0]                          mult_out_44;
wire    [31:0]                          mult_out_45;
wire    [31:0]                          mult_out_46;
wire    [31:0]                          mult_out_47;
wire    [31:0]                          mult_out_48;
wire    [31:0]                          mult_out_49;
wire    [31:0]                          mult_out_50;
wire    [31:0]                          mult_out_51;
wire    [31:0]                          mult_out_52;
wire    [31:0]                          mult_out_53;
wire    [31:0]                          mult_out_54;
wire    [31:0]                          mult_out_55;
wire    [31:0]                          mult_out_56;
wire    [31:0]                          mult_out_57;
wire    [31:0]                          mult_out_58;
wire    [31:0]                          mult_out_59;
wire    [31:0]                          mult_out_60;
wire    [31:0]                          mult_out_61;
wire    [31:0]                          mult_out_62;
wire    [31:0]                          mult_out_63;









MULT_16X16 mult_16X16_0(.clk(clk), .ce(mult_en_0_7), .A(brdcast_data_w[15:0]), .B(in_veca_data[15:0]), .P(mult_out_0));
MULT_16X16 mult_16X16_1(.clk(clk), .ce(mult_en_0_7), .A(brdcast_data_w[31:16]), .B(in_veca_data[31:16]), .P(mult_out_1));
MULT_16X16 mult_16X16_2(.clk(clk), .ce(mult_en_0_7), .A(brdcast_data_w[47:32]), .B(in_veca_data[47:32]), .P(mult_out_2));
MULT_16X16 mult_16X16_3(.clk(clk), .ce(mult_en_0_7), .A(brdcast_data_w[63:48]), .B(in_veca_data[63:48]), .P(mult_out_3));
MULT_16X16 mult_16X16_4(.clk(clk), .ce(mult_en_0_7), .A(brdcast_data_w[79:64]), .B(in_veca_data[79:64]), .P(mult_out_4));
MULT_16X16 mult_16X16_5(.clk(clk), .ce(mult_en_0_7), .A(brdcast_data_w[95:80]), .B(in_veca_data[95:80]), .P(mult_out_5));
MULT_16X16 mult_16X16_6(.clk(clk), .ce(mult_en_0_7), .A(brdcast_data_w[111:96]), .B(in_veca_data[111:96]), .P(mult_out_6));
MULT_16X16 mult_16X16_7(.clk(clk), .ce(mult_en_0_7), .A(brdcast_data_w[127:112]), .B(in_veca_data[127:112]), .P(mult_out_7));
MULT_16X16 mult_16X16_8(.clk(clk), .ce(mult_en_8_15), .A(brdcast_data_w[143:128]), .B(in_veca_data[143:128]), .P(mult_out_8));
MULT_16X16 mult_16X16_9(.clk(clk), .ce(mult_en_8_15), .A(brdcast_data_w[159:144]), .B(in_veca_data[159:144]), .P(mult_out_9));
MULT_16X16 mult_16X16_10(.clk(clk), .ce(mult_en_8_15), .A(brdcast_data_w[175:160]), .B(in_veca_data[175:160]), .P(mult_out_10));
MULT_16X16 mult_16X16_11(.clk(clk), .ce(mult_en_8_15), .A(brdcast_data_w[191:176]), .B(in_veca_data[191:176]), .P(mult_out_11));
MULT_16X16 mult_16X16_12(.clk(clk), .ce(mult_en_8_15), .A(brdcast_data_w[207:192]), .B(in_veca_data[207:192]), .P(mult_out_12));
MULT_16X16 mult_16X16_13(.clk(clk), .ce(mult_en_8_15), .A(brdcast_data_w[223:208]), .B(in_veca_data[223:208]), .P(mult_out_13));
MULT_16X16 mult_16X16_14(.clk(clk), .ce(mult_en_8_15), .A(brdcast_data_w[239:224]), .B(in_veca_data[239:224]), .P(mult_out_14));
MULT_16X16 mult_16X16_15(.clk(clk), .ce(mult_en_8_15), .A(brdcast_data_w[255:240]), .B(in_veca_data[255:240]), .P(mult_out_15));
MULT_16X16 mult_16X16_16(.clk(clk), .ce(mult_en_16_23), .A(brdcast_data_w[271:256]), .B(in_veca_data[271:256]), .P(mult_out_16));
MULT_16X16 mult_16X16_17(.clk(clk), .ce(mult_en_16_23), .A(brdcast_data_w[287:272]), .B(in_veca_data[287:272]), .P(mult_out_17));
MULT_16X16 mult_16X16_18(.clk(clk), .ce(mult_en_16_23), .A(brdcast_data_w[303:288]), .B(in_veca_data[303:288]), .P(mult_out_18));
MULT_16X16 mult_16X16_19(.clk(clk), .ce(mult_en_16_23), .A(brdcast_data_w[319:304]), .B(in_veca_data[319:304]), .P(mult_out_19));
MULT_16X16 mult_16X16_20(.clk(clk), .ce(mult_en_16_23), .A(brdcast_data_w[335:320]), .B(in_veca_data[335:320]), .P(mult_out_20));
MULT_16X16 mult_16X16_21(.clk(clk), .ce(mult_en_16_23), .A(brdcast_data_w[351:336]), .B(in_veca_data[351:336]), .P(mult_out_21));
MULT_16X16 mult_16X16_22(.clk(clk), .ce(mult_en_16_23), .A(brdcast_data_w[367:352]), .B(in_veca_data[367:352]), .P(mult_out_22));
MULT_16X16 mult_16X16_23(.clk(clk), .ce(mult_en_16_23), .A(brdcast_data_w[383:368]), .B(in_veca_data[383:368]), .P(mult_out_23));
MULT_16X16 mult_16X16_24(.clk(clk), .ce(mult_en_24_31), .A(brdcast_data_w[399:384]), .B(in_veca_data[399:384]), .P(mult_out_24));
MULT_16X16 mult_16X16_25(.clk(clk), .ce(mult_en_24_31), .A(brdcast_data_w[415:400]), .B(in_veca_data[415:400]), .P(mult_out_25));
MULT_16X16 mult_16X16_26(.clk(clk), .ce(mult_en_24_31), .A(brdcast_data_w[431:416]), .B(in_veca_data[431:416]), .P(mult_out_26));
MULT_16X16 mult_16X16_27(.clk(clk), .ce(mult_en_24_31), .A(brdcast_data_w[447:432]), .B(in_veca_data[447:432]), .P(mult_out_27));
MULT_16X16 mult_16X16_28(.clk(clk), .ce(mult_en_24_31), .A(brdcast_data_w[463:448]), .B(in_veca_data[463:448]), .P(mult_out_28));
MULT_16X16 mult_16X16_29(.clk(clk), .ce(mult_en_24_31), .A(brdcast_data_w[479:464]), .B(in_veca_data[479:464]), .P(mult_out_29));
MULT_16X16 mult_16X16_30(.clk(clk), .ce(mult_en_24_31), .A(brdcast_data_w[495:480]), .B(in_veca_data[495:480]), .P(mult_out_30));
MULT_16X16 mult_16X16_31(.clk(clk), .ce(mult_en_24_31), .A(brdcast_data_w[511:496]), .B(in_veca_data[511:496]), .P(mult_out_31));
MULT_16X16 mult_16X16_32(.clk(clk), .ce(mult_en_32_39), .A(brdcast_data_w[527:512]), .B(in_veca_data[527:512]), .P(mult_out_32));
MULT_16X16 mult_16X16_33(.clk(clk), .ce(mult_en_32_39), .A(brdcast_data_w[543:528]), .B(in_veca_data[543:528]), .P(mult_out_33));
MULT_16X16 mult_16X16_34(.clk(clk), .ce(mult_en_32_39), .A(brdcast_data_w[559:544]), .B(in_veca_data[559:544]), .P(mult_out_34));
MULT_16X16 mult_16X16_35(.clk(clk), .ce(mult_en_32_39), .A(brdcast_data_w[575:560]), .B(in_veca_data[575:560]), .P(mult_out_35));
MULT_16X16 mult_16X16_36(.clk(clk), .ce(mult_en_32_39), .A(brdcast_data_w[591:576]), .B(in_veca_data[591:576]), .P(mult_out_36));
MULT_16X16 mult_16X16_37(.clk(clk), .ce(mult_en_32_39), .A(brdcast_data_w[607:592]), .B(in_veca_data[607:592]), .P(mult_out_37));
MULT_16X16 mult_16X16_38(.clk(clk), .ce(mult_en_32_39), .A(brdcast_data_w[623:608]), .B(in_veca_data[623:608]), .P(mult_out_38));
MULT_16X16 mult_16X16_39(.clk(clk), .ce(mult_en_32_39), .A(brdcast_data_w[639:624]), .B(in_veca_data[639:624]), .P(mult_out_39));
MULT_16X16 mult_16X16_40(.clk(clk), .ce(mult_en_40_47), .A(brdcast_data_w[655:640]), .B(in_veca_data[655:640]), .P(mult_out_40));
MULT_16X16 mult_16X16_41(.clk(clk), .ce(mult_en_40_47), .A(brdcast_data_w[671:656]), .B(in_veca_data[671:656]), .P(mult_out_41));
MULT_16X16 mult_16X16_42(.clk(clk), .ce(mult_en_40_47), .A(brdcast_data_w[687:672]), .B(in_veca_data[687:672]), .P(mult_out_42));
MULT_16X16 mult_16X16_43(.clk(clk), .ce(mult_en_40_47), .A(brdcast_data_w[703:688]), .B(in_veca_data[703:688]), .P(mult_out_43));
MULT_16X16 mult_16X16_44(.clk(clk), .ce(mult_en_40_47), .A(brdcast_data_w[719:704]), .B(in_veca_data[719:704]), .P(mult_out_44));
MULT_16X16 mult_16X16_45(.clk(clk), .ce(mult_en_40_47), .A(brdcast_data_w[735:720]), .B(in_veca_data[735:720]), .P(mult_out_45));
MULT_16X16 mult_16X16_46(.clk(clk), .ce(mult_en_40_47), .A(brdcast_data_w[751:736]), .B(in_veca_data[751:736]), .P(mult_out_46));
MULT_16X16 mult_16X16_47(.clk(clk), .ce(mult_en_40_47), .A(brdcast_data_w[767:752]), .B(in_veca_data[767:752]), .P(mult_out_47));
MULT_16X16 mult_16X16_48(.clk(clk), .ce(mult_en_48_55), .A(brdcast_data_w[783:768]), .B(in_veca_data[783:768]), .P(mult_out_48));
MULT_16X16 mult_16X16_49(.clk(clk), .ce(mult_en_48_55), .A(brdcast_data_w[799:784]), .B(in_veca_data[799:784]), .P(mult_out_49));
MULT_16X16 mult_16X16_50(.clk(clk), .ce(mult_en_48_55), .A(brdcast_data_w[815:800]), .B(in_veca_data[815:800]), .P(mult_out_50));
MULT_16X16 mult_16X16_51(.clk(clk), .ce(mult_en_48_55), .A(brdcast_data_w[831:816]), .B(in_veca_data[831:816]), .P(mult_out_51));
MULT_16X16 mult_16X16_52(.clk(clk), .ce(mult_en_48_55), .A(brdcast_data_w[847:832]), .B(in_veca_data[847:832]), .P(mult_out_52));
MULT_16X16 mult_16X16_53(.clk(clk), .ce(mult_en_48_55), .A(brdcast_data_w[863:848]), .B(in_veca_data[863:848]), .P(mult_out_53));
MULT_16X16 mult_16X16_54(.clk(clk), .ce(mult_en_48_55), .A(brdcast_data_w[879:864]), .B(in_veca_data[879:864]), .P(mult_out_54));
MULT_16X16 mult_16X16_55(.clk(clk), .ce(mult_en_48_55), .A(brdcast_data_w[895:880]), .B(in_veca_data[895:880]), .P(mult_out_55));
MULT_16X16 mult_16X16_56(.clk(clk), .ce(mult_en_56_63), .A(brdcast_data_w[911:896]), .B(in_veca_data[911:896]), .P(mult_out_56));
MULT_16X16 mult_16X16_57(.clk(clk), .ce(mult_en_56_63), .A(brdcast_data_w[927:912]), .B(in_veca_data[927:912]), .P(mult_out_57));
MULT_16X16 mult_16X16_58(.clk(clk), .ce(mult_en_56_63), .A(brdcast_data_w[943:928]), .B(in_veca_data[943:928]), .P(mult_out_58));
MULT_16X16 mult_16X16_59(.clk(clk), .ce(mult_en_56_63), .A(brdcast_data_w[959:944]), .B(in_veca_data[959:944]), .P(mult_out_59));
MULT_16X16 mult_16X16_60(.clk(clk), .ce(mult_en_56_63), .A(brdcast_data_w[975:960]), .B(in_veca_data[975:960]), .P(mult_out_60));
MULT_16X16 mult_16X16_61(.clk(clk), .ce(mult_en_56_63), .A(brdcast_data_w[991:976]), .B(in_veca_data[991:976]), .P(mult_out_61));
MULT_16X16 mult_16X16_62(.clk(clk), .ce(mult_en_56_63), .A(brdcast_data_w[1007:992]), .B(in_veca_data[1007:992]), .P(mult_out_62));
MULT_16X16 mult_16X16_63(.clk(clk), .ce(mult_en_56_63), .A(brdcast_data_w[1023:1008]), .B(in_veca_data[1023:1008]), .P(mult_out_63));







assign mult_res_w = {
            mult_out_63[23:8]
            ,mult_out_62[23:8]
            ,mult_out_61[23:8]
            ,mult_out_60[23:8]
            ,mult_out_59[23:8]
            ,mult_out_58[23:8]
            ,mult_out_57[23:8]
            ,mult_out_56[23:8]
            ,mult_out_55[23:8]
            ,mult_out_54[23:8]
            ,mult_out_53[23:8]
            ,mult_out_52[23:8]
            ,mult_out_51[23:8]
            ,mult_out_50[23:8]
            ,mult_out_49[23:8]
            ,mult_out_48[23:8]
            ,mult_out_47[23:8]
            ,mult_out_46[23:8]
            ,mult_out_45[23:8]
            ,mult_out_44[23:8]
            ,mult_out_43[23:8]
            ,mult_out_42[23:8]
            ,mult_out_41[23:8]
            ,mult_out_40[23:8]
            ,mult_out_39[23:8]
            ,mult_out_38[23:8]
            ,mult_out_37[23:8]
            ,mult_out_36[23:8]
            ,mult_out_35[23:8]
            ,mult_out_34[23:8]
            ,mult_out_33[23:8]
            ,mult_out_32[23:8]
            ,mult_out_31[23:8]
            ,mult_out_30[23:8]
            ,mult_out_29[23:8]
            ,mult_out_28[23:8]
            ,mult_out_27[23:8]
            ,mult_out_26[23:8]
            ,mult_out_25[23:8]
            ,mult_out_24[23:8]
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




endmodule
