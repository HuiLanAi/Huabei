/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module the general designed adder_tree which gets 25 elements, output 1 element and a data_v signal. The output are not 
be stored in this module and anyone who uses this module should consider storing them in pipeline-style when utilies this
adder-tree's result.

The input can be both wire and reg for this module will automatically store all input data in reg for at least 1 clk

The input elements is 16bit-wise, to reduce the use of DSP, we conbine two 16-bit input to one 32-bit data, so one DSP can 
conduct four adding computations at one time.

The number of input data is 25, which is odd and we have to store the last data in pipeline and process it in deeper layer of adder-tree.
The adder IP core's latency is set as 2.
************************************************ */


module ADDERTREE_25WISE(
    input                               clk, 
    input                               rst,
    input                               start,

    input                               data_v,
    input   [399:0]                     in_add_w,

    output  [15:0]                      add_res_w,
    output                              add_res_v_w,
    output  reg                         need_data
);






// *******************************************************************
// *******************************************************************
// *******************************************************************
// *******************************************************************
// adder-tree's layer 0
// *******************************************************************
// *******************************************************************
// *******************************************************************


reg                                     adder_en_l0;
reg                                     addres_v_l0;
reg     [2:0]                           busy_flag_l0;





reg     [31:0]                          add_res0_l0;
reg     [31:0]                          add_res1_l0;
reg     [31:0]                          add_res2_l0;
reg     [31:0]                          add_res3_l0;
reg     [31:0]                          add_res4_l0;
reg     [31:0]                          add_res5_l0;

reg     [399:0]                         in_add;





wire     [31:0]                          add_res0_w_l0;
wire     [31:0]                          add_res1_w_l0;
wire     [31:0]                          add_res2_w_l0;
wire     [31:0]                          add_res3_w_l0;
wire     [31:0]                          add_res4_w_l0;
wire     [31:0]                          add_res5_w_l0;

wire    [31:0]                          adder0_in_a_w_l0;
wire    [31:0]                          adder1_in_a_w_l0;
wire    [31:0]                          adder2_in_a_w_l0;
wire    [31:0]                          adder3_in_a_w_l0;
wire    [31:0]                          adder4_in_a_w_l0;
wire    [31:0]                          adder5_in_a_w_l0;
wire    [31:0]                          adder0_in_b_w_l0;
wire    [31:0]                          adder1_in_b_w_l0;
wire    [31:0]                          adder2_in_b_w_l0;
wire    [31:0]                          adder3_in_b_w_l0;
wire    [31:0]                          adder4_in_b_w_l0;
wire    [31:0]                          adder5_in_b_w_l0;


reg     [15:0]                          last_input_clk0;
reg     [15:0]                          last_input_clk1;
reg     [15:0]                          last_input_clk2;
reg     [15:0]                          last_input_clk3;
reg     [15:0]                          last_input_clk4;
reg     [15:0]                          last_input_clk5;
reg     [15:0]                          last_input_clk6;
reg     [15:0]                          last_input_clk7;








assign adder0_in_a_w_l0 = in_add[31:0];
assign adder1_in_a_w_l0 = in_add[63:32];
assign adder2_in_a_w_l0 = in_add[95:64];
assign adder3_in_a_w_l0 = in_add[127:96];
assign adder4_in_a_w_l0 = in_add[159:128];
assign adder5_in_a_w_l0 = in_add[191:160];

assign adder0_in_b_w_l0 = in_add[223:192];
assign adder1_in_b_w_l0 = in_add[255:224];
assign adder2_in_b_w_l0 = in_add[287:256];
assign adder3_in_b_w_l0 = in_add[319:288];
assign adder4_in_b_w_l0 = in_add[351:320];
assign adder5_in_b_w_l0 = in_add[383:352];




