/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is the partial sum generate function part. When start 
adding operations inside pe loop, this module will receive latest data 
from BN module and history result from FIFO storage and then transfer
partial sum into FIFO again. When done all mergeing, this module will 
output data into RELU function.
************************************************ */
module PART_SUM_CHN64(
    input                                   clk,
    input                                   rst,
    input   [1023:0]                        bn_mult_res_w,
    input                                   bn_mult_res_v_w,
    input   [1023:0]                        part_sum_w,
    input                                   part_sum_v_w,

    output  [1023:0]                        out_part_sum_w,
    output                                  out_part_sum_v_w,
    output                                  read_fifo_w,
    output                                  final_out_v_w
);


reg                                         first_time;
reg     [10:0]                              first_cnter;
reg     [10:0]                              loop_cnter;
reg     [1:0]                               pe_loop_cnter;
reg                                         final_out_v;



reg     [9:0]                                       working_flag;
reg     [127:0]                                     in_data_a;
reg     [127:0]                                     in_data_b;
reg                                                 in_data_v;
reg     [1023:0]                                    out_part_sum;
reg                                                 out_part_sum_v;
reg     [127:0]                                     par_res_cache;
reg     [4:0]                                       bn_compute_cnter;
reg                                                 read_fifo;


assign out_part_sum_w = out_part_sum;
assign out_part_sum_v_w = out_part_sum_v;
assign final_out_v_w = final_out_v;




