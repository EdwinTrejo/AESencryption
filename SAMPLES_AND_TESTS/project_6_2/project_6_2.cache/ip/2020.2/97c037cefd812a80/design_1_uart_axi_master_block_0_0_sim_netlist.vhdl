-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Jan 25 21:03:47 2021
-- Host        : DESKTOP-07B1725 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_axi_master_block_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_axi_master_block_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master is
  port (
    held_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    interrupt : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master is
  signal \^held_data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  held_data(31 downto 0) <= \^held_data\(31 downto 0);
\held_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(0),
      Q => \^held_data\(0),
      R => '0'
    );
\held_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(10),
      Q => \^held_data\(10),
      R => '0'
    );
\held_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(11),
      Q => \^held_data\(11),
      R => '0'
    );
\held_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(12),
      Q => \^held_data\(12),
      R => '0'
    );
\held_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(13),
      Q => \^held_data\(13),
      R => '0'
    );
\held_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(14),
      Q => \^held_data\(14),
      R => '0'
    );
\held_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(15),
      Q => \^held_data\(15),
      R => '0'
    );
\held_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(16),
      Q => \^held_data\(16),
      R => '0'
    );
\held_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(17),
      Q => \^held_data\(17),
      R => '0'
    );
\held_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(18),
      Q => \^held_data\(18),
      R => '0'
    );
\held_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(19),
      Q => \^held_data\(19),
      R => '0'
    );
\held_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(1),
      Q => \^held_data\(1),
      R => '0'
    );
\held_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(20),
      Q => \^held_data\(20),
      R => '0'
    );
\held_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(21),
      Q => \^held_data\(21),
      R => '0'
    );
\held_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(22),
      Q => \^held_data\(22),
      R => '0'
    );
\held_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(23),
      Q => \^held_data\(23),
      R => '0'
    );
\held_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(24),
      Q => \^held_data\(24),
      R => '0'
    );
\held_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(25),
      Q => \^held_data\(25),
      R => '0'
    );
\held_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(26),
      Q => \^held_data\(26),
      R => '0'
    );
\held_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(27),
      Q => \^held_data\(27),
      R => '0'
    );
\held_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(28),
      Q => \^held_data\(28),
      R => '0'
    );
\held_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(29),
      Q => \^held_data\(29),
      R => '0'
    );
\held_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(2),
      Q => \^held_data\(2),
      R => '0'
    );
\held_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(30),
      Q => \^held_data\(30),
      R => '0'
    );
\held_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(31),
      Q => \^held_data\(31),
      R => '0'
    );
\held_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(3),
      Q => \^held_data\(3),
      R => '0'
    );
\held_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(4),
      Q => \^held_data\(4),
      R => '0'
    );
\held_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(5),
      Q => \^held_data\(5),
      R => '0'
    );
\held_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(6),
      Q => \^held_data\(6),
      R => '0'
    );
\held_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(7),
      Q => \^held_data\(7),
      R => '0'
    );
\held_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(8),
      Q => \^held_data\(8),
      R => '0'
    );
\held_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => interrupt,
      CE => '1',
      D => s_axi_rdata(9),
      Q => \^held_data\(9),
      R => '0'
    );
\s_axi_wdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(0),
      Q => s_axi_wdata(0),
      R => '0'
    );
\s_axi_wdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(10),
      Q => s_axi_wdata(10),
      R => '0'
    );
\s_axi_wdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(11),
      Q => s_axi_wdata(11),
      R => '0'
    );
\s_axi_wdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(12),
      Q => s_axi_wdata(12),
      R => '0'
    );
\s_axi_wdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(13),
      Q => s_axi_wdata(13),
      R => '0'
    );
\s_axi_wdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(14),
      Q => s_axi_wdata(14),
      R => '0'
    );
\s_axi_wdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(15),
      Q => s_axi_wdata(15),
      R => '0'
    );
\s_axi_wdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(16),
      Q => s_axi_wdata(16),
      R => '0'
    );
