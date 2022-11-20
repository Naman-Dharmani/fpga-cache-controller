-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sun Nov 20 00:35:14 2022
-- Host        : kite running 64-bit CachyOS
-- Command     : write_vhdl -force -mode synth_stub -rename_top bram_blk_mem_gen_0_0 -prefix
--               bram_blk_mem_gen_0_0_ bram_blk_mem_gen_0_0_stub.vhdl
-- Design      : bram_blk_mem_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bram_blk_mem_gen_0_0 is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 32 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 32 downto 0 )
  );

end bram_blk_mem_gen_0_0;

architecture stub of bram_blk_mem_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[0:0],addra[12:0],dina[32:0],douta[32:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_5,Vivado 2022.1";
begin
end;
