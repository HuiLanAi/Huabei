/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is the basic unit of module: REGHEAP_SELFADD_64x16b.

This module is consisted of 2 16bit regs and 1 adder dsp.
************************************************ */

module SELFADD_REG_16bx2(
    input                                       clk, 
    input                                       rst,

    input                                       data_v,
    input   [15:0]                              in_data_a,
    input   [15:0]                              in_data_b,
    input                                       usr_rst,

    output  [15:0]                              out_data_a_w,
    output  [15:0]                              out_data_b_w,
    output                                      out_data_v_w
);



reg     [15:0]                                  reg_a;
reg     [15:0]                                  reg_b;

reg     [15:0]                                  in_a;
reg     [15:0]                                  in_b;



always @ (posedge clk) begin
    if(!rst && !usr_rst) begin
        if(data_v) begin
            in_a <= in_data_a;
            in_b <= in_data_b;
        end
    end
    else begin
        in_a <= 'd0;
        in_b <= 'd0;
    end
end




always @ (posedge clk) begin
    if(!rst && !usr_rst) begin
        if(addres_v) begin
            reg_a <= addres[15:0];
            reg_b <= addres[31:16];
        end
    end
    else begin
        reg_a <= 'd0;
        reg_b <= 'd0;
    end
end



assign out_data_a_w = reg_a;
assign out_data_b_w = reg_b;
assign out_data_v_w = addres_v;




// ***************************************************************
// ***************************************************************
// ***************************************************************
// ***************************************************************
// adder 
reg                                     adder_en;
reg                                     addres_v;
reg     [2:0]                           busy_flag;


wire    [31:0] adder0_in_a_w;
wire    [31:0] adder0_in_b_w;


assign adder0_in_a_w = {addres[31:16], addres[15:0]};
assign adder0_in_b_w = {in_data_b, in_data_a};


wire     [31:0]                          addres;


// use shift reg to control adder_en and add_res_v
always @ (posedge clk) begin
    if(!rst && !usr_rst) begin
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
always @ (busy_flag) begin
    if(!rst && !usr_rst) begin
        // adder_en = busy_flag[0] || busy_flag[1] || busy_flag[2];
        adder_en = busy_flag[0];
    end
    else begin
        adder_en = 'd0;
    end
end


// use busy_flag to control add_res_v
always @ (busy_flag) begin
    if(!rst && !usr_rst) begin
        addres_v = busy_flag[2];
    end
    else begin
        addres_v = 'd0;
    end
end

assign add_res_v_w = addres_v;




ADDER_16P16 adder(.A(adder0_in_a_w), .B(adder0_in_b_w), .CE(adder_en), .S(addres), .clk(clk), .SCLR(usr_rst));







endmodule