\s_axi_wdata_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(17),
      Q => s_axi_wdata(17),
      R => '0'
    );
\s_axi_wdata_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(18),
      Q => s_axi_wdata(18),
      R => '0'
    );
\s_axi_wdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(19),
      Q => s_axi_wdata(19),
      R => '0'
    );
\s_axi_wdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(1),
      Q => s_axi_wdata(1),
      R => '0'
    );
\s_axi_wdata_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(20),
      Q => s_axi_wdata(20),
      R => '0'
    );
\s_axi_wdata_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(21),
      Q => s_axi_wdata(21),
      R => '0'
    );
\s_axi_wdata_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(22),
      Q => s_axi_wdata(22),
      R => '0'
    );
\s_axi_wdata_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(23),
      Q => s_axi_wdata(23),
      R => '0'
    );
\s_axi_wdata_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(24),
      Q => s_axi_wdata(24),
      R => '0'
    );
\s_axi_wdata_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(25),
      Q => s_axi_wdata(25),
      R => '0'
    );
\s_axi_wdata_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(26),
      Q => s_axi_wdata(26),
      R => '0'
    );
\s_axi_wdata_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(27),
      Q => s_axi_wdata(27),
      R => '0'
    );
\s_axi_wdata_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(28),
      Q => s_axi_wdata(28),
      R => '0'
    );
\s_axi_wdata_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(29),
      Q => s_axi_wdata(29),
      R => '0'
    );
\s_axi_wdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(2),
      Q => s_axi_wdata(2),
      R => '0'
    );
\s_axi_wdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(30),
      Q => s_axi_wdata(30),
      R => '0'
    );
\s_axi_wdata_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(31),
      Q => s_axi_wdata(31),
      R => '0'
    );
\s_axi_wdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(3),
      Q => s_axi_wdata(3),
      R => '0'
    );
\s_axi_wdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(4),
      Q => s_axi_wdata(4),
      R => '0'
    );
\s_axi_wdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(5),
      Q => s_axi_wdata(5),
      R => '0'
    );
\s_axi_wdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(6),
      Q => s_axi_wdata(6),
      R => '0'
    );
\s_axi_wdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(7),
      Q => s_axi_wdata(7),
      R => '0'
    );
\s_axi_wdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(8),
      Q => s_axi_wdata(8),
      R => '0'
    );
