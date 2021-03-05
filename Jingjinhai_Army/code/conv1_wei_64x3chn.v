/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is for the storage of conv1 weight with the size of 64 o_c x 3 in_c.

Anyone who import this module do not need to keep output stored.

The data is stored in distributed RAM IP core, and the loading operation is under
a certain order.
************************************************ */


module CONV1_WEI_63X3(
    input                                          clk,
    input                                          rst,
    input                                          need_data,
    input                                          halt,

    output  reg [1023:0]                           conv1_wei,
    output  reg                                    conv1_wei_v
);





reg     [3:0]                                  raddr;
reg     [2:0]                                  working_flag;





always @ (posedge clk) begin
    if(!rst) begin
        if(!halt) begin
            if(need_data) begin
                working_flag <= (working_flag << 1) + 'd1;
            end
            else begin
                working_flag <= working_flag << 1;
            end
        end
        else begin
            working_flag <= working_flag;
        end

    end
    else begin
        working_flag <= 'd0;
    end
end



always @ (posedge clk) begin
    if(!rst) begin
        if(!halt) begin
            if(need_data) begin
                case(raddr)
                'b11:
                    raddr <= 'b00;
                'b00:
                    raddr <= 'b01;
                'b01:
                    raddr <= 'b10;
                'b10:
                    raddr <= 'b00;
                endcase
            end
            else begin
                raddr <= raddr;
            end
        end
        else begin
            raddr <= raddr;
        end
    end
    else begin
        raddr <= 'b11;
    end
end



always @ (posedge clk) begin
    if(!rst) begin
        if(working_flag[0]) begin
            conv1_wei_v <= 'd1;
            conv1_wei <= {wei_data_p1, wei_data_p0};
        end
        else begin
            conv1_wei <= conv1_wei;
            conv1_wei_v <= 'd0;
        end
    end
    else begin
        conv1_wei <= 'd0;
        conv1_wei_v <= 'd0;
    end
end





wire    [511:0]                                 wei_data_p0;
wire    [511:0]                                 wei_data_p1;




CONV1_WEI_64BX3X3 conv1_wei_64Bx3_p0(.a(raddr), .spo(wei_data_p0));
CONV1_WEI_64BX3X3 conv1_wei_64Bx3_p1(.a(raddr), .spo(wei_data_p1));





endmodule