// count PE loop and set final_out_v
always @ (posedge clk) begin
    if(!rst) begin
        if(loop_cnter == 'd3750) begin
            pe_loop_cnter <= pe_loop_cnter + 'd1;
        end
        else begin
            if(pe_loop_cnter == 'd3) begin
                pe_loop_cnter <= 'd0;
            end
            else begin
                pe_loop_cnter <= pe_loop_cnter;
            end
        end
    end
    else begin
        pe_loop_cnter <= 'd0;
    end
end

always @ (posedge clk) begin
    if(!rst) begin
        if(!first_time) begin
            if(bn_mult_res_v_w && loop_cnter != 'd3750) begin
                loop_cnter <= loop_cnter + 'd1;
            end
            else if (loop_cnter != 'd3750) begin
                loop_cnter <= loop_cnter;
            end
            else begin
                loop_cnter <= 'd0;
            end
        end
        else begin
            loop_cnter <= 'd0;
        end
    end
    else begin
        loop_cnter <= 'd0;
    end
end

always @ (posedge clk) begin
    if(!rst) begin
        if(pe_loop_cnter == 'd3) begin
            final_out_v <= 'd1;
        end
        else begin
            final_out_v <= 'd0;
        end
    end
    else begin
        final_out_v <= 'd0;
    end
end










// when first time is valid, parallel adder array's partsum should be set 0
always @ (posedge clk) begin
    if(!rst) begin
        if(first_cnter == 'd3750) begin
            first_time <= 'd0;
        end
        else begin
            first_time <= first_time;
        end
    end
    else begin
        first_time <= 'd1;
    end
end

always @ (posedge clk) begin
    if(!rst) begin
        if(first_time) begin
            if(bn_mult_res_v_w) begin
                first_cnter <= first_cnter + 'd1;
            end
            else begin
                first_cnter <= first_cnter;
            end
        end
        else begin
            first_cnter <= 'd0;
        end
    end
    else begin
        first_cnter <= 'd0;
    end
end






// shift working flag
always @ (posedge clk) begin
    if(!rst) begin
        case (working_flag)
        'b00_0000_0000: begin
            if(bn_mult_res_v_w) begin
                working_flag <= 'd1;
            end
            else begin
                working_flag <= working_flag;
            end
        end

        'b00_0000_0001: begin
            working_flag <= 'b0000_000_011;
        end

        'b00_0000_0011: begin
            working_flag <= 'b0000_000_111;
        end

        'b00_0000_0111: begin
            working_flag <= 'b0000_001_111;
        end

        'b00_0000_1111: begin
            working_flag <= 'b0000_011_111;
        end

        'b00_0001_1111: begin
            working_flag <= 'b0000_111_111;
        end

        'b00_0011_1111: begin
            working_flag <= 'b0001_111_111;
        end

        'b00_0111_1111: begin
            working_flag <= 'b0011_111_111;
        end

        default: begin
            working_flag <= working_flag << 1;
        end

        endcase
    end
    else begin
        working_flag <= 'd0;
    end
end






// in_data_v
always @ (working_flag) begin
    if(!rst) begin
        case(working_flag)
        'b0000_000_001: begin
            in_data_v = 'd1;
        end

        'b0000_000_011: begin
            in_data_v = 'd1;
        end

        'b0000_000_111: begin
            in_data_v = 'd1;
        end

        'b0000_001_111: begin
            in_data_v = 'd1;
        end

        'b0000_011_111: begin
            in_data_v = 'd1;
        end

        'b0000_111_111: begin
            in_data_v = 'd1;
        end

        'b0001_111_111: begin
            in_data_v = 'd1;
        end

        'b0011_111_111: begin
            in_data_v = 'd1;
        end

        default: begin
            in_data_v = 'd0;
        end

        endcase
    end
    else begin
        in_data_v = 'd0;
    end
end






// in data_a choose
always @ (working_flag) begin
    if(!rst) begin
        case(working_flag)
        'b0000_000_001: begin
            in_data_a = bn_mult_res_w[127:0];
        end

        'b0000_000_011: begin
            in_data_a = bn_mult_res_w[255:128];
        end

        'b0000_000_111: begin
            in_data_a = bn_mult_res_w[383:256];
        end

        'b0000_001_111: begin
            in_data_a = bn_mult_res_w[511:384];
        end

        'b0000_011_111: begin
            in_data_a = bn_mult_res_w[639:512];
        end

        'b0000_111_111: begin
            in_data_a = bn_mult_res_w[767:640];
        end

        'b0001_111_111: begin
            in_data_a = bn_mult_res_w[895:768];
        end

        'b0011_111_111: begin
            in_data_a = bn_mult_res_w[1023:896];
        end

        default: begin
            in_data_a = 'd0;
        end

        endcase
    end
    else begin
        in_data_a = 'd0;
    end
end




// in data_b choose
always @ (working_flag) begin
    if(!rst) begin
        if(first_time) begin
            in_data_b = 'd0;
        end
        else begin
            case(working_flag)
            'b0000_000_001: begin
                in_data_b = part_sum_w[127:0];
            end

            'b0000_000_011: begin
                in_data_b = part_sum_w[255:128];
            end

            'b0000_000_111: begin
                in_data_b = part_sum_w[383:256];
            end

            'b0000_001_111: begin
                in_data_b = part_sum_w[511:384];
            end

            'b0000_011_111: begin
                in_data_b = part_sum_w[639:512];
            end

            'b0000_111_111: begin
                in_data_b = part_sum_w[767:640];
            end

            'b0001_111_111: begin
                in_data_b = part_sum_w[895:768];
            end

            'b0011_111_111: begin
                in_data_b = part_sum_w[1023:896];
            end

            default: begin
                in_data_b = 'd0;
            end
            endcase
        end
    end
    else begin
        in_data_b = 'd0;
    end
end



wire    [127:0]                                 par_res_w;
wire                                            par_res_v_w;


PARAADD_8P8 paraadd_8p8(
    .clk                        (clk),
    .rst                        (rst),
    .in_data_a                  (in_data_a),
    .in_data_b                  (in_data_b),
    .data_v                     (in_data_v),
    .addres_w                   (par_res_w),
    .addres_v_w                 (par_res_v_w)
);


// compute times
always @ (posedge clk) begin
    if(!rst) begin
        if(par_res_v_w) begin
            if(bn_compute_cnter < 'd8) begin
                bn_compute_cnter <= bn_compute_cnter + 'd1;
            end
            else begin
                bn_compute_cnter <= 'd0;
            end
        end
        else begin
            if(bn_compute_cnter == 'd8)
                bn_compute_cnter <= 'd0;
            else
                bn_compute_cnter <= bn_compute_cnter;
        end
    end
    else begin
        bn_compute_cnter <= 'd0;
    end
end




// 1clk's cache
always @ (posedge clk) begin
    if(!rst) begin
        par_res_cache <= par_res_w;
    end
    else begin
        par_res_cache <= 'd0;
    end
end






// bn_add_res_v: when all partial result is done computing
always @ (posedge clk) begin
    if(!rst) begin
        if(bn_compute_cnter == 'd7) begin
            out_part_sum_v <= 'd1;
        end
        else begin
            out_part_sum_v <= 'd0;
        end
    end
    else begin
        out_part_sum_v <= 'd0;
    end
end





// part result's store
always @ (posedge clk) begin
    if(!rst) begin
        if(par_res_v_w) begin
            case (bn_compute_cnter)
            'd0: begin
                out_part_sum[127:0] <= par_res_cache;
                out_part_sum[255:128] <= out_part_sum[255:128];
                out_part_sum[383:256] <= out_part_sum[383:256];
                out_part_sum[511:384] <= out_part_sum[511:384];
                out_part_sum[639:512] <= out_part_sum[639:512];
                out_part_sum[767:640] <= out_part_sum[767:640];
                out_part_sum[895:768] <= out_part_sum[895:768];
                out_part_sum[1023:896] <= out_part_sum[1023:896];
            end

            'd1: begin
                out_part_sum[127:0] <= out_part_sum[127:0];
                out_part_sum[255:128] <= par_res_cache;
                out_part_sum[383:256] <= out_part_sum[383:256];
                out_part_sum[511:384] <= out_part_sum[511:384];
                out_part_sum[639:512] <= out_part_sum[639:512];
                out_part_sum[767:640] <= out_part_sum[767:640];
                out_part_sum[895:768] <= out_part_sum[895:768];
                out_part_sum[1023:896] <= out_part_sum[1023:896];
            end

            'd2: begin
                out_part_sum[127:0] <= out_part_sum[127:0];
                out_part_sum[255:128] <= out_part_sum[255:128];
                out_part_sum[383:256] <= par_res_cache;
                out_part_sum[511:384] <= out_part_sum[511:384];
                out_part_sum[639:512] <= out_part_sum[639:512];
                out_part_sum[767:640] <= out_part_sum[767:640];
                out_part_sum[895:768] <= out_part_sum[895:768];
                out_part_sum[1023:896] <= out_part_sum[1023:896];
            end

            'd3: begin
                out_part_sum[127:0] <= out_part_sum[127:0];
                out_part_sum[255:128] <= out_part_sum[255:128];
                out_part_sum[383:256] <= out_part_sum[383:256];
                out_part_sum[511:384] <= par_res_cache;
                out_part_sum[639:512] <= out_part_sum[639:512];
                out_part_sum[767:640] <= out_part_sum[767:640];
                out_part_sum[895:768] <= out_part_sum[895:768];
                out_part_sum[1023:896] <= out_part_sum[1023:896];
            end

            'd4: begin
                out_part_sum[127:0] <= out_part_sum[127:0];
                out_part_sum[255:128] <= out_part_sum[255:128];
                out_part_sum[383:256] <= out_part_sum[383:256];
                out_part_sum[511:384] <= out_part_sum[511:384];
                out_part_sum[639:512] <= par_res_cache;
                out_part_sum[767:640] <= out_part_sum[767:640];
                out_part_sum[895:768] <= out_part_sum[895:768];
                out_part_sum[1023:896] <= out_part_sum[1023:896];
            end

            'd5: begin
                out_part_sum[127:0] <= out_part_sum[127:0];
                out_part_sum[255:128] <= out_part_sum[255:128];
                out_part_sum[383:256] <= out_part_sum[383:256];
                out_part_sum[511:384] <= out_part_sum[511:384];
                out_part_sum[639:512] <= out_part_sum[639:512];
                out_part_sum[767:640] <= par_res_cache;
                out_part_sum[895:768] <= out_part_sum[895:768];
                out_part_sum[1023:896] <= out_part_sum[1023:896];
            end

            'd6: begin
                out_part_sum[127:0] <= out_part_sum[127:0];
                out_part_sum[255:128] <= out_part_sum[255:128];
                out_part_sum[383:256] <= out_part_sum[383:256];
                out_part_sum[511:384] <= out_part_sum[511:384];
                out_part_sum[639:512] <= out_part_sum[639:512];
                out_part_sum[767:640] <= out_part_sum[767:640];
                out_part_sum[895:768] <= par_res_cache;
                out_part_sum[1023:896] <= out_part_sum[1023:896];
            end

            'd7: begin
                out_part_sum[127:0] <= out_part_sum[127:0];
                out_part_sum[255:128] <= out_part_sum[255:128];
                out_part_sum[383:256] <= out_part_sum[383:256];
                out_part_sum[511:384] <= out_part_sum[511:384];
                out_part_sum[639:512] <= out_part_sum[639:512];
                out_part_sum[767:640] <= out_part_sum[767:640];
                out_part_sum[895:768] <= out_part_sum[895:768];
                out_part_sum[1023:896] <= par_res_cache;
            end

            default:
                out_part_sum <= out_part_sum;
            endcase
        end 
        else begin
            out_part_sum <= out_part_sum;            
        end
    end
    else begin
        out_part_sum <= 'd0;
    end
end





endmodule