\s_axi_wdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => interrupt,
      CE => '1',
      D => \^held_data\(9),
      Q => s_axi_wdata(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block_uart_axi_master_0_2 is
  port (
    held_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    interrupt : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block_uart_axi_master_0_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block_uart_axi_master_0_2 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master
     port map (
      held_data(31 downto 0) => held_data(31 downto 0),
      interrupt => interrupt,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block is
  port (
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
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block : entity is "uart_axi_master_block.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block is
  signal \<const0>\ : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uart_axi_master_0 : label is "uart_axi_master,Vivado 2020.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF s_axi, CLK_DOMAIN uart_axi_master_block_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:data:1.0 DATA.INTERRUPT DATA";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME DATA.INTERRUPT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of send_button : signal is "xilinx.com:signal:data:1.0 DATA.SEND_BUTTON DATA";
  attribute X_INTERFACE_PARAMETER of send_button : signal is "XIL_INTERFACENAME DATA.SEND_BUTTON, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of held_data : signal is "xilinx.com:signal:data:1.0 DATA.HELD_DATA DATA";
  attribute X_INTERFACE_PARAMETER of held_data : signal is "XIL_INTERFACENAME DATA.HELD_DATA, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_PARAMETER of s_axi_araddr : signal is "XIL_INTERFACENAME s_axi, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN uart_axi_master_block_clk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_araddr(3) <= \<const0>\;
  s_axi_araddr(2) <= \<const0>\;
  s_axi_araddr(1) <= \<const0>\;
  s_axi_araddr(0) <= \<const0>\;
  s_axi_arvalid <= \<const0>\;
  s_axi_awaddr(3) <= \<const0>\;
  s_axi_awaddr(2) <= \<const0>\;
  s_axi_awaddr(1) <= \<const0>\;
  s_axi_awaddr(0) <= \<const0>\;
  s_axi_awvalid <= \<const0>\;
  s_axi_bready <= \<const0>\;
  s_axi_rready <= \<const0>\;
  s_axi_wstrb(3) <= \<const0>\;
  s_axi_wstrb(2) <= \<const0>\;
  s_axi_wstrb(1) <= \<const0>\;
  s_axi_wstrb(0) <= \<const0>\;
  s_axi_wvalid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
uart_axi_master_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block_uart_axi_master_0_2
     port map (
      held_data(31 downto 0) => held_data(31 downto 0),
      interrupt => interrupt,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_uart_axi_master_block_0_0,uart_axi_master_block,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "IPI";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_axi_master_block,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal NLW_inst_s_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "uart_axi_master_block.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_axi, FREQ_TOLERANCE_HZ 0, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:data:1.0 DATA.INTERRUPT DATA";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME DATA.INTERRUPT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_PARAMETER of s_axi_wvalid : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of send_button : signal is "xilinx.com:signal:data:1.0 DATA.SEND_BUTTON DATA";
  attribute X_INTERFACE_PARAMETER of send_button : signal is "XIL_INTERFACENAME DATA.SEND_BUTTON, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of held_data : signal is "xilinx.com:signal:data:1.0 DATA.HELD_DATA DATA";
  attribute X_INTERFACE_PARAMETER of held_data : signal is "XIL_INTERFACENAME DATA.HELD_DATA, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_araddr(3) <= \<const0>\;
  s_axi_araddr(2) <= \<const0>\;
  s_axi_araddr(1) <= \<const0>\;
  s_axi_araddr(0) <= \<const0>\;
  s_axi_arvalid <= \<const1>\;
  s_axi_awaddr(3) <= \<const0>\;
  s_axi_awaddr(2) <= \<const0>\;
  s_axi_awaddr(1) <= \<const0>\;
  s_axi_awaddr(0) <= \<const0>\;
  s_axi_awvalid <= \<const1>\;
  s_axi_bready <= \<const0>\;
  s_axi_rready <= \<const1>\;
  s_axi_wstrb(3) <= \<const1>\;
  s_axi_wstrb(2) <= \<const1>\;
  s_axi_wstrb(1) <= \<const1>\;
  s_axi_wstrb(0) <= \<const1>\;
  s_axi_wvalid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_axi_master_block
     port map (
      clk => '0',
      held_data(31 downto 0) => held_data(31 downto 0),
      interrupt => interrupt,
      s_axi_araddr(3 downto 0) => NLW_inst_s_axi_araddr_UNCONNECTED(3 downto 0),
      s_axi_arready => '0',
      s_axi_arvalid => NLW_inst_s_axi_arvalid_UNCONNECTED,
      s_axi_awaddr(3 downto 0) => NLW_inst_s_axi_awaddr_UNCONNECTED(3 downto 0),
      s_axi_awready => '0',
      s_axi_awvalid => NLW_inst_s_axi_awvalid_UNCONNECTED,
      s_axi_bready => NLW_inst_s_axi_bready_UNCONNECTED,
      s_axi_bresp(1 downto 0) => B"00",
      s_axi_bvalid => '0',
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => NLW_inst_s_axi_rready_UNCONNECTED,
      s_axi_rresp(1 downto 0) => B"00",
      s_axi_rvalid => '0',
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => '0',
      s_axi_wstrb(3 downto 0) => NLW_inst_s_axi_wstrb_UNCONNECTED(3 downto 0),
      s_axi_wvalid => NLW_inst_s_axi_wvalid_UNCONNECTED,
      send_button => '0'
    );
end STRUCTURE;
