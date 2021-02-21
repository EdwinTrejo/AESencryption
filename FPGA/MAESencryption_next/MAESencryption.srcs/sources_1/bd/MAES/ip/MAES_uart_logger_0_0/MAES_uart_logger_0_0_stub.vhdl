-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Feb 21 16:18:33 2021
-- Host        : MobileSickHorse running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/Xilinx_Projects/AESencryption/FPGA/MAESencryption_next/MAESencryption.srcs/sources_1/bd/MAES/ip/MAES_uart_logger_0_0/MAES_uart_logger_0_0_stub.vhdl
-- Design      : MAES_uart_logger_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MAES_uart_logger_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    UART_TXD_IN : in STD_LOGIC;
    UART_RXD_OUT : out STD_LOGIC;
    tx_msg : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_start : in STD_LOGIC;
    tx_free : out STD_LOGIC;
    rx_msg : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_complete : out STD_LOGIC
  );

end MAES_uart_logger_0_0;

architecture stub of MAES_uart_logger_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,UART_TXD_IN,UART_RXD_OUT,tx_msg[63:0],tx_start,tx_free,rx_msg[63:0],rx_complete";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uart_logger,Vivado 2020.2";
begin
end;
