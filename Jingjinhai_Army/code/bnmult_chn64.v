/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is BN-MULT function part with #channel = 64. 

Anyone who uses this module do not need to keep data stored in reg.

One BN_MULT parameter storage and a parallel mult array consist this module.
This module will break 1024bit input into several parts and mult array 
will process all these parts one by one. When all input is done computing, 
all 1024bit result will be send out at one time.
************************************************ */

module BNMULT_CHN64(
    input                                           clk,
    input                                           rst,
    input   [1023:0]                                bn_add_res_w,
    input                                           bn_add_res_v_w,
    output  [1023:0]                                bn_mult_res_w,
    output                                          bn_mult_res_v_w
);


reg     [1023:0]                                    bn_mult_res;
reg                                                 bn_mult_res_v;
reg     [2:0]                                       bn_compute_cnter;
reg     [255:0]                                     in_data_a;     
reg                                                 in_data_v;    
reg     [5:0]                                       working_flag;
reg     [5:0]                                       raddr;


assign bn_mult_res_w = bn_mult_res;
assign bn_mult_res_v_w = bn_mult_res_v;




// shift working flag
always @ (posedge clk) begin
    if(!rst) begin
        case (working_flag)
        'b000_000: begin
            if(bn_add_res_v_w) begin
                working_flag <= 'd1;
            end
            else begin
                working_flag <= working_flag;
            end
        end

        'b000_001: begin
            working_flag <= 'b000_011;
        end

        'b000_011: begin
            working_flag <= 'b000_111;
        end

        'b000_111: begin
            working_flag <= 'b001_111;
        end

        'b001_111: begin
            working_flag <= 'b011_110;
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





// in data choose
always @ (working_flag) begin
    if(!rst) begin
        case(working_flag)
        'b000_001: begin
            in_data_a = bn_add_res_w[255:0];
        end

        'b000_011: begin
            in_data_a = bn_add_res_w[511:256];
        end

        'b000_111: begin
            in_data_a = bn_add_res_w[767:512];
        end

        'b001_111: begin
            in_data_a = bn_add_res_w[1023:768];
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



// in data valid signal
always @ (working_flag) begin
    if(!rst) begin
        case(working_flag)
        'b000_001: begin
            in_data_v = 'd1;
        end

        'b000_011: begin
            in_data_v = 'd1;
        end

        'b000_111: begin
            in_data_v = 'd1;
        end

        'b001_111: begin
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



// bn_parameter loading addr control
always @ (posedge clk) begin
    if(!rst) begin
        case(working_flag)
        'b000_001: begin
            raddr = 6'b000_001;
        end

        'b000_011: begin
            raddr = 6'b000_010;
        end

        'b000_111: begin
            raddr = 6'b000_011;
        end

        'b001_111: begin
            raddr = 6'b000_000;
        end

        default: begin
            raddr = 6'b000_000;
        end

        endcase
    end
    else begin
        raddr = 6'b000_000;
    end
end




// 1clk's cache
reg     [255:0]                     par_res_cache;
always @ (posedge clk) begin
    if(!rst) begin
        par_res_cache <= bn_par_res_w;
    end
    else begin
        par_res_cache <= 'd0;
    end
end






// part result's store
always @ (posedge clk) begin
    if(!rst) begin
        if(bn_par_res_v_w) begin
            case (bn_compute_cnter)
            'd0: begin
                bn_mult_res[255:0] <= par_res_cache;
                bn_mult_res[511:256] <= bn_mult_res[511:256];
                bn_mult_res[767:512] <= bn_mult_res[767:512];
                bn_mult_res[1023:768] <= bn_mult_res[1023:768];
            end

            'd1: begin
                bn_mult_res[255:0] <= bn_mult_res[255:0];
                bn_mult_res[511:256] <= par_res_cache;
                bn_mult_res[767:512] <= bn_mult_res[767:512];
                bn_mult_res[1023:768] <= bn_mult_res[1023:768];
            end

            'd2: begin
                bn_mult_res[255:0] <= bn_mult_res[255:0];
                bn_mult_res[511:256] <= bn_mult_res[511:256];
                bn_mult_res[767:512] <= par_res_cache;
                bn_mult_res[1023:768] <= bn_mult_res[1023:768];
            end

            'd3: begin
                bn_mult_res[255:0] <= bn_mult_res[255:0];
                bn_mult_res[511:256] <= bn_mult_res[511:256];
                bn_mult_res[767:512] <= bn_mult_res[767:512];
                bn_mult_res[1023:768] <= par_res_cache;
            end

            default:
                bn_mult_res <= bn_mult_res;
            endcase
        end 
        else begin
            bn_mult_res <= bn_mult_res;            
        end
    end
    else begin
        bn_mult_res <= 'd0;
    end
end






// compute times
always @ (posedge clk) begin
    if(!rst) begin
        if(bn_par_res_v_w) begin
            if(bn_compute_cnter < 'd4) begin
                bn_compute_cnter <= bn_compute_cnter + 'd1;
            end
            else begin
                bn_compute_cnter <= 'd0;
            end
        end
        else begin
            if(bn_compute_cnter == 'd4)
                bn_compute_cnter <= 'd0;
            else
                bn_compute_cnter <= bn_compute_cnter;
        end
    end
    else begin
        bn_compute_cnter <= 'd0;
    end
end





// bn_mult_res_v: when all partial result is done computing
always @ (posedge clk) begin
    if(!rst) begin
        if(bn_compute_cnter == 'd3) begin
            bn_mult_res_v <= 'd1;
        end
        else begin
            bn_mult_res_v <= 'd0;
        end
    end
    else begin
        bn_mult_res_v <= 'd0;
    end
end









wire    [255:0]                     in_data_b;
wire    [255:0]                     bn_par_res_w;
wire                                bn_par_res_v_w;


PARAMULT_16_16 paramult_16x16(
    .clk                        (clk),
    .rst                        (rst),
    .in_veca_data               (in_data_a),
    .in_vecb_data               (in_data_b),
    .data_v                     (in_data_v),
    .mult_res_w                 (bn_par_res_w),
    .mult_res_v_w               (bn_par_res_v_w)
);


BN_PARA_64CHN bn_para_bram(
    .a                          (raddr),
    .spo                        (in_data_b)
);





endmodule