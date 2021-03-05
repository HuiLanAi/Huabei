/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is designed for broadcasting one 16-bit data into a 1024*16bit format.
The input can be both wire and regsiter, while the user do not need keep this module's output 
for at least 1 clk when importing. This module can also transfer control signal such as data_v.

This module is consisted of 3 layer's regsiter. In each layer, one regsiter will broadcast 
it's value to 4 replication.
************************************************ */


module FANOUT_16_1024(
    input                           clk,
    input                           rst, 

    input                           data_v,
    input   [15:0]                  in_data,

    input                           halt,

    output                          brdcast_data_v_w,
    output  [1023:0]                brdcast_data_w
);



// 16 -> 64
wire    [63:0]                      brdcast_data0_l0_w;
wire                                brdcast_data_v_l0_w;


FANOUT_16_64 fan0_l0(.clk(clk), .rst(rst), .data_v(data_v), .in_data(in_data), .brdcast_data_v_w(brdcast_data_v_l0_w), .brdcast_data_w(brdcast_data0_l0_w));



// 64 -> 256
wire    [63:0]                      brdcast_data0_l1_w;
wire    [63:0]                      brdcast_data1_l1_w;
wire    [63:0]                      brdcast_data2_l1_w;
wire    [63:0]                      brdcast_data3_l1_w;

wire                                brdcast_data0_v_l1_w;
wire                                brdcast_data1_v_l1_w;
wire                                brdcast_data2_v_l1_w;
wire                                brdcast_data3_v_l1_w;



FANOUT_16_64 fan0_l1(.clk(clk), .rst(rst), .data_v(brdcast_data_v_l0_w), .in_data(brdcast_data0_l0_w[15:0]), .brdcast_data_v_w(brdcast_data0_v_l1_w), .brdcast_data_w(brdcast_data0_l1_w), .halt(halt));
FANOUT_16_64 fan1_l1(.clk(clk), .rst(rst), .data_v(brdcast_data_v_l0_w), .in_data(brdcast_data0_l0_w[31:16]), .brdcast_data_v_w(brdcast_data1_v_l1_w), .brdcast_data_w(brdcast_data1_l1_w), .halt(halt));
FANOUT_16_64 fan2_l1(.clk(clk), .rst(rst), .data_v(brdcast_data_v_l0_w), .in_data(brdcast_data0_l0_w[47:32]), .brdcast_data_v_w(brdcast_data2_v_l1_w), .brdcast_data_w(brdcast_data2_l1_w), .halt(halt));
FANOUT_16_64 fan3_l1(.clk(clk), .rst(rst), .data_v(brdcast_data_v_l0_w), .in_data(brdcast_data0_l0_w[63:48]), .brdcast_data_v_w(brdcast_data3_v_l1_w), .brdcast_data_w(brdcast_data3_l1_w), .halt(halt));





// 256 -> 1024
wire    [63:0]                      brdcast_data0_l2_w;
wire    [63:0]                      brdcast_data1_l2_w;
wire    [63:0]                      brdcast_data2_l2_w;
wire    [63:0]                      brdcast_data3_l2_w;
wire    [63:0]                      brdcast_data4_l2_w;
wire    [63:0]                      brdcast_data5_l2_w;
wire    [63:0]                      brdcast_data6_l2_w;
wire    [63:0]                      brdcast_data7_l2_w;
wire    [63:0]                      brdcast_data8_l2_w;
wire    [63:0]                      brdcast_data9_l2_w;
wire    [63:0]                      brdcast_data10_l2_w;
wire    [63:0]                      brdcast_data11_l2_w;
wire    [63:0]                      brdcast_data12_l2_w;
wire    [63:0]                      brdcast_data13_l2_w;
wire    [63:0]                      brdcast_data14_l2_w;
wire    [63:0]                      brdcast_data15_l2_w;


wire                                brdcast_data0_v_l2_w;



