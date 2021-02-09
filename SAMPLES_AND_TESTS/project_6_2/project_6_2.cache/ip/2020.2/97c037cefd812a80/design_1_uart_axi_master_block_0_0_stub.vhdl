-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Jan 25 21:03:47 2021
-- Host        : DESKTOP-07B1725 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_axi_master_block_0_0_stub.vhdl
-- Design      : design_1_uart_axi_master_block_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    held_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interrupt : in STD_LOGIC;
    s_axi_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arready : in STD_LOGIC;
    s_axi_arvalid : out STD_LOGIC;
    s_axi_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : in STD_LOGIC;
    s_axi_awvalid : out STD_LOGIC;
    s_axi_bready : out STD_LOGIC;
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : in STD_LOGIC;
    s_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : out STD_LOGIC;
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : in STD_LOGIC;
    s_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : in STD_LOGIC;
    s_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : out STD_LOGIC;
    send_button : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,held_data[31:0],interrupt,s_axi_araddr[3:0],s_axi_arready,s_axi_arvalid,s_axi_awaddr[3:0],s_axi_awready,s_axi_awvalid,s_axi_bready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_rdata[31:0],s_axi_rready,s_axi_rresp[1:0],s_axi_rvalid,s_axi_wdata[31:0],s_axi_wready,s_axi_wstrb[3:0],s_axi_wvalid,send_button";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uart_axi_master_block,Vivado 2020.2";
begin
end;
