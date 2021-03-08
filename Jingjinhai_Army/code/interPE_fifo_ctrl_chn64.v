/* *********************************************************** */
/* *********************************************************** */
/* *********************************************************** */
/* ********************   Mig 25, USSA   ********************* */
/* *********************************************************** */
/* *********************************************************** */
/* *********************************************
This module is the fifo-ctrler inside each PE. To be more specific, this 
fifo receives partial sum results and store them in a continuous order. 
When next conv1x1 partial result is available, fifo will pop out stored 
data in same order.

To be noticed that the output data do not need to be regsitered outsied the module.
************************************************ */

module INTERPE_FIFO_CHN64(
    input                                       clk, 
    input                                       rst,
    input     [1023:0]                          part_sum,
    input                                       part_sum_v,
    output    [1023:0]                          history_sum,
    output                                      history_sum_v
);



FIFO4ADD_64CHN fifo(
    .clk                                            (clk),
    .srst                                           (srst),
    .wr_en                                          (part_sum_v),
    .din                                            (part_sum),
    .dout                                           (history_sum),
    .valid                                          (history_sum_v)
);



endmodule
