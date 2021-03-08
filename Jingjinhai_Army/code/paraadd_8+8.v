/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is parallel adder array with 8 parallel degree, which means
this module can receive 16 input and conduct 8 adding operations at one time.

Anyone who use this module should keep output data stored in reg outside the
module.

There are 4 dsp ip core in this module and each can perform 2 groups of adding.
************************************************ */

module PARAADD_8P8 (
    input                                       clk,
    input                                       rst,
    input   [127:0]                             in_data_a,
    input   [127:0]                             in_data_b,
    input                                       data_v,
    output  [127:0]                             addres_w,
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








ADDER_16P16 adder_0(.A(in_data_a[31:0]), .B(in_data_b[31:0]), .CE(adder_en), .S(addres_w[31:0]), .CLK(clk), .SCLR(rst));
ADDER_16P16 adder_1(.A(in_data_a[63:32]), .B(in_data_b[63:32]), .CE(adder_en), .S(addres_w[63:32]), .CLK(clk), .SCLR(rst));
ADDER_16P16 adder_2(.A(in_data_a[95:64]), .B(in_data_b[95:64]), .CE(adder_en), .S(addres_w[95:64]), .CLK(clk), .SCLR(rst));
ADDER_16P16 adder_3(.A(in_data_a[127:96]), .B(in_data_b[127:96]), .CE(adder_en), .S(addres_w[127:96]), .CLK(clk), .SCLR(rst));



endmodule

