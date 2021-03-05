-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Mar  5 09:29:43 2021
-- Host        : DESKTOP-P4UPRAE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top A_MATRIX_BRAM -prefix
--               A_MATRIX_BRAM_ A_MATRIX_BRAM_stub.vhdl
-- Design      : A_MATRIX_BRAM
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flvd1517-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity A_MATRIX_BRAM is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 399 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 399 downto 0 )
  );

end A_MATRIX_BRAM;

architecture stub of A_MATRIX_BRAM is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[0:0],addra[6:0],dina[399:0],douta[399:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_2,Vivado 2018.3";
begin
end;
