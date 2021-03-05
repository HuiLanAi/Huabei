/* *********************************************
This file contains a BRAM and is's controller.
BARM stores the whole input feature, 150*25*3*2B = 2250B
When gets start signal, this module works:
prepare a 25x1 vector and corresponding data-valid signal as output
get one "need-data" as reading signal
each time when bram done reading, read-addr will self-adding.
************************************************ */

module GLOBAL_IN_FEA(
    input                               clk, 
    input                               rst,
    input                               start,

    input                               halt,
    
    output    reg                       data_v,
    output    reg[399:0]                in_fea,
    output    reg                       load_done  
);



reg     [8:0]                   raddr;
reg     [3:0]                   state;
wire    [399:0]                 in_fea_w;

// tb
reg     [399:0]                 wdata;
reg                             wea;
reg                             data_v_reg;

parameter RST = 0;
parameter START = 1;
parameter HALT = 2; // when two ping-pong bram is full, turn to HALT
parameter DONE = 3; // when loading done one feature graph, set DONE, which is the end state




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
            if(halt)
                state <= HALT;
            else
                state <= START;
        end

        else if (state == START) begin
            if(load_done)
                state <= DONE;
            else begin
                if(halt)
                    state <= HALT;
                else if(pe_loop != PE_LOOP_UPPER - 1 && 
                        row_loop == ROW_LOOP_UPPER)
                    state <= RST;
                else 
                    state <= START;
            end
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
        if(state == START) begin
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
        if(state == START) begin
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










reg     [5:0]                                   chn_loop;
reg     [7:0]                                   row_loop;
reg     [5:0]                                   col_loop;
reg     [1:0]                                   pe_loop;





// control the order of loading addr
always @ (posedge clk) begin
    if(!rst) begin
        case (state)
        START: begin
            // switch to next line
            if(chn_loop == CHN_LOOP_UPPER && col_loop == COL_LOOP_UPPER - 1)
                raddr <= raddr + 'd1;
            // continue to loading this line, but the main element will be in next column
            else if (chn_loop == CHN_LOOP_UPPER && col_loop != COL_LOOP_UPPER - 1)
                raddr <= raddr - (CHN_LOOP_UPPER - 1);
            // load next channel in same column and same line
            else 
                raddr <= raddr + 'd1;
        end

        RST: begin
            raddr <= 9'b1111_1111_1;
        end

        default: begin
            raddr <= raddr;
        end
        endcase

    end

    else begin
        raddr <= 9'b1111_1111_1;
    end
end


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

        RST: begin
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

        RST: begin
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

        RST: begin
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
        if(pe_loop == PE_LOOP_UPPER - 1 && row_loop == ROW_LOOP_UPPER) begin
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
            in_fea <= in_fea_w;
        end
        else begin
            data_v_reg <= 'd0;
            in_fea <= in_fea;
        end
    end
    else begin
        data_v_reg <= 'd0;
        in_fea <= 'd0;
    end
end






// input feature's storage
// BARM stores the whole input feature, 150*25*3*2B = 2250B
// out-width = 25x2B = 400bit 
// depth = 150*3 = 450
IN_FEA_BRAM in_fea_bram(
    .clka                       (clk),
    .addra                      (raddr),
    .ena                        (~halt),
    .wea                        ('d0),
    .douta                      (in_fea_w)                
);


endmodule