/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is parallel adder array with 16 parallel degree, which means
this module can receive 32 input and conduct 16 adding operations at one time.

Anyone who use this module should keep output data stored in reg outside the
module.

There are 8 dsp ip core in this module and each can perform 2 groups of adding.
************************************************ */

module PARAADD_16P16 (
    input                                       clk,
    input                                       rst,
    input   [255:0]                             in_data_a,
    input   [255:0]                             in_data_b,
    input                                       data_v,
    output  [255:0]                             addres_w,
    output                                      addres_v_w
);




reg                                     adder_en;
reg                                     addres_v;
reg     [2:0]                           busy_flag;

// use shift reg to control adder_en and add_res_v
always @ (posedge clk) begin
    if(!rst) begin
        if(data_v) begin
            busy_flag <= (busy_flag << 'd1) + 'b1;
        end
        else begin
            busy_flag <= busy_flag << 'd1;
        end
    end
    else begin
        busy_flag <= 'd0;
    end
end



// use busy_flag to control adder_en
always @ (busy_flag or data_v) begin
    if(!rst) begin
        adder_en = busy_flag[0] || data_v;
    end
    else begin
        adder_en = 'd0;
    end
end


// use busy_flag to control add_res_v
always @ (busy_flag) begin
    if(!rst) begin
        addres_v = busy_flag[1];
    end
    else begin
        addres_v = 'd0;
    end
end

assign addres_v_w = addres_v;








ADDER_16P16 adder_0(.A(in_data_a[31:0]), .B(in_data_b[31:0]), .CE(adder_en), .S(addres_w[31:0]), .clk(clk), .SCLR(rst));
ADDER_16P16 adder_1(.A(in_data_a[63:32]), .B(in_data_b[63:32]), .CE(adder_en), .S(addres_w[63:32]), .clk(clk), .SCLR(rst));
ADDER_16P16 adder_2(.A(in_data_a[95:64]), .B(in_data_b[95:64]), .CE(adder_en), .S(addres_w[95:64]), .clk(clk), .SCLR(rst));
ADDER_16P16 adder_3(.A(in_data_a[127:96]), .B(in_data_b[127:96]), .CE(adder_en), .S(addres_w[127:96]), .clk(clk), .SCLR(rst));
ADDER_16P16 adder_4(.A(in_data_a[159:128]), .B(in_data_b[159:128]), .CE(adder_en), .S(addres_w[159:128]), .clk(clk), .SCLR(rst));
ADDER_16P16 adder_5(.A(in_data_a[191:160]), .B(in_data_b[191:160]), .CE(adder_en), .S(addres_w[191:160]), .clk(clk), .SCLR(rst));
ADDER_16P16 adder_6(.A(in_data_a[223:192]), .B(in_data_b[223:192]), .CE(adder_en), .S(addres_w[223:192]), .clk(clk), .SCLR(rst));
ADDER_16P16 adder_7(.A(in_data_a[255:224]), .B(in_data_b[255:224]), .CE(adder_en), .S(addres_w[255:224]), .clk(clk), .SCLR(rst));



endmodule

