/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is the demo version of dynamic issue function. The target design 
contains four mult dsp, four waiting line and maxium of six-group-of-input at one cycle. 
************************************************ */


module DYN_ISSUE(
    input                                       clk,
    input                                       rst,
    input   [95:0]                              in_fea,
    input   [95:0]                              in_wei,
    input   [5:0]                               non_zero
);



reg     [31:0]                                  workline_0  [3:0];
reg     [31:0]                                  workline_1  [3:0];
reg     [31:0]                                  workline_2  [3:0];
reg     [31:0]                                  workline_3  [3:0];
reg     [31:0]                                  workline_4  [3:0];
reg     [31:0]                                  workline_5  [3:0];

reg     [3:0]                                   line_nz_flag_0;
reg     [3:0]                                   line_nz_flag_1;
reg     [3:0]                                   line_nz_flag_2;
reg     [3:0]                                   line_nz_flag_3;
reg     [3:0]                                   line_nz_flag_4;
reg     [3:0]                                   line_nz_flag_5;

reg                                             line0_iss_flag_0;
reg                                             line1_iss_flag_0;
reg                                             line1_iss_flag_1;
reg                                             line2_iss_flag_0;
reg                                             line2_iss_flag_1;
reg                                             line2_iss_flag_2;
reg                                             line3_iss_flag_1;
reg                                             line3_iss_flag_2;
reg                                             line3_iss_flag_3;
reg                                             line4_iss_flag_2;
reg                                             line4_iss_flag_3;
reg                                             line5_iss_flag_3;








reg     [1:0]                                   in_linept_0;
reg     [1:0]                                   in_linept_1;
reg     [1:0]                                   in_linept_2;
reg     [1:0]                                   in_linept_3;
reg     [1:0]                                   in_linept_4;
reg     [1:0]                                   in_linept_5;

reg     [1:0]                                   workpt_0;
reg     [1:0]                                   workpt_1;
reg     [1:0]                                   workpt_2;
reg     [1:0]                                   workpt_3;
reg     [1:0]                                   workpt_4;
reg     [1:0]                                   workpt_5;



reg     [31:0]                                  iss_reg0;
reg     [31:0]                                  iss_reg1;
reg     [31:0]                                  iss_reg2;
reg     [31:0]                                  iss_reg3;

reg                                             iss_flag0;
reg                                             iss_flag1;
reg                                             iss_flag2;
reg                                             iss_flag3;





// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// dsp #0 dsipatch time-serial logic
always @ (posedge clk) begin
    if(!rst) begin
        case({line_nz_flag_2[0], line_nz_flag_1[0], line_nz_flag_0[0]})
        'b000: begin
            iss_flag0 <= 'd0;
            iss_reg0 <= iss_reg0;
        end
        'b001: begin
            iss_flag0 <= 'd1;
            iss_reg0 <= workline_0[workpt_0];
        end
        'b011: begin
            iss_flag0 <= 'd1;
            iss_reg0 <= workline_0[workpt_0];
        end
        'b111: begin
            iss_flag0 <= 'd1;
            iss_reg0 <= workline_0[workpt_0];
        end
        'b101: begin
            iss_flag0 <= 'd1;
            iss_reg0 <= workline_0[workpt_0];
        end
        'b010: begin
            iss_flag0 <= 'd1;
            iss_reg0 <= workline_1[workpt_1];
        end
        'b110: begin
            iss_flag0 <= 'd1;
            iss_reg0 <= workline_1[workpt_1];
        end
        'b100: begin
            iss_flag0 <= 'd1;
            iss_reg0 <= workline_2[workpt_2];
        end

        endcase
    end
    else begin
        iss_flag0 <= 'd0;
        iss_reg0 <= 'd0;
    end
end

// dsp #0 dsipatch instance logic
always @ (line_nz_flag_2[0] or line_nz_flag_1[0] or line_nz_flag_0[0]) begin
    if(!rst) begin
        case({line_nz_flag_2[0], line_nz_flag_1[0], line_nz_flag_0[0]})
        'b000: begin
            line0_iss_flag_0 = 'd0;
            line1_iss_flag_0 = 'd0;
            line2_iss_flag_0 = 'd0;
        end
        'b001: begin
            line0_iss_flag_0 = 'd1;
            line1_iss_flag_0 = 'd0;
            line2_iss_flag_0 = 'd0;
        end
        'b011: begin
            line0_iss_flag_0 = 'd1;
            line1_iss_flag_0 = 'd0;
            line2_iss_flag_0 = 'd0;
        end
        'b111: begin
            line0_iss_flag_0 = 'd1;
            line1_iss_flag_0 = 'd0;
            line2_iss_flag_0 = 'd0;
        end
        'b101: begin
            line0_iss_flag_0 = 'd1;
            line1_iss_flag_0 = 'd0;
            line2_iss_flag_0 = 'd0;
        end
        'b010: begin
            line0_iss_flag_0 = 'd0;
            line1_iss_flag_0 = 'd1;
            line2_iss_flag_0 = 'd0;
        end
        'b110: begin
            line0_iss_flag_0 = 'd0;
            line1_iss_flag_0 = 'd1;
            line2_iss_flag_0 = 'd0;
        end
        'b100: begin
            line0_iss_flag_0 = 'd0;
            line1_iss_flag_0 = 'd0;
            line2_iss_flag_0 = 'd1;
        end

        endcase
    end
    else begin
        line0_iss_flag_0 = 'd0;
        line1_iss_flag_0 = 'd0;
        line2_iss_flag_0 = 'd0;
    end
