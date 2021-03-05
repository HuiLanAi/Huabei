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

    input                               en_mxbram,
    input                               halt,
    
    output    reg                       data_v,
    output    reg[399:0]                matrix_para,
    output    reg                       load_done
);



reg     [6:0]                   raddr;
reg     [3:0]                   state;
wire    [399:0]                 matrix_para_w;

// tb
reg     [399:0]                 wdata;
reg                             wea;
reg                             data_v_reg;


parameter RST = 0;
parameter START = 1;
parameter DISABLE = 2; // when conv1 PE do not need matrix computation before conv1x1
parameter DONE = 3; // when loading done all data in order, which is the end state
parameter HALT = 4;
parameter NEXT_MX = 5;



parameter CHN_LOOP_UPPER = 3; 
parameter COL_LOOP_UPPER = 25; 
parameter ROW_LOOP_UPPER = 150; 
parameter PE_LOOP_UPPER = 4; 




reg     [2:0]                    working_flag;
reg                              data_v;






// state machine
always @ (posedge clk) begin
    if(!rst) begin
        if(state == RST) begin
            if(start)
                state <= START;
            else 
                state <= RST;
        end

        else if (state == HALT) begin
            if(!en_mxbram)
                state <= DISABLE;
            else if (!halt) begin
                if (col_loop == COL_LOOP_UPPER) begin
                    state <= NEXT_MX;
                end
                else begin
                    state <= START;
                end
            end
            else
                state <= HALT;
        end

        else if (state == START) begin
            if(load_done) begin
                state <= DONE;
            end
            else begin
                if(!en_mxbram)
                    state <= DISABLE;
                else if (halt) begin
                    state <= HALT;
                end
                else if (col_loop == COL_LOOP_UPPER) begin
                    state <= NEXT_MX;
                end
                else begin
                    state <= START;
                end
            end
        end

        else if (state == DISABLE) begin
            if(en_mxbram)
                state <= START;
            else if (halt)
                state <= HALT;
            else
                state <= DISABLE;
        end

        else if (state == NEXT_MX) begin
            if(en_mxbram)
                state <= START;
            else if (halt)
                state <= HALT;
            else
                state <= DISABLE;
        end

        else begin
            state <= RST;
        end
    end
    else begin
        state <= RST;
    end
end



// control shifting working flag
always @ (posedge clk) begin
    if(!rst) begin
        if(state == START || state == NEXT_MX) begin
            working_flag <= (working_flag << 1) + 'b1;
        end
        else if (state == HALT) begin
            working_flag <= working_flag;
        end
        else begin
            working_flag <= 'd0;
        end
    end
    else begin
        working_flag <= 'd0;
    end
end




// data valid signal
always @ (state or working_flag) begin
    if(!rst) begin
        if(state == START || state == NEXT_MX) begin
            data_v <= working_flag[1];
        end
        else if (state == HALT) begin
            data_v <= data_v;
        end
        else begin
            data_v <= 'd0;
        end
    end
    else begin
        data_v <= 'd0;
    end
end






// control the order of loading addr
always @ (posedge clk) begin
    if(!rst) begin
        case (state)
        START: begin
            // when feature does not change column, raddr stays unchanged
            if(chn_loop != CHN_LOOP_UPPER)
                raddr <= raddr;
            // continue to loading this line, but the main element will be in next column
            else if (chn_loop == CHN_LOOP_UPPER && col_loop != COL_LOOP_UPPER - 1)
                raddr <= raddr + 'd1;
            // change line
            else if (chn_loop == CHN_LOOP_UPPER && col_loop == COL_LOOP_UPPER - 1) 
                raddr <= 'd0;
        end

        NEXT_MX: begin
            raddr <= raddr + 'd1;
        end

        RST: begin
            // raddr <= 9'b1111_1111_1;
            raddr <= 'd0;
        end

        default: begin
            raddr <= raddr;
        end
        endcase

    end

    else begin
        // raddr <= 9'b1111_1111_1;
        raddr <= 'd0;
    end