ADDER_16P16 adder0_l0(.A(adder0_in_a_w_l0), .B(adder0_in_b_w_l0), .CE(adder_en_l0), .S(add_res0_w_l0), .CLK(clk), .SCLR('d0));
ADDER_16P16 adder1_l0(.A(adder1_in_a_w_l0), .B(adder1_in_b_w_l0), .CE(adder_en_l0), .S(add_res1_w_l0), .CLK(clk), .SCLR('d0));
ADDER_16P16 adder2_l0(.A(adder2_in_a_w_l0), .B(adder2_in_b_w_l0), .CE(adder_en_l0), .S(add_res2_w_l0), .CLK(clk), .SCLR('d0));
ADDER_16P16 adder3_l0(.A(adder3_in_a_w_l0), .B(adder3_in_b_w_l0), .CE(adder_en_l0), .S(add_res3_w_l0), .CLK(clk), .SCLR('d0));
ADDER_16P16 adder4_l0(.A(adder4_in_a_w_l0), .B(adder4_in_b_w_l0), .CE(adder_en_l0), .S(add_res4_w_l0), .CLK(clk), .SCLR('d0));
ADDER_16P16 adder5_l0(.A(adder5_in_a_w_l0), .B(adder5_in_b_w_l0), .CE(adder_en_l0), .S(add_res5_w_l0), .CLK(clk), .SCLR('d0));




// store in_add value
// the original output from multer must be stored in reg here
always @ (posedge clk) begin
    if(!rst) begin
        if(data_v) begin
            in_add <= in_add_w;
        end
        else begin
            in_add <= in_add;
        end
    end
    else begin
        in_add <= 'd0;
    end
end





// use shift reg to control adder_en and add_res_v
always @ (posedge clk) begin
    if(!rst) begin
        if(data_v) begin
            busy_flag_l0 <= (busy_flag_l0 << 'd1) + 'b1;
        end
        else begin
            busy_flag_l0 <= busy_flag_l0 << 'd1;
        end
    end
    else begin
        busy_flag_l0 <= 'd0;
    end
end




// use busy_flag to control adder_en
always @ (busy_flag_l0) begin
    if(!rst) begin
        adder_en_l0 = busy_flag_l0[0];
    end
    else begin
        adder_en_l0 = 'd0;
    end
end




// use busy_flag to control add_res_v
always @ (busy_flag_l0) begin
    if(!rst) begin
        addres_v_l0 = busy_flag_l0[1];
    end
    else begin
        addres_v_l0 = 'd0;
    end
end




// store the 25th input value in pipeline. 
// always @ (posedge clk) begin
//     if(!rst) begin
//         last_input_clk0 <= in_add[399:384];
//     end
//     else begin
//         last_input_clk0 <= 'd0;
//     end
// end

// this code only used for test 
// to run the design, use code above
always @ (posedge clk) begin
    if(!rst) begin
        last_input_clk0 <= in_add[15:0];
    end
    else begin
        last_input_clk0 <= 'd0;
    end
end

always @ (posedge clk) begin
    if(!rst) begin
        last_input_clk1 <= last_input_clk0;
    end
    else begin
        last_input_clk1 <= 'd0;
    end
end

always @ (posedge clk) begin
    if(!rst) begin
        last_input_clk2 <= last_input_clk1;
    end
    else begin
        last_input_clk2 <= 'd0;
    end
end

always @ (posedge clk) begin
    if(!rst) begin
        last_input_clk3 <= last_input_clk2;
    end
    else begin
        last_input_clk3 <= 'd0;
    end
end




// store adder-tree's 0 layer's output
always @ (posedge clk) begin
    if(!rst) begin
        if(addres_v_l0) begin
            add_res0_l0 <= add_res0_w_l0;
            add_res1_l0 <= add_res1_w_l0;
            add_res2_l0 <= add_res2_w_l0;
            add_res3_l0 <= add_res3_w_l0;
            add_res4_l0 <= add_res4_w_l0;
            add_res5_l0 <= add_res5_w_l0;
        end
        else begin
            add_res0_l0 <= add_res0_l0;
            add_res1_l0 <= add_res1_l0;
            add_res2_l0 <= add_res2_l0;
            add_res3_l0 <= add_res3_l0;
            add_res4_l0 <= add_res4_l0;
            add_res5_l0 <= add_res5_l0;
        end
    end
    else begin
        add_res0_l0 <= 'd0;
        add_res1_l0 <= 'd0;
        add_res2_l0 <= 'd0;
        add_res3_l0 <= 'd0;
        add_res4_l0 <= 'd0;
        add_res5_l0 <= 'd0;
    end
end



// *******************************************************************
// *******************************************************************
// *******************************************************************
// *******************************************************************
// adder-tree's layer 1
// *******************************************************************
// *******************************************************************
// *******************************************************************
// *******************************************************************


wire    [31:0] adder0_in_a_w_l1;
wire    [31:0] adder1_in_a_w_l1;
wire    [31:0] adder2_in_a_w_l1;

wire    [31:0] adder0_in_b_w_l1;
wire    [31:0] adder1_in_b_w_l1;
wire    [31:0] adder2_in_b_w_l1;


assign adder0_in_a_w_l1 = add_res0_l0;
assign adder1_in_a_w_l1 = add_res1_l0;
assign adder2_in_a_w_l1 = add_res2_l0;

assign adder0_in_b_w_l1 = add_res3_l0;
assign adder1_in_b_w_l1 = add_res4_l0;
assign adder2_in_b_w_l1 = add_res5_l0;







reg                                     adder_en_l1;
reg                                     addres_v_l1;
reg     [2:0]                           busy_flag_l1;



wire     [31:0]                          add_res0_w_l1;
wire     [31:0]                          add_res1_w_l1;
wire     [31:0]                          add_res2_w_l1;


reg     [31:0]                          add_res0_l1;
reg     [31:0]                          add_res1_l1;
reg     [31:0]                          add_res2_l1;




// use shift reg to control adder_en and add_res_v
always @ (posedge clk) begin
    if(!rst) begin
        if(addres_v_l0) begin
            busy_flag_l1 <= (busy_flag_l1 << 'd1) + 'b1;
        end
        else begin
            busy_flag_l1 <= busy_flag_l1 << 'd1;
        end
    end
    else begin
        busy_flag_l1 <= 'd0;
    end
end


// use busy_flag to control adder_en
always @ (busy_flag_l1) begin
    if(!rst) begin
        adder_en_l1 = busy_flag_l1[0];
    end
    else begin
        adder_en_l1 = 'd0;
    end
end


// use busy_flag to control add_res_v
always @ (busy_flag_l1) begin
    if(!rst) begin
        addres_v_l1 = busy_flag_l1[1];
    end
    else begin
        addres_v_l1 = 'd0;
    end
end




// store adder-tree's 1 layer's output
always @ (posedge clk) begin
    if(!rst) begin
        if(addres_v_l1) begin
            add_res0_l1 <= add_res0_w_l1;
            add_res1_l1 <= add_res1_w_l1;
            add_res2_l1 <= add_res2_w_l1;
        end
        else begin
            add_res0_l1 <= add_res0_l1;
            add_res1_l1 <= add_res1_l1;
            add_res2_l1 <= add_res2_l1;
        end
    end
    else begin
        add_res0_l1 <= 'd0;
        add_res1_l1 <= 'd0;
        add_res2_l1 <= 'd0;
    end
end




ADDER_16P16 adder0_l1(.A(adder0_in_a_w_l1), .B(adder0_in_b_w_l1), .CE(adder_en_l1), .S(add_res0_w_l1), .CLK(clk), .SCLR('d0));
ADDER_16P16 adder1_l1(.A(adder1_in_a_w_l1), .B(adder1_in_b_w_l1), .CE(adder_en_l1), .S(add_res1_w_l1), .CLK(clk), .SCLR('d0));
ADDER_16P16 adder2_l1(.A(adder2_in_a_w_l1), .B(adder2_in_b_w_l1), .CE(adder_en_l1), .S(add_res2_w_l1), .CLK(clk), .SCLR('d0));




// *******************************************************************
// *******************************************************************
// *******************************************************************
// *******************************************************************
// adder-tree's layer 2
// *******************************************************************
// *******************************************************************
// *******************************************************************
// *******************************************************************


reg                                     adder_en_l2;
reg                                     addres_v_l2;
reg     [2:0]                           busy_flag_l2;


wire    [31:0] adder0_in_a_w_l2;
wire    [31:0] adder1_in_a_w_l2;

wire    [31:0] adder0_in_b_w_l2;
wire    [31:0] adder1_in_b_w_l2;


assign adder0_in_a_w_l2 = add_res0_l1;
assign adder1_in_a_w_l2 = add_res1_l1;
assign adder0_in_b_w_l2 = add_res2_l1;
// put last data into process stream
assign adder1_in_b_w_l2 = {16'b0, last_input_clk3};


wire     [31:0]                          add_res0_w_l2;
wire     [31:0]                          add_res1_w_l2;

reg     [31:0]                          add_res0_l2;
reg     [31:0]                          add_res1_l2;


// use shift reg to control adder_en and add_res_v
always @ (posedge clk) begin
    if(!rst) begin
        if(addres_v_l1) begin
            busy_flag_l2 <= (busy_flag_l2 << 'd1) + 'b1;
        end
        else begin
            busy_flag_l2 <= busy_flag_l2 << 'd1;
        end
    end
    else begin
        busy_flag_l2 <= 'd0;
    end
end



// use busy_flag to control adder_en
always @ (busy_flag_l2) begin
    if(!rst) begin
        adder_en_l2 = busy_flag_l2[0];
    end
    else begin
        adder_en_l2 = 'd0;
    end
end


// use busy_flag to control add_res_v
always @ (busy_flag_l2) begin
    if(!rst) begin
        addres_v_l2 = busy_flag_l2[1];
    end
    else begin
        addres_v_l2 = 'd0;
    end
end




// store adder-tree's 2 layer's output
always @ (posedge clk) begin
    if(!rst) begin
        if(addres_v_l2) begin
            add_res0_l2 <= add_res0_w_l2;
            add_res1_l2 <= add_res1_w_l2;
        end
        else begin
            add_res0_l2 <= add_res0_l2;
            add_res1_l2 <= add_res1_l2;
        end
    end
    else begin
        add_res0_l2 <= 'd0;
        add_res1_l2 <= 'd0;
    end
end




ADDER_16P16 adder0_l2(.A(adder0_in_a_w_l2), .B(adder0_in_b_w_l2), .CE(adder_en_l2), .S(add_res0_w_l2), .CLK(clk), .SCLR('d0));
ADDER_16P16 adder1_l2(.A(adder1_in_a_w_l2), .B(adder1_in_b_w_l2), .CE(adder_en_l2), .S(add_res1_w_l2), .CLK(clk), .SCLR('d0));





// *******************************************************************
// *******************************************************************
// *******************************************************************
// *******************************************************************
// adder-tree's layer 3
// *******************************************************************
// *******************************************************************
// *******************************************************************
// *******************************************************************

reg                                     adder_en_l3;
reg                                     addres_v_l3;
reg     [2:0]                           busy_flag_l3;


wire    [31:0] adder0_in_a_w_l3;
wire    [31:0] adder0_in_b_w_l3;


assign adder0_in_a_w_l3 = add_res0_l2;
assign adder0_in_b_w_l3 = add_res1_l2;


wire     [31:0]                          add_res0_w_l3;

reg     [31:0]                          add_res0_l3;


// use shift reg to control adder_en and add_res_v
always @ (posedge clk) begin
    if(!rst) begin
        if(addres_v_l2) begin
            busy_flag_l3 <= (busy_flag_l3 << 'd1) + 'b1;
        end
        else begin
            busy_flag_l3 <= busy_flag_l3 << 'd1;
        end
    end
    else begin
        busy_flag_l3 <= 'd0;
    end
end



// use busy_flag to control adder_en
always @ (busy_flag_l3) begin
    if(!rst) begin
        adder_en_l3 = busy_flag_l3[0];
    end
    else begin
        adder_en_l3 = 'd0;
    end
end


// use busy_flag to control add_res_v
always @ (busy_flag_l3) begin
    if(!rst) begin
        addres_v_l3 = busy_flag_l3[1];
    end
    else begin
        addres_v_l3 = 'd0;
    end
end




// store adder-tree's 2 layer's output
always @ (posedge clk) begin
    if(!rst) begin
        if(addres_v_l3) begin
            add_res0_l3 <= add_res0_w_l3;
        end
        else begin
            add_res0_l3 <= add_res0_l3;
        end
    end
    else begin
        add_res0_l3 <= 'd0;
    end
end




ADDER_16P16 adder0_l3(.A(adder0_in_a_w_l3), .B(adder0_in_b_w_l3), .CE(adder_en_l3), .S(add_res0_w_l3), .CLK(clk), .SCLR('d0));




// *******************************************************************
// *******************************************************************
// *******************************************************************
// *******************************************************************
// adder-tree's layer 4
// *******************************************************************
// *******************************************************************
// *******************************************************************
// *******************************************************************


reg                                     adder_en_l4;
reg                                     addres_v_l4;
reg     [2:0]                           busy_flag_l4;


wire    [31:0] adder0_in_a_w_l4;
wire    [31:0] adder0_in_b_w_l4;


assign adder0_in_a_w_l4 = {16'b0, add_res0_l3[15:0]};
assign adder0_in_b_w_l4 = {16'b0, add_res0_l3[31:16]};


wire     [31:0]                          add_res0_w_l4;

assign add_res_w = add_res0_w_l4[15:0];


// use shift reg to control adder_en and add_res_v
always @ (posedge clk) begin
    if(!rst) begin
        if(addres_v_l3) begin
            busy_flag_l4 <= (busy_flag_l4 << 'd1) + 'b1;
        end
        else begin
            busy_flag_l4 <= busy_flag_l4 << 'd1;
        end
    end
    else begin
        busy_flag_l4 <= 'd0;
    end
end



// use busy_flag to control adder_en
always @ (busy_flag_l4) begin
    if(!rst) begin
        adder_en_l4 = busy_flag_l4[0];
    end
    else begin
        adder_en_l4 = 'd0;
    end
end


// use busy_flag to control add_res_v
always @ (busy_flag_l4) begin
    if(!rst) begin
        addres_v_l4 = busy_flag_l4[1];
    end
    else begin
        addres_v_l4 = 'd0;
    end
end

assign add_res_v_w = addres_v_l4;




ADDER_16P16 adder0_l4(.A(adder0_in_a_w_l4), .B(adder0_in_b_w_l4), .CE(adder_en_l4), .S(add_res0_w_l4), .CLK(clk), .SCLR('d0));



endmodule