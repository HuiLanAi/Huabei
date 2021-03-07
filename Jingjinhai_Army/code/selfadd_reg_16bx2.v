/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is the basic unit of module: REGHEAP_SELFADD_64x16b. Inner
loop counter is designed in this module and users do not need to set 
them outside the function part.

This module is consisted of 2 16bit regs and 1 adder dsp.
************************************************ */

module SELFADD_REG_16bx2_LOOP3(
    input                                       clk, 
    input                                       rst,

    input                                       data_v,
    input   [15:0]                              in_data_a,
    input   [15:0]                              in_data_b,
    input                                       usr_rst,

    input                                       halt,

    output  [15:0]                              out_data_a_w,
    output  [15:0]                              out_data_b_w,
    output  reg                                 out_data_v
);



reg     [15:0]                                  reg_a;
reg     [15:0]                                  reg_b;

reg     [15:0]                                  in_a;
reg     [15:0]                                  in_b;

reg     [1:0]                                   loop_cnt;





always @ (posedge clk) begin
    if(!rst) begin
        if(halt) begin
            loop_cnt <= loop_cnt;
            out_data_v <= out_data_v;
        end
        else begin
            if(addres_v) begin
                case(loop_cnt)
                'b00: begin
                    loop_cnt <= 'b01;
                    out_data_v <= 'd0;
                end

                'b01: begin
                    loop_cnt <= 'b10;
                    out_data_v <= 'd1;
                end
                
                'b10: begin
                    loop_cnt <= 'b00;
                    out_data_v <= 'd0;
                end
                
                'b11: begin
                    loop_cnt <= 'b10;
                    out_data_v <= 'd1;
                end
                endcase
            end
        end
    end
    else begin
        loop_cnt <= 'b11;
        out_data_v <= 'd0;
    end
end




// two groups of input data will be stored first
always @ (posedge clk) begin
    if(!rst) begin
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
    if(!rst) begin
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


assign adder0_in_a_w = (( loop_cnt == 'b01 || loop_cnt == 'b11 && addres_v)) 
                        ? 32'b0 : {addres[31:16], addres[15:0]};
// assign adder0_in_a_w = {reg_b, reg_a};
assign adder0_in_b_w = {in_data_b, in_data_a};


wire     [31:0]                          addres;


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
        addres_v = busy_flag[2];
    end
    else begin
        addres_v = 'd0;
    end
end

assign add_res_v_w = addres_v;




ADDER_16P16 adder(.A(adder0_in_a_w), .B(adder0_in_b_w), .CE(adder_en), .S(addres), .clk(clk), .SCLR(rst));







endmodule