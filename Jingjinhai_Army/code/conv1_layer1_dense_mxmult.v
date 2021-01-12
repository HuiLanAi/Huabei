/* *********************************************
This module is the computing parts of conv1 layer1's matrix computing between A and input feature.
This array contains 25 DSPs and finish computing with 3 clk delay
************************************************ */


module CONV1_LAYER1_DENSE_MXMULT(
    input                               clk, 
    input                               rst,
    input                               start,

    input                               data_v,
    input   [399:0]                     in_fea_w,
    input   [399:0]                     a_mx_w,

    output  reg [799:0]                 mult_res,
    output  reg                         mult_res_v
);


reg     [3:0]                           cnter;
reg     [3:0]                           state;
reg                                     mult_en;

wire    [31:0]                          mult_out_0
wire    [31:0]                          mult_out_1
wire    [31:0]                          mult_out_2
wire    [31:0]                          mult_out_3
wire    [31:0]                          mult_out_4
wire    [31:0]                          mult_out_5
wire    [31:0]                          mult_out_6
wire    [31:0]                          mult_out_7
wire    [31:0]                          mult_out_8
wire    [31:0]                          mult_out_9
wire    [31:0]                          mult_out_10
wire    [31:0]                          mult_out_11
wire    [31:0]                          mult_out_12
wire    [31:0]                          mult_out_13
wire    [31:0]                          mult_out_14
wire    [31:0]                          mult_out_15
wire    [31:0]                          mult_out_16
wire    [31:0]                          mult_out_17
wire    [31:0]                          mult_out_18
wire    [31:0]                          mult_out_19
wire    [31:0]                          mult_out_20
wire    [31:0]                          mult_out_21
wire    [31:0]                          mult_out_22
wire    [31:0]                          mult_out_23
wire    [31:0]                          mult_out_24




parameter RST = 0;
parameter START = 1;
parameter COMPUTE_0 = 2;
parameter COMPUTE_1 = 3;




// state machine
always @ (posedge clk) begin
    if(!rst) begin
        if(start) begin
            state <= START;
        end
        else if (data_v) begin
            state <= COMPUTE_0;
        end
        else if (state == COMPUTE_0) begin
            state <= COMPUTE_1;
        end
        else if (state == COMPUTE_1 && cnter == 'd3) begin
            state <= START;
        end
        else begin
            state <= state;
        end
    end
    else begin
        state <= RST;
    end
end




// DSP array
MULT_16x16 mult_16x16_0(.clk(clk), .ce(mult_en), .A(in_fea_w[15:0]), .B(a_mx_w[15:0]), .P(mult_out_0));
MULT_16x16 mult_16x16_1(.clk(clk), .ce(mult_en), .A(in_fea_w[31:16]), .B(a_mx_w[31:16]), .P(mult_out_1));
MULT_16x16 mult_16x16_2(.clk(clk), .ce(mult_en), .A(in_fea_w[47:32]), .B(a_mx_w[47:32]), .P(mult_out_2));
MULT_16x16 mult_16x16_3(.clk(clk), .ce(mult_en), .A(in_fea_w[59:48]), .B(a_mx_w[59:48]), .P(mult_out_3));
MULT_16x16 mult_16x16_4(.clk(clk), .ce(mult_en), .A(in_fea_w[71:64]), .B(a_mx_w[71:64]), .P(mult_out_4));
MULT_16x16 mult_16x16_5(.clk(clk), .ce(mult_en), .A(in_fea_w[83:80]), .B(a_mx_w[83:80]), .P(mult_out_5));
MULT_16x16 mult_16x16_6(.clk(clk), .ce(mult_en), .A(in_fea_w[111:96]), .B(a_mx_w[111:96]), .P(mult_out_6));
MULT_16x16 mult_16x16_7(.clk(clk), .ce(mult_en), .A(in_fea_w[127:112]), .B(a_mx_w[127:112]), .P(mult_out_7));
MULT_16x16 mult_16x16_8(.clk(clk), .ce(mult_en), .A(in_fea_w[143:128]), .B(a_mx_w[143:128]), .P(mult_out_8));
MULT_16x16 mult_16x16_9(.clk(clk), .ce(mult_en), .A(in_fea_w[159:144]), .B(a_mx_w[159:144]), .P(mult_out_9));
MULT_16x16 mult_16x16_10(.clk(clk), .ce(mult_en), .A(in_fea_w[175:160]), .B(a_mx_w[175:160]), .P(mult_out_10));
MULT_16x16 mult_16x16_11(.clk(clk), .ce(mult_en), .A(in_fea_w[191:176]), .B(a_mx_w[191:176]), .P(mult_out_11));
MULT_16x16 mult_16x16_12(.clk(clk), .ce(mult_en), .A(in_fea_w[207:192]), .B(a_mx_w[207:192]), .P(mult_out_12));
MULT_16x16 mult_16x16_13(.clk(clk), .ce(mult_en), .A(in_fea_w[223:208]), .B(a_mx_w[223:208]), .P(mult_out_13));
MULT_16x16 mult_16x16_14(.clk(clk), .ce(mult_en), .A(in_fea_w[239:224]), .B(a_mx_w[239:224]), .P(mult_out_14));
MULT_16x16 mult_16x16_15(.clk(clk), .ce(mult_en), .A(in_fea_w[255:240]), .B(a_mx_w[255:240]), .P(mult_out_15));
MULT_16x16 mult_16x16_16(.clk(clk), .ce(mult_en), .A(in_fea_w[271:256]), .B(a_mx_w[271:256]), .P(mult_out_16));
MULT_16x16 mult_16x16_17(.clk(clk), .ce(mult_en), .A(in_fea_w[287:272]), .B(a_mx_w[287:272]), .P(mult_out_17));
MULT_16x16 mult_16x16_18(.clk(clk), .ce(mult_en), .A(in_fea_w[303:288]), .B(a_mx_w[303:288]), .P(mult_out_18));
MULT_16x16 mult_16x16_19(.clk(clk), .ce(mult_en), .A(in_fea_w[319:304]), .B(a_mx_w[319:304]), .P(mult_out_19));
MULT_16x16 mult_16x16_20(.clk(clk), .ce(mult_en), .A(in_fea_w[335:320]), .B(a_mx_w[335:320]), .P(mult_out_20));
MULT_16x16 mult_16x16_21(.clk(clk), .ce(mult_en), .A(in_fea_w[351:336]), .B(a_mx_w[351:336]), .P(mult_out_21));
MULT_16x16 mult_16x16_22(.clk(clk), .ce(mult_en), .A(in_fea_w[367:352]), .B(a_mx_w[367:352]), .P(mult_out_22));
MULT_16x16 mult_16x16_23(.clk(clk), .ce(mult_en), .A(in_fea_w[383:368]), .B(a_mx_w[383:368]), .P(mult_out_23));
MULT_16x16 mult_16x16_24(.clk(clk), .ce(mult_en), .A(in_fea_w[399:384]), .B(a_mx_w[399:384]), .P(mult_out_24));




endmodule