end





// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// dsp #1 dsipatch time-serial logic
always @ (posedge clk) begin
    if(!rst) begin
        // if dsp #0 get data #0
        if(line_nz_flag_0[0] == 'b1) begin
            case({line_nz_flag_3[0], line_nz_flag_2[0], line_nz_flag_1[0]})
            'b000: begin
                iss_flag1 <= 'd0;
                iss_reg1 <= iss_reg1;
            end
            'b001: begin
                iss_flag1 <= 'd1;
                iss_reg1 <= workline_1[workpt_1];
            end
            'b011: begin
                iss_flag1 <= 'd1;
                iss_reg1 <= workline_1[workpt_1];
            end
            'b111: begin
                iss_flag1 <= 'd1;
                iss_reg1 <= workline_1[workpt_1];
            end
            'b101: begin
                iss_flag1 <= 'd1;
                iss_reg1 <= workline_1[workpt_1];
            end
            'b010: begin
                iss_flag1 <= 'd1;
                iss_reg1 <= workline_2[workpt_2];
            end
            'b110: begin
                iss_flag1 <= 'd1;
                iss_reg1 <= workline_2[workpt_2];
            end
            'b100: begin
                iss_flag1 <= 'd1;
                iss_reg1 <= workline_3[workpt_3];
            end
            endcase
        end

        // if dsp #0 does not get data #0
        else begin
            case({line_nz_flag_3[0], line_nz_flag_2[0], line_nz_flag_1[0]})
            'b000: begin
                iss_flag1 <= 'd0;
                iss_reg1 <= iss_reg1;
            end
            'b001: begin
                iss_flag1 <= 'd0;
                iss_reg1 <= iss_reg1;
            end
            'b011: begin
                iss_flag1 <= 'd1;
                iss_reg1 <= workline_2[workpt_2];
            end
            'b111: begin
                iss_flag1 <= 'd1;
                iss_reg1 <= workline_2[workpt_2];
            end
            'b101: begin
                iss_flag1 <= 'd1;
                iss_reg1 <= workline_3[workpt_3];
            end
            'b010: begin
                iss_flag1 <= 'd0;
                iss_reg1 <= iss_reg1;
            end
            'b110: begin
                iss_flag1 <= 'd1;
                iss_reg1 <= workline_3[workpt_3];
            end
            'b100: begin
                iss_flag1 <= 'd1;
                iss_reg1 <= workline_3[workpt_3];
            end
            endcase
        end
        
    end
    else begin
        iss_flag1 <= 'd0;
        iss_reg1 <= 'd0;
    end
end

// dsp #1 dsipatch instance logic
always @ (line_nz_flag_3[0] or line_nz_flag_2[0] or line_nz_flag_1[0] or line_nz_flag_0[0]) begin
    if(!rst) begin
        // if dsp #0 get data #0
        if(line_nz_flag_0[0] == 'b1) begin
            case({line_nz_flag_3[0], line_nz_flag_2[0], line_nz_flag_1[0]})
            'b000: begin
                line1_iss_flag_1 = 'd0;
                line2_iss_flag_1 = 'd0;
                line3_iss_flag_1 = 'd0;
            end
            'b001: begin
                line1_iss_flag_1 = 'd1;
                line2_iss_flag_1 = 'd0;
                line3_iss_flag_1 = 'd0;
            end
            'b011: begin
                line1_iss_flag_1 = 'd1;
                line2_iss_flag_1 = 'd0;
                line3_iss_flag_1 = 'd0;
            end
            'b111: begin
                line1_iss_flag_1 = 'd1;
                line2_iss_flag_1 = 'd0;
                line3_iss_flag_1 = 'd0;
            end
            'b101: begin
                line1_iss_flag_1 = 'd1;
                line2_iss_flag_1 = 'd0;
                line3_iss_flag_1 = 'd0;
            end
            'b010: begin
                line1_iss_flag_1 = 'd0;
                line2_iss_flag_1 = 'd1;
                line3_iss_flag_1 = 'd0;
            end
            'b110: begin
                line1_iss_flag_1 = 'd0;
                line2_iss_flag_1 = 'd1;
                line3_iss_flag_1 = 'd0;
            end
            'b100: begin
                line1_iss_flag_1 = 'd0;
                line2_iss_flag_1 = 'd0;
                line3_iss_flag_1 = 'd1;
            end
            endcase
        end

        // if dsp #0 does not get data #0
        else begin
            case({line_nz_flag_3[0], line_nz_flag_2[0], line_nz_flag_1[0]})
            'b000: begin
                line1_iss_flag_1 = 'd0;
                line2_iss_flag_1 = 'd0;
                line3_iss_flag_1 = 'd0;
            end
            'b001: begin
                line1_iss_flag_1 = 'd0;
                line2_iss_flag_1 = 'd0;
                line3_iss_flag_1 = 'd0;
            end
            'b011: begin
                line1_iss_flag_1 = 'd0;
                line2_iss_flag_1 = 'd1;
                line3_iss_flag_1 = 'd0;
            end
            'b111: begin
                line1_iss_flag_1 = 'd0;
                line2_iss_flag_1 = 'd1;
                line3_iss_flag_1 = 'd0;
            end
            'b101: begin
                line1_iss_flag_1 = 'd0;
                line2_iss_flag_1 = 'd0;
                line3_iss_flag_1 = 'd1;
            end
            'b010: begin
                line1_iss_flag_1 = 'd0;
                line2_iss_flag_1 = 'd0;
                line3_iss_flag_1 = 'd0;
            end
            'b110: begin
                line1_iss_flag_1 = 'd0;
                line2_iss_flag_1 = 'd0;
                line3_iss_flag_1 = 'd1;
            end
            'b100: begin
                line1_iss_flag_1 = 'd0;
                line2_iss_flag_1 = 'd0;
                line3_iss_flag_1 = 'd1;
            end
            endcase
        end
        
    end
    else begin
        line1_iss_flag_1 = 'd0;
        line2_iss_flag_1 = 'd0;
        line3_iss_flag_1 = 'd0;
    end
end





// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// dsp #2 dispatch time-serial logic
always @ (posedge clk) begin
    if(!rst) begin
        // if dsp #0 and dsp #1 get 2 data
        if({line_nz_flag_1[0], line_nz_flag_0[0]} == 'b11) begin
            case({line_nz_flag_4[0], line_nz_flag_3[0], line_nz_flag_2[0]})
            'b000: begin
                iss_flag2 <= 'd0;
                iss_reg2 <= iss_reg2;
            end
            'b001: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_2[workpt_2];
            end
            'b011: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_2[workpt_2];
            end
            'b111: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_2[workpt_2];
            end
            'b101: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_2[workpt_2];
            end
            'b010: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_3[workpt_3];
            end
            'b110: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_3[workpt_3];
            end
            'b100: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_4[workpt_4];
            end
            endcase
        end

        // dsp#0 get data#0 or data#1 and dsp#1 is idle
        else if({line_nz_flag_1[0], line_nz_flag_0[0]} == 'b01 || 
                {line_nz_flag_1[0], line_nz_flag_0[0]} == 'b10) begin
            case({line_nz_flag_4[0], line_nz_flag_3[0], line_nz_flag_2[0]})
            'b000: begin
                iss_flag2 <= 'd0;
                iss_reg2 <= iss_reg2;
            end
            'b001: begin
                iss_flag2 <= 'd0;
                iss_reg2 <= iss_reg2;
            end
            'b011: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_3[workpt_3];
            end
            'b111: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_3[workpt_3];
            end
            'b101: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_4[workpt_4];
            end
            'b010: begin
                iss_flag2 <= 'd0;
                iss_reg2 <= iss_reg2;
            end
            'b110: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_4[workpt_4];
            end
            'b100: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_4[workpt_4];
            end
            endcase
        end

        // dsp#0 and dsp#1 are both idle
        else begin
            case({line_nz_flag_4[0], line_nz_flag_3[0], line_nz_flag_2[0]})
            'b000: begin
                iss_flag2 <= 'd0;
                iss_reg2 <= iss_reg2;
            end
            'b001: begin
                iss_flag2 <= 'd0;
                iss_reg2 <= iss_reg2;
            end
            'b011: begin
                iss_flag2 <= 'd0;
                iss_reg2 <= iss_reg2;
            end
            'b111: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_4[workpt_4];
            end
            'b101: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_4[workpt_4];
            end
            'b010: begin
                iss_flag2 <= 'd0;
                iss_reg2 <= iss_reg2;
            end
            'b110: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_4[workpt_4];
            end
            'b100: begin
                iss_flag2 <= 'd1;
                iss_reg2 <= workline_4[workpt_4];
            end
            endcase
        end
        
    end
    else begin
        iss_flag2 <= 'd0;
        iss_reg2 <= 'd0;
    end
end

// dsp #2 dsipatch instance logic
always @ (line_nz_flag_1[0] or line_nz_flag_0[0] or line_nz_flag_4[0] or line_nz_flag_3[0] or line_nz_flag_2[0]) begin
    if(!rst) begin
        // if dsp #0 and dsp #1 get 2 data
        if({line_nz_flag_1[0], line_nz_flag_0[0]} == 'b11) begin
            case({line_nz_flag_4[0], line_nz_flag_3[0], line_nz_flag_2[0]})
            'b000: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd0;
            end
            'b001: begin
                line2_iss_flag_2 = 'd1;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd0;
            end
            'b011: begin
                line2_iss_flag_2 = 'd1;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd0;
            end
            'b111: begin
                line2_iss_flag_2 = 'd1;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd0;
            end
            'b101: begin
                line2_iss_flag_2 = 'd1;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd0;
            end
            'b010: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd1;
                line4_iss_flag_2 = 'd0;
            end
            'b110: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd1;
                line4_iss_flag_2 = 'd0;
            end
            'b100: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd1;
            end
            endcase
        end

        // dsp#0 get data#0 or data#1 and dsp#1 is idle
        else if({line_nz_flag_1[0], line_nz_flag_0[0]} == 'b01
                || {line_nz_flag_1[0], line_nz_flag_0[0]} == 'b10) begin
            case({line_nz_flag_4[0], line_nz_flag_3[0], line_nz_flag_2[0]})
            'b000: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd0;
            end
            'b001: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd0;
            end
            'b011: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd1;
                line4_iss_flag_2 = 'd0;
            end
            'b111: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd1;
                line4_iss_flag_2 = 'd0;
            end
            'b101: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd1;
            end
            'b010: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd0;
            end
            'b110: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd1;
            end
            'b100: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd1;
            end
            endcase
        end

        // dsp#0 and dsp#1 are both idle
        else begin
            case({line_nz_flag_4[0], line_nz_flag_3[0], line_nz_flag_2[0]})
            'b000: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd0;
            end
            'b001: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd0;
            end
            'b011: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd0;
            end
            'b111: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd1;
            end
            'b101: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd1;
            end
            'b010: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd0;
            end
            'b110: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd1;
            end
            'b100: begin
                line2_iss_flag_2 = 'd0;
                line3_iss_flag_2 = 'd0;
                line4_iss_flag_2 = 'd1;
            end
            endcase
        end
        
    end
    else begin
        line2_iss_flag_2 = 'd0;
        line3_iss_flag_2 = 'd0;
        line4_iss_flag_2 = 'd0;
    end
end





// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// --------------------------------------------------------------
// dsp #3 dispatch time-serial logic
always @ (posedge clk) begin
    if(!rst) begin
        // dsp#2 gets data#2
        if({line_nz_flag_2[0], line_nz_flag_1[0], line_nz_flag_0[0]} == 'b111) begin
            case({line_nz_flag_5[0], line_nz_flag_4[0], line_nz_flag_3[0]})
            'b000: begin
                iss_flag3 <= 'd0;
                iss_reg3 <= iss_reg3;
            end
            'b001: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_3[workpt_3];
            end
            'b011: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_3[workpt_3];
            end
            'b111: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_3[workpt_3];
            end
            'b101: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_3[workpt_3];
            end
            'b010: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_4[workpt_4];
            end
            'b110: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_4[workpt_4];
            end
            'b100: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_5[workpt_5];
            end
            endcase
        end

        // dsp#2 gets data#3
        else if({line_nz_flag_3[0], line_nz_flag_2[0], line_nz_flag_1[0], line_nz_flag_0[0]} == 'b1011 || 
                {line_nz_flag_3[0], line_nz_flag_2[0], line_nz_flag_1[0], line_nz_flag_0[0]} == 'b1110 ||
                {line_nz_flag_3[0], line_nz_flag_2[0], line_nz_flag_1[0], line_nz_flag_0[0]} == 'b1101) begin
            case({line_nz_flag_5[0], line_nz_flag_4[0], line_nz_flag_3[0]})
            'b000: begin
                iss_flag3 <= 'd0;
                iss_reg3 <= iss_reg3;
            end
            'b001: begin
                iss_flag3 <= 'd0;
                iss_reg3 <= iss_reg3;
            end
            'b011: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_4[workpt_4];
            end
            'b111: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_4[workpt_4];
            end
            'b101: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_5[workpt_5];
            end
            'b010: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_4[workpt_4];
            end
            'b110: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_4[workpt_4];
            end
            'b100: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_5[workpt_5];
            end
            endcase
        end

        // dsp#2 gets data#4
        else begin
            case({line_nz_flag_5[0], line_nz_flag_4[0], line_nz_flag_3[0]})
            'b000: begin
                iss_flag3 <= 'd0;
                iss_reg3 <= iss_reg3;
            end
            'b001: begin
                iss_flag3 <= 'd0;
                iss_reg3 <= iss_reg3;
            end
            'b011: begin
                iss_flag3 <= 'd0;
                iss_reg3 <= iss_reg3;
            end
            'b111: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_5[workpt_5];
            end
            'b101: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_5[workpt_5];
            end
            'b010: begin
                iss_flag3 <= 'd0;
                iss_reg3 <= iss_reg3;
            end
            'b110: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_5[workpt_5];
            end
            'b100: begin
                iss_flag3 <= 'd1;
                iss_reg3 <= workline_5[workpt_5];
            end
            endcase
        end
        
    end
    else begin
        iss_flag3 <= 'd0;
        iss_reg3 <= 'd0;
    end
end

// dsp #3 dsipatch instance logic
always @ (line_nz_flag_5[0] or line_nz_flag_4[0] or line_nz_flag_3[0] or 
            line_nz_flag_2[0] or line_nz_flag_1[0] or line_nz_flag_0[0]) begin
    if(!rst) begin
        // dsp#2 gets data#2
        if({line_nz_flag_2[0], line_nz_flag_1[0], line_nz_flag_0[0]} == 'b111) begin
            case({line_nz_flag_5[0], line_nz_flag_4[0], line_nz_flag_3[0]})
            'b000: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd0;
            end
            'b001: begin
                line3_iss_flag_3 = 'd1;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd0;
            end
            'b011: begin
                line3_iss_flag_3 = 'd1;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd0;
            end
            'b111: begin
                line3_iss_flag_3 = 'd1;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd0;
            end
            'b101: begin
                line3_iss_flag_3 = 'd1;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd0;
            end
            'b010: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd1;
                line5_iss_flag_3 = 'd0;
            end
            'b110: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd1;
                line5_iss_flag_3 = 'd0;
            end
            'b100: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd1;
            end
            endcase
        end

        // dsp#2 gets data#3
        else if({line_nz_flag_3[0], line_nz_flag_2[0], line_nz_flag_1[0], line_nz_flag_0[0]} == 'b1011 || 
                {line_nz_flag_3[0], line_nz_flag_2[0], line_nz_flag_1[0], line_nz_flag_0[0]} == 'b1110 ||
                {line_nz_flag_3[0], line_nz_flag_2[0], line_nz_flag_1[0], line_nz_flag_0[0]} == 'b1101) begin
            case({line_nz_flag_5[0], line_nz_flag_4[0], line_nz_flag_3[0]})
            'b000: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd0;
            end
            'b001: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd0;
            end
            'b011: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd1;
                line5_iss_flag_3 = 'd0;
            end
            'b111: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd1;
                line5_iss_flag_3 = 'd0;
            end
            'b101: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd1;
            end
            'b010: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd1;
                line5_iss_flag_3 = 'd0;
            end
            'b110: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd1;
                line5_iss_flag_3 = 'd0;
            end
            'b100: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd1;
            end
            endcase
        end

        // dsp#2 gets data#4
        else begin
            case({line_nz_flag_5[0], line_nz_flag_4[0], line_nz_flag_3[0]})
            'b000: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd0;
            end
            'b001: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd0;
            end
            'b011: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd0;
            end
            'b111: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd1;
            end
            'b101: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd1;
            end
            'b010: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd0;
            end
            'b110: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd1;
            end
            'b100: begin
                line3_iss_flag_3 = 'd0;
                line4_iss_flag_3 = 'd0;
                line5_iss_flag_3 = 'd1;
            end
            endcase
        end
        
    end
    else begin
        line3_iss_flag_3 = 'd0;
        line4_iss_flag_3 = 'd0;
        line5_iss_flag_3 = 'd0;
    end
end



// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// line flag 0's control
always @ (posedge clk) begin
    if(!rst) begin
        // there comes new valid data
        if(non_zero[0]) begin
            // if one data is issued
            if(line0_iss_flag_0) begin
                case(line_nz_flag_0)
                'b0001:
                    line_nz_flag_0 <= 'b0001;
                'b0011:
                    line_nz_flag_0 <= 'b0011;
                'b0111:
                    line_nz_flag_0 <= 'b0111;
                default:
                    line_nz_flag_0 <= line_nz_flag_0;
                endcase
            end

            else begin
                case(line_nz_flag_0)
                'b0000:
                    line_nz_flag_0 <= 'b0001;
                'b0001:
                    line_nz_flag_0 <= 'b0011;
                'b0011:
                    line_nz_flag_0 <= 'b0111;
                'b0111:
                    line_nz_flag_0 <= 'b1111;
                default:
                    line_nz_flag_0 <= line_nz_flag_0;
                endcase
            end

            workline_0[in_linept_0] <= {in_fea[15:0], in_wei[15:0]};
        end

        // there's no new valid data
        else begin
            if(line0_iss_flag_0)
                line_nz_flag_0 <= line_nz_flag_0 >> 1;
            else
                line_nz_flag_0 <= line_nz_flag_0;

            workline_0[in_linept_0] <= 'd0;
        end
    end

    else begin
        line_nz_flag_0 <= 'd0;
        workline_0[0] <= 'd0;
        workline_0[1] <= 'd0;
        workline_0[2] <= 'd0;
        workline_0[3] <= 'd0;
        workline_0[4] <= 'd0;
        workline_0[5] <= 'd0;
    end
end

// control line 0 in_pt shifting
always @ (posedge clk) begin
    if(!rst) begin
        if(non_zero[0]) begin
            in_linept_0 <= in_linept_0 + 'd1;
        end
        else begin
            in_linept_0 <= in_linept_0;
        end
    end
    else begin
        in_linept_0 <= 'd0;
    end
end

// shift line 0 work_pt
always @ (posedge clk) begin
    if(!rst) begin
        if(line0_iss_flag_0) begin
            workpt_0 <= workpt_0 + 'd1;
        end
        else begin
            workpt_0 <= workpt_0;
        end
    end 
    else begin
        workpt_0 <= 'd0;
    end   
end



// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// line flag 1's control
always @ (posedge clk) begin
    if(!rst) begin
        // there comes new valid data
        if(non_zero[1]) begin
            // if one data is issued
            if(line1_iss_flag_0 || line1_iss_flag_1) begin
                case(line_nz_flag_1)
                'b0001:
                    line_nz_flag_1 <= 'b0001;
                'b0011:
                    line_nz_flag_1 <= 'b0011;
                'b0111:
                    line_nz_flag_1 <= 'b0111;
                default:
                    line_nz_flag_1 <= line_nz_flag_1;
                endcase
            end

            else begin
                case(line_nz_flag_1)
                'b0000:
                    line_nz_flag_1 <= 'b0001;
                'b0001:
                    line_nz_flag_1 <= 'b0011;
                'b0011:
                    line_nz_flag_1 <= 'b0111;
                'b0111:
                    line_nz_flag_1 <= 'b1111;
                default:
                    line_nz_flag_1 <= line_nz_flag_1;
                endcase
            end

            workline_1[in_linept_1] <= {in_fea[31:16], in_wei[31:16]};
        end

        // there's no new valid data
        else begin
            if(line1_iss_flag_0 || line1_iss_flag_1)
                line_nz_flag_1 <= line_nz_flag_1 >> 1;
            else
                line_nz_flag_1 <= line_nz_flag_1;

            workline_1[in_linept_1] <= 'd0;
        end
    end

    else begin
        line_nz_flag_1 <= 'd0;
        workline_1[0] <= 'd0;
        workline_1[1] <= 'd0;
        workline_1[2] <= 'd0;
        workline_1[3] <= 'd0;
        workline_1[4] <= 'd0;
        workline_1[5] <= 'd0;
    end
end


// control line 1 in_pt shifting
always @ (posedge clk) begin
    if(!rst) begin
        if(non_zero[1]) begin
            in_linept_1 <= in_linept_1 + 'd1;
        end
        else begin
            in_linept_1 <= in_linept_1;
        end
    end
    else begin
        in_linept_1 <= 'd0;
    end
end

// shift line 0 work_pt
always @ (posedge clk) begin
    if(!rst) begin
        if(line1_iss_flag_0 || line1_iss_flag_1) begin
            workpt_1 <= workpt_1 + 'd1;
        end
        else begin
            workpt_1 <= workpt_1;
        end
    end 
    else begin
        workpt_1 <= 'd0;
    end   
end




// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// line flag 2's control
always @ (posedge clk) begin
    if(!rst) begin
        // there comes new valid data
        if(non_zero[2]) begin
            // if one data is issued
            if(line2_iss_flag_0 || line2_iss_flag_1 || line2_iss_flag_2) begin
                case(line_nz_flag_2)
                'b0001:
                    line_nz_flag_2 <= 'b0001;
                'b0011:
                    line_nz_flag_2 <= 'b0011;
                'b0111:
                    line_nz_flag_2 <= 'b0111;
                default:
                    line_nz_flag_2 <= line_nz_flag_2;
                endcase
            end

            else begin
                case(line_nz_flag_2)
                'b0000:
                    line_nz_flag_2 <= 'b0001;
                'b0001:
                    line_nz_flag_2 <= 'b0011;
                'b0011:
                    line_nz_flag_2 <= 'b0111;
                'b0111:
                    line_nz_flag_2 <= 'b1111;
                default:
                    line_nz_flag_2 <= line_nz_flag_2;
                endcase
            end

            workline_2[in_linept_2] <= {in_fea[47:32], in_wei[47:32]};
        end

        // there's no new valid data
        else begin
            if(line2_iss_flag_0 || line2_iss_flag_1 || line2_iss_flag_2)
                line_nz_flag_2 <= line_nz_flag_2 >> 1;
            else
                line_nz_flag_2 <= line_nz_flag_2;

            workline_2[in_linept_2] <= 'd0;
        end
    end

    else begin
        line_nz_flag_2 <= 'd0;
        workline_2[0] <= 'd0;
        workline_2[1] <= 'd0;
        workline_2[2] <= 'd0;
        workline_2[3] <= 'd0;
        workline_2[4] <= 'd0;
        workline_2[5] <= 'd0;
    end
end

// control line 2 pt shifting
always @ (posedge clk) begin
    if(!rst) begin
        if(non_zero[2]) begin
            in_linept_2 <= in_linept_2 + 'd1;
        end
        else begin
            in_linept_2 <= in_linept_2;
        end
    end
    else begin
        in_linept_2 <= 'd0;
    end
end

// shift line 2 work_pt
always @ (posedge clk) begin
    if(!rst) begin
        if(line2_iss_flag_0 || line2_iss_flag_1 || line2_iss_flag_2) begin
            workpt_2 <= workpt_2 + 'd1;
        end
        else begin
            workpt_2 <= workpt_2;
        end
    end 
    else begin
        workpt_2 <= 'd0;
    end   
end





// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// line flag 3's control
always @ (posedge clk) begin
    if(!rst) begin
        // there comes new valid data
        if(non_zero[3]) begin
            // if one data is issued
            if(line3_iss_flag_3 || line3_iss_flag_1 || line3_iss_flag_2) begin
                case(line_nz_flag_3)
                'b0001:
                    line_nz_flag_3 <= 'b0001;
                'b0011:
                    line_nz_flag_3 <= 'b0011;
                'b0111:
                    line_nz_flag_3 <= 'b0111;
                default:
                    line_nz_flag_3 <= line_nz_flag_3;
                endcase
            end

            else begin
                case(line_nz_flag_3)
                'b0000:
                    line_nz_flag_3 <= 'b0001;
                'b0001:
                    line_nz_flag_3 <= 'b0011;
                'b0011:
                    line_nz_flag_3 <= 'b0111;
                'b0111:
                    line_nz_flag_3 <= 'b1111;
                default:
                    line_nz_flag_3 <= line_nz_flag_3;
                endcase
            end

            workline_3[in_linept_3] <= {in_fea[63:48], in_wei[63:48]};
        end

        // there's no new valid data
        else begin
            if(line3_iss_flag_3 || line3_iss_flag_1 || line3_iss_flag_2)
                line_nz_flag_3 <= line_nz_flag_3 >> 1;
            else
                line_nz_flag_3 <= line_nz_flag_3;

            workline_3[in_linept_3] <= 'd0;
        end
    end

    else begin
        line_nz_flag_3 <= 'd0;
        workline_3[0] <= 'd0;
        workline_3[1] <= 'd0;
        workline_3[2] <= 'd0;
        workline_3[3] <= 'd0;
        workline_3[4] <= 'd0;
        workline_3[5] <= 'd0;
    end
end
// control line 3 pt shifting
always @ (posedge clk) begin
    if(!rst) begin
        if(non_zero[3]) begin
            in_linept_3 <= in_linept_3 + 'd1;
        end
        else begin
            in_linept_3 <= in_linept_3;
        end
    end
    else begin
        in_linept_3 <= 'd0;
    end
end

// shift line 3 work_pt
always @ (posedge clk) begin
    if(!rst) begin
        if(line3_iss_flag_3 || line3_iss_flag_1 || line3_iss_flag_2) begin
            workpt_3 <= workpt_3 + 'd1;
        end
        else begin
            workpt_3 <= workpt_3;
        end
    end 
    else begin
        workpt_3 <= 'd0;
    end   
end



// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// line flag 4's control
always @ (posedge clk) begin
    if(!rst) begin
        // there comes new valid data
        if(non_zero[4]) begin
            // if one data is issued
            if(line4_iss_flag_3 || line4_iss_flag_2) begin
                case(line_nz_flag_4)
                'b0001:
                    line_nz_flag_4 <= 'b0001;
                'b0011:
                    line_nz_flag_4 <= 'b0011;
                'b0111:
                    line_nz_flag_4 <= 'b0111;
                default:
                    line_nz_flag_4 <= line_nz_flag_4;
                endcase
            end

            else begin
                case(line_nz_flag_4)
                'b0000:
                    line_nz_flag_4 <= 'b0001;
                'b0001:
                    line_nz_flag_4 <= 'b0011;
                'b0011:
                    line_nz_flag_4 <= 'b0111;
                'b0111:
                    line_nz_flag_4 <= 'b1111;
                default:
                    line_nz_flag_4 <= line_nz_flag_4;
                endcase
            end

            workline_4[in_linept_4] <= {in_fea[79:64], in_wei[79:64]};
        end

        // there's no new valid data
        else begin
            if(line4_iss_flag_3 || line4_iss_flag_2)
                line_nz_flag_4 <= line_nz_flag_4 >> 1;
            else
                line_nz_flag_4 <= line_nz_flag_4;

            workline_4[in_linept_4] <= 'd0;
        end
    end

    else begin
        line_nz_flag_4 <= 'd0;
        workline_4[0] <= 'd0;
        workline_4[1] <= 'd0;
        workline_4[2] <= 'd0;
        workline_4[3] <= 'd0;
        workline_4[4] <= 'd0;
        workline_4[5] <= 'd0;
    end
end
// control line 0 pt shifting
always @ (posedge clk) begin
    if(!rst) begin
        if(non_zero[4]) begin
            in_linept_4 <= in_linept_4 + 'd1;
        end
        else begin
            in_linept_4 <= in_linept_4;
        end
    end
    else begin
        in_linept_4 <= 'd0;
    end
end


// shift line 4 work_pt
always @ (posedge clk) begin
    if(!rst) begin
        if(line4_iss_flag_3 || line4_iss_flag_2) begin
            workpt_4 <= workpt_4 + 'd1;
        end
        else begin
            workpt_4 <= workpt_4;
        end
    end 
    else begin
        workpt_4 <= 'd0;
    end   
end







// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// ---------------------------------------------------------
// line flag 5's control
always @ (posedge clk) begin
    if(!rst) begin
        // there comes new valid data
        if(non_zero[5]) begin
            // if one data is issued
            if(line5_iss_flag_3) begin
                case(line_nz_flag_5)
                'b0001:
                    line_nz_flag_5 <= 'b0001;
                'b0011:
                    line_nz_flag_5 <= 'b0011;
                'b0111:
                    line_nz_flag_5 <= 'b0111;
                default:
                    line_nz_flag_5 <= line_nz_flag_5;
                endcase
            end

            else begin
                case(line_nz_flag_5)
                'b0000:
                    line_nz_flag_5 <= 'b0001;
                'b0001:
                    line_nz_flag_5 <= 'b0011;
                'b0011:
                    line_nz_flag_5 <= 'b0111;
                'b0111:
                    line_nz_flag_5 <= 'b1111;
                default:
                    line_nz_flag_5 <= line_nz_flag_5;
                endcase
            end

            workline_5[in_linept_5] <= {in_fea[95:80], in_wei[95:80]};
        end

        // there's no new valid data
        else begin
            if(line5_iss_flag_3)
                line_nz_flag_5 <= line_nz_flag_5 >> 1;
            else
                line_nz_flag_5 <= line_nz_flag_5;

            workline_5[in_linept_5] <= 'd0;
        end
    end

    else begin
        line_nz_flag_5 <= 'd0;
        workline_5[0] <= 'd0;
        workline_5[1] <= 'd0;
        workline_5[2] <= 'd0;
        workline_5[3] <= 'd0;
        workline_5[4] <= 'd0;
        workline_5[5] <= 'd0;
    end
end

// control line 0 pt shifting
always @ (posedge clk) begin
    if(!rst) begin
        if(non_zero[5]) begin
            in_linept_5 <= in_linept_5 + 'd1;
        end
        else begin
            in_linept_5 <= in_linept_5;
        end
    end
    else begin
        in_linept_5 <= 'd0;
    end
end

// shift line 5 work_pt
always @ (posedge clk) begin
    if(!rst) begin
        if(line5_iss_flag_3) begin
            workpt_5 <= workpt_5 + 'd1;
        end
        else begin
            workpt_5 <= workpt_5;
        end
    end 
    else begin
        workpt_5 <= 'd0;
    end   
end






endmodule