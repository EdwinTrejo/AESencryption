-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Feb 21 16:18:29 2021
-- Host        : MobileSickHorse running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/Xilinx_Projects/AESencryption/FPGA/MAESencryption_next/MAESencryption.srcs/sources_1/bd/MAES/ip/MAES_MAES_MANAGER_0_0/MAES_MAES_MANAGER_0_0_sim_netlist.vhdl
-- Design      : MAES_MAES_MANAGER_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MAES_MAES_MANAGER_0_0 is
  port (
    BTNC : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 2 downto 0 );
    UART_RXD_IN : in STD_LOGIC;
    tx_start : in STD_LOGIC;
    UART_TXD_IN : in STD_LOGIC;
    UART_TXD_OUT : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MAES_MAES_MANAGER_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MAES_MAES_MANAGER_0_0 : entity is "MAES_MAES_MANAGER_0_0,MAES_MANAGER,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of MAES_MAES_MANAGER_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of MAES_MAES_MANAGER_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of MAES_MAES_MANAGER_0_0 : entity is "MAES_MANAGER,Vivado 2020.2";
end MAES_MAES_MANAGER_0_0;

architecture STRUCTURE of MAES_MAES_MANAGER_0_0 is
  signal \^led\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^uart_rxd_in\ : STD_LOGIC;
  signal \^tx_start\ : STD_LOGIC;
begin
  LED(2) <= \^tx_start\;
  LED(1) <= \^led\(1);
  LED(0) <= \^uart_rxd_in\;
  \^tx_start\ <= tx_start;
  \^uart_rxd_in\ <= UART_RXD_IN;
\LED[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => UART_TXD_IN,
      O => \^led\(1)
    );
UART_TXD_OUT_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => BTNC,
      I1 => UART_TXD_IN,
      O => UART_TXD_OUT
    );
end STRUCTURE;
