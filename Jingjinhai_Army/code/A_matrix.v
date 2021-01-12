/* *********************************************
This file contains a BRAM and is's controller.
BARM stores A matrix's one channel data, 25*25*2B = 1250B
the matrix content is organized in column order
When gets start signal, this module works:
prepare a 25x1 vector and corresponding data-valid signal as output
get one "need-data" as reading signal
each time when bram done reading, read-addr will self-adding.
************************************************ */

module A_MATRIX(
    input                               clk, 
    input                               rst,
    input                               start,

    input                               need_data,
    
    output    reg                       data_v,
    output    reg[399:0]                in_fea  
);



reg     [4:0]                   raddr;
reg     [3:0]                   state;
wire    [399:0]                 in_fea_w;

// tb
reg     [399:0]                 wdata;
reg                             wea;

parameter RST = 0;
parameter START = 1;
parameter READ_DATA_0 = 2;
parameter READ_DATA_1 = 3;
parameter SET_VALID = 4;




// state machine
always @ (posedge clk) begin
    if(!rst) begin
        if(start) begin
            state <= START;
        end
        else if (need_data) begin
            state <= READ_DATA_0;
        end
        else if (state == READ_DATA_0) begin
            state <= READ_DATA_1;
        end
        else if (state == READ_DATA_1) begin
            state <= SET_VALID;
        end
        else if (state == SET_VALID) begin
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




// addr
always @ (posedge clk) begin
    if(!rst) begin
        case (state)
        SET_VALID: begin
            // reset addr
            if(raddr == 'd25 - 'd1)
                raddr <= 'd0;
            else
                raddr <= raddr + 'd1;
        end

        default: begin
            raddr <= raddr;
        end
        endcase

    end

    else begin
        raddr <= 'd0;
    end
end





// data_valid and data
always @ (posedge clk) begin
    if(!rst) begin
        case (state)
        READ_DATA_0: begin
            data_v <= 'd1;
            in_fea <= in_fea_w;
        end

        default: begin
            data_v <= 'd0;
            in_fea <= in_fea;
        end
        endcase
    end

    else begin
        data_v <= 'd0;
        in_fea <= 'd0;
    end
end






// input feature's storage
A_MATRIX_BRAM a_matrix_bram(
    .clka                       (clk),
    .addra                      (raddr),
    .ena                        ('d1),
    .wea                        ('d0),
    .douta                      (in_fea_w)                
);


endmodule