FANOUT_16_64 fan0_l2(.clk(clk), .rst(rst), .data_v(brdcast_data0_v_l1_w), .in_data(brdcast_data0_l1_w[15:0]), .brdcast_data_v_w(brdcast_data0_v_l2_w), .brdcast_data_w(brdcast_data0_l2_w), .halt(halt));
FANOUT_16_64 fan1_l2(.clk(clk), .rst(rst), .data_v(brdcast_data0_v_l1_w), .in_data(brdcast_data0_l1_w[31:16]), .brdcast_data_w(brdcast_data1_l2_w), .halt(halt));
FANOUT_16_64 fan2_l2(.clk(clk), .rst(rst), .data_v(brdcast_data0_v_l1_w), .in_data(brdcast_data0_l1_w[47:32]), .brdcast_data_w(brdcast_data2_l2_w), .halt(halt));
FANOUT_16_64 fan3_l2(.clk(clk), .rst(rst), .data_v(brdcast_data0_v_l1_w), .in_data(brdcast_data0_l1_w[63:48]), .brdcast_data_w(brdcast_data3_l2_w), .halt(halt));
FANOUT_16_64 fan4_l2(.clk(clk), .rst(rst), .data_v(brdcast_data1_v_l1_w), .in_data(brdcast_data1_l1_w[15:0]),  .brdcast_data_w(brdcast_data4_l2_w), .halt(halt));
FANOUT_16_64 fan5_l2(.clk(clk), .rst(rst), .data_v(brdcast_data1_v_l1_w), .in_data(brdcast_data1_l1_w[31:16]), .brdcast_data_w(brdcast_data5_l2_w), .halt(halt));
FANOUT_16_64 fan6_l2(.clk(clk), .rst(rst), .data_v(brdcast_data1_v_l1_w), .in_data(brdcast_data1_l1_w[47:32]), .brdcast_data_w(brdcast_data6_l2_w), .halt(halt));
FANOUT_16_64 fan7_l2(.clk(clk), .rst(rst), .data_v(brdcast_data1_v_l1_w), .in_data(brdcast_data1_l1_w[63:48]), .brdcast_data_w(brdcast_data7_l2_w), .halt(halt));
FANOUT_16_64 fan8_l2(.clk(clk), .rst(rst), .data_v(brdcast_data2_v_l1_w), .in_data(brdcast_data2_l1_w[15:0]), .brdcast_data_w(brdcast_data8_l2_w), .halt(halt));
FANOUT_16_64 fan9_l2(.clk(clk), .rst(rst), .data_v(brdcast_data2_v_l1_w), .in_data(brdcast_data2_l1_w[31:16]), .brdcast_data_w(brdcast_data9_l2_w), .halt(halt));
FANOUT_16_64 fan10_l2(.clk(clk), .rst(rst), .data_v(brdcast_data2_v_l1_w), .in_data(brdcast_data2_l1_w[47:32]), .brdcast_data_w(brdcast_data10_l2_w), .halt(halt));
FANOUT_16_64 fan11_l2(.clk(clk), .rst(rst), .data_v(brdcast_data2_v_l1_w), .in_data(brdcast_data2_l1_w[63:48]), .brdcast_data_w(brdcast_data11_l2_w), .halt(halt));
FANOUT_16_64 fan12_l2(.clk(clk), .rst(rst), .data_v(brdcast_data3_v_l1_w), .in_data(brdcast_data3_l1_w[15:0]), .brdcast_data_w(brdcast_data12_l2_w), .halt(halt));
FANOUT_16_64 fan13_l2(.clk(clk), .rst(rst), .data_v(brdcast_data3_v_l1_w), .in_data(brdcast_data3_l1_w[31:16]), .brdcast_data_w(brdcast_data13_l2_w), .halt(halt));
FANOUT_16_64 fan14_l2(.clk(clk), .rst(rst), .data_v(brdcast_data3_v_l1_w), .in_data(brdcast_data3_l1_w[47:32]), .brdcast_data_w(brdcast_data14_l2_w), .halt(halt));
FANOUT_16_64 fan15_l2(.clk(clk), .rst(rst), .data_v(brdcast_data3_v_l1_w), .in_data(brdcast_data3_l1_w[63:48]), .brdcast_data_w(brdcast_data15_l2_w), .halt(halt));

assign brdcast_data_v_w = brdcast_data0_v_l2_w;
assign brdcast_data_w = {
    brdcast_data15_l2_w,
    brdcast_data14_l2_w,
    brdcast_data13_l2_w,
    brdcast_data12_l2_w,
    brdcast_data11_l2_w,
    brdcast_data10_l2_w,
    brdcast_data9_l2_w,
    brdcast_data8_l2_w,
    brdcast_data7_l2_w,
    brdcast_data6_l2_w,
    brdcast_data5_l2_w,
    brdcast_data4_l2_w,
    brdcast_data3_l2_w,
    brdcast_data2_l2_w,
    brdcast_data1_l2_w,
    brdcast_data0_l2_w
};





endmodule
