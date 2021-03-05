/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is the basic submodule of fanout_16_1024_4layers
************************************************ */


module FANOUT_16_64(
    input                           clk,
    input                           rst, 

    input                           data_v,
    input   [15:0]                  in_data,

    input                           halt,

    output                          brdcast_data_v_w,
    output  [63:0]                  brdcast_data_w
);


reg     [63:0]                      brdcast_data;
reg                                 brdcast_data_v;
assign brdcast_data_v_w = brdcast_data_v;
assign brdcast_data_w = brdcast_data;




always @ (posedge clk) begin
    if(!rst) begin
        if(halt) begin
            brdcast_data <= brdcast_data;
            brdcast_data_v <= brdcast_data_v;
        end

        else begin
            if(data_v) begin
                brdcast_data_v <= 'd1;
                brdcast_data <= {in_data, in_data, in_data, in_data};
            end
            else begin
                brdcast_data_v <= 'd0;
                brdcast_data <= brdcast_data;
            end
        end
    end
    else begin
        brdcast_data <= 'd0;
        brdcast_data_v <= 'd0;
    end
end




endmodule