end







reg     [5:0]                                   chn_loop;
reg     [7:0]                                   row_loop;
reg     [5:0]                                   col_loop;
reg     [2:0]                                   pe_loop;





// control intra-channel loop counter
always @ (posedge clk) begin
    if(!rst) begin
        case (state)
        START: begin
            if(chn_loop == CHN_LOOP_UPPER) begin
                chn_loop <= 'd1;
            end
            else begin
                chn_loop <= chn_loop + 'd1;
            end
        end

        NEXT_MX: begin
            chn_loop <= 'd0;
        end

        DISABLE: begin
            chn_loop <= 'd0;
        end

        default: begin
            chn_loop <= chn_loop;
        end
        endcase

    end

    else begin
        chn_loop <= 'd0;
    end
end



// control intra-column loop counter
always @ (posedge clk) begin
    if(!rst) begin
        case (state)
        START: begin
            if(col_loop == COL_LOOP_UPPER) begin
                col_loop <= 'd1;
            end
            else if(chn_loop == CHN_LOOP_UPPER) begin
                col_loop <= col_loop + 'd1;
            end
            else begin
                col_loop <= col_loop;
            end
        end

        DISABLE: begin
            col_loop <= 'd0;
        end

        NEXT_MX: begin
            col_loop <= 'd0;
        end

        default: begin
            col_loop <= col_loop;
        end
        endcase

    end
    else begin
        col_loop <= 'd0;
    end
end


// control intra-row loop counter
always @ (posedge clk) begin
    if(!rst) begin
        case (state)
        START: begin
            if(row_loop == ROW_LOOP_UPPER) begin
                row_loop <= 'd1;
            end
            else if(col_loop == COL_LOOP_UPPER) begin
                row_loop <= row_loop + 'd1;
            end
            else begin
                row_loop <= row_loop;
            end
        end

        DISABLE: begin
            row_loop <= 'd0;
        end

        NEXT_MX: begin
            row_loop <= 'd0;
        end

        default: begin
            row_loop <= row_loop;
        end
        endcase

    end
    else begin
        row_loop <= 'd0;
    end
end



// control pe loop counter
always @ (posedge clk) begin
    if(!rst) begin
        case (state)
        START: begin
            if(row_loop == ROW_LOOP_UPPER) begin
                pe_loop <= pe_loop + 'd1;
            end
            else begin
                pe_loop <= pe_loop;
            end
        end

        default: begin
            pe_loop <= pe_loop;
        end
        endcase

    end
    else begin
        pe_loop <= 'd0;
    end
end





// when three layer's loop all done working, set load_done
always @ (posedge clk) begin
    if(rst) begin
        if(col_loop == COL_LOOP_UPPER &&
            row_loop == ROW_LOOP_UPPER &&
            chn_loop == CHN_LOOP_UPPER) begin
           load_done <= 'd1;     
        end
        else begin
            load_done <= 'd0;
        end
    end
    else begin
        load_done <= 'd0;
    end
end




always @ (posedge clk) begin
    if(!rst) begin
        if(data_v) begin
            data_v_reg <= 'd1;
            matrix_para <= matrix_para_w;
        end
        else begin
            data_v_reg <= 'd0;
            matrix_para <= matrix_para;
        end
    end
    else begin
        data_v_reg <= 'd0;
        matrix_para <= 'd0;
    end
end





// input feature's storage
// BARM stores the three different A matrix, 25*25*3*2B = 3750B
// out-width = 25x2B = 400bit 
// depth = 25*3 = 75
A_MATRIX_BRAM a_matrix_bram(
    .clka                       (clk),
    .addra                      (raddr),
    .ena                        (~halt && en_mxbram),
    .wea                        ('d0),
    .douta                      (matrix_para_w)                
);


endmodule