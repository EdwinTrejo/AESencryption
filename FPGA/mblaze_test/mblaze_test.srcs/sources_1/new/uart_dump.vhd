----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/31/2021 03:37:29 PM
-- Design Name: 
-- Module Name: uart_dump - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.Numeric_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_dump is
    Port ( uart_rtl_baudoutn : in STD_LOGIC;
           uart_rtl_dcdn : out STD_LOGIC := '1';
           uart_rtl_ddis : in STD_LOGIC;
           uart_rtl_dsrn : out STD_LOGIC := '1';
           uart_rtl_dtrn : in STD_LOGIC;
           uart_rtl_out1n : in STD_LOGIC;
           uart_rtl_out2n : in STD_LOGIC;
           uart_rtl_ri : out STD_LOGIC := '1';
           uart_rtl_rxrdyn : in STD_LOGIC;
           uart_rtl_txrdyn : in STD_LOGIC);
end uart_dump;

architecture Behavioral of uart_dump is

begin

end Behavioral;