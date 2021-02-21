-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Feb 21 16:18:33 2021
-- Host        : MobileSickHorse running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/Xilinx_Projects/AESencryption/FPGA/MAESencryption_next/MAESencryption.srcs/sources_1/bd/MAES/ip/MAES_uart_logger_0_0/MAES_uart_logger_0_0_sim_netlist.vhdl
-- Design      : MAES_uart_logger_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MAES_uart_logger_0_0_uart is
  port (
    UART_RXD_OUT : out STD_LOGIC;
    wait_for_is_transmitting_reg : out STD_LOGIC;
    wait_for_is_transmitting_reg_0 : out STD_LOGIC;
    wait_for_is_transmitting_reg_1 : out STD_LOGIC;
    \FSM_sequential_sm_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_sm_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_sm_state_reg[2]_0\ : out STD_LOGIC;
    uart_state_reg : out STD_LOGIC;
    \recv_state_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    tx_start : in STD_LOGIC;
    uart_state : in STD_LOGIC;
    \tx_bits_remaining_reg[3]_0\ : in STD_LOGIC;
    \FSM_onehot_tx_count_state_reg[1]\ : in STD_LOGIC;
    \FSM_onehot_tx_count_state_reg[1]_0\ : in STD_LOGIC;
    tx_count_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_count : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \next_rx_count_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_next_sm_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_next_sm_state_reg[0]_0\ : in STD_LOGIC;
    UART_TXD_IN : in STD_LOGIC;
    \tx_data_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MAES_uart_logger_0_0_uart : entity is "uart";
end MAES_uart_logger_0_0_uart;

architecture STRUCTURE of MAES_uart_logger_0_0_uart is
  signal \FSM_sequential_next_sm_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_sm_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_sm_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \^uart_rxd_out\ : STD_LOGIC;
  signal recv_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \recv_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \^recv_state_reg[0]_0\ : STD_LOGIC;
  signal \recv_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \recv_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \recv_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_bits_remaining[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_bits_remaining[1]_i_1_n_0\ : STD_LOGIC;
  signal \rx_bits_remaining[2]_i_1_n_0\ : STD_LOGIC;
  signal \rx_bits_remaining[3]_i_1_n_0\ : STD_LOGIC;
  signal \rx_bits_remaining[3]_i_2_n_0\ : STD_LOGIC;
  signal \rx_bits_remaining_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_bits_remaining_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_bits_remaining_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_bits_remaining_reg_n_0_[3]\ : STD_LOGIC;
  signal rx_clk_divider : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \rx_clk_divider[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[10]_i_1_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[10]_i_2_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[10]_i_3_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[10]_i_4_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[10]_i_5_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[10]_i_6_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[10]_i_7_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[1]_i_1_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[2]_i_1_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[3]_i_1_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[4]_i_1_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[5]_i_1_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[5]_i_2_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[6]_i_1_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[7]_i_1_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[7]_i_2_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[7]_i_3_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[8]_i_1_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[9]_i_1_n_0\ : STD_LOGIC;
  signal \rx_clk_divider[9]_i_2_n_0\ : STD_LOGIC;
  signal rx_countdown : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \rx_countdown[2]_i_2_n_0\ : STD_LOGIC;
  signal \rx_countdown[2]_i_3_n_0\ : STD_LOGIC;
  signal \rx_countdown[2]_i_4_n_0\ : STD_LOGIC;
  signal \rx_countdown[4]_i_2_n_0\ : STD_LOGIC;
  signal \rx_countdown[4]_i_3_n_0\ : STD_LOGIC;
  signal \rx_countdown[4]_i_4_n_0\ : STD_LOGIC;
  signal \rx_countdown[5]_i_1_n_0\ : STD_LOGIC;
  signal \rx_countdown[5]_i_3_n_0\ : STD_LOGIC;
  signal rx_countdown_0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \tx_bits_remaining[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_bits_remaining[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_bits_remaining[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_bits_remaining[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_bits_remaining[3]_i_2_n_0\ : STD_LOGIC;
  signal \tx_bits_remaining[3]_i_3_n_0\ : STD_LOGIC;
  signal \tx_bits_remaining_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_bits_remaining_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_bits_remaining_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_bits_remaining_reg_n_0_[3]\ : STD_LOGIC;
  signal tx_clk_divider : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \tx_clk_divider[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[10]_i_2_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[10]_i_3_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[9]_i_1_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[9]_i_2_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[9]_i_3_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[9]_i_4_n_0\ : STD_LOGIC;
  signal \tx_clk_divider[9]_i_5_n_0\ : STD_LOGIC;
  signal tx_countdown : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \tx_countdown[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_countdown[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_countdown[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_countdown[2]_i_2_n_0\ : STD_LOGIC;
  signal \tx_countdown[2]_i_3_n_0\ : STD_LOGIC;
  signal \tx_countdown[2]_i_4_n_0\ : STD_LOGIC;
  signal \tx_countdown[2]_i_5_n_0\ : STD_LOGIC;
  signal \tx_countdown[2]_i_6_n_0\ : STD_LOGIC;
  signal \tx_countdown[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_countdown[3]_i_2_n_0\ : STD_LOGIC;
  signal \tx_countdown[3]_i_3_n_0\ : STD_LOGIC;
  signal \tx_countdown[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_countdown[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_countdown[5]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[7]\ : STD_LOGIC;
  signal tx_out_i_1_n_0 : STD_LOGIC;
  signal tx_out_i_2_n_0 : STD_LOGIC;
  signal tx_out_i_3_n_0 : STD_LOGIC;
  signal tx_out_i_4_n_0 : STD_LOGIC;
  signal tx_out_i_5_n_0 : STD_LOGIC;
  signal tx_out_i_6_n_0 : STD_LOGIC;
  signal tx_out_i_7_n_0 : STD_LOGIC;
  signal tx_out_i_8_n_0 : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tx_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_tx_count_state[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_next_sm_state[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_next_sm_state[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \recv_state[0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \recv_state[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \recv_state[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rx_bits_remaining[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rx_bits_remaining[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rx_bits_remaining[3]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rx_clk_divider[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rx_clk_divider[10]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rx_clk_divider[10]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rx_clk_divider[10]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rx_clk_divider[10]_i_7\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rx_clk_divider[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rx_clk_divider[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rx_clk_divider[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rx_clk_divider[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rx_clk_divider[7]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rx_clk_divider[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rx_clk_divider[9]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rx_count[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rx_countdown[4]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tx_bits_remaining[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tx_bits_remaining[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tx_bits_remaining[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tx_bits_remaining[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tx_clk_divider[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tx_clk_divider[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tx_clk_divider[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tx_clk_divider[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tx_clk_divider[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_clk_divider[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tx_clk_divider[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_clk_divider[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_clk_divider[9]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_clk_divider[9]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tx_countdown[2]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tx_countdown[2]_i_6\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tx_countdown[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tx_countdown[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tx_data[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tx_data[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tx_data[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tx_data[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tx_data[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tx_data[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tx_data[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tx_data[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of tx_out_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of tx_out_i_7 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of tx_out_i_8 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tx_state[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_state[1]_i_1\ : label is "soft_lutpair4";
begin
  UART_RXD_OUT <= \^uart_rxd_out\;
  \recv_state_reg[0]_0\ <= \^recv_state_reg[0]_0\;
\FSM_onehot_tx_count_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000444C"
    )
        port map (
      I0 => \FSM_onehot_tx_count_state_reg[1]\,
      I1 => \FSM_onehot_tx_count_state_reg[1]_0\,
      I2 => \tx_state_reg_n_0_[1]\,
      I3 => \tx_state_reg_n_0_[0]\,
      I4 => tx_count_state(0),
      I5 => tx_count,
      O => wait_for_is_transmitting_reg_0
    );
\FSM_onehot_tx_count_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDCCCCFFFD8880"
    )
        port map (
      I0 => \FSM_onehot_tx_count_state_reg[1]\,
      I1 => \FSM_onehot_tx_count_state_reg[1]_0\,
      I2 => \tx_state_reg_n_0_[1]\,
      I3 => \tx_state_reg_n_0_[0]\,
      I4 => tx_count_state(0),
      I5 => tx_count,
      O => wait_for_is_transmitting_reg
    );
\FSM_onehot_tx_count_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \FSM_onehot_tx_count_state_reg[1]\,
      I1 => \tx_state_reg_n_0_[1]\,
      I2 => \tx_state_reg_n_0_[0]\,
      I3 => tx_count_state(0),
      O => wait_for_is_transmitting_reg_1
    );
\FSM_sequential_next_sm_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => \FSM_sequential_next_sm_state[0]_i_2_n_0\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \FSM_sequential_next_sm_state[2]_i_2_n_0\,
      I5 => D(0),
      O => \FSM_sequential_sm_state_reg[2]_0\
    );
\FSM_sequential_next_sm_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4555"
    )
        port map (
      I0 => tx_start,
      I1 => \recv_state_reg_n_0_[0]\,
      I2 => \recv_state_reg_n_0_[2]\,
      I3 => \recv_state_reg_n_0_[1]\,
      I4 => uart_state,
      O => \FSM_sequential_next_sm_state[0]_i_2_n_0\
    );
\FSM_sequential_next_sm_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011FFFF10110000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \FSM_sequential_next_sm_state[1]_i_2_n_0\,
      I4 => \FSM_sequential_next_sm_state[2]_i_2_n_0\,
      I5 => D(1),
      O => \FSM_sequential_sm_state_reg[1]\
    );
\FSM_sequential_next_sm_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => tx_start,
      I1 => \recv_state_reg_n_0_[0]\,
      I2 => \recv_state_reg_n_0_[2]\,
      I3 => \recv_state_reg_n_0_[1]\,
      I4 => uart_state,
      O => \FSM_sequential_next_sm_state[1]_i_2_n_0\
    );
\FSM_sequential_next_sm_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \FSM_sequential_next_sm_state[2]_i_2_n_0\,
      I4 => D(2),
      O => \FSM_sequential_sm_state_reg[2]\
    );
\FSM_sequential_next_sm_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050707050557070"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => \FSM_sequential_next_sm_state_reg[0]\,
      I3 => \^recv_state_reg[0]_0\,
      I4 => Q(1),
      I5 => \FSM_sequential_next_sm_state_reg[0]_0\,
      O => \FSM_sequential_next_sm_state[2]_i_2_n_0\
    );
\next_rx_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004400000F"
    )
        port map (
      I0 => \^recv_state_reg[0]_0\,
      I1 => \next_rx_count_reg[0]\,
      I2 => \FSM_sequential_next_sm_state[1]_i_2_n_0\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => E(0)
    );
\recv_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0000038F8F03F"
    )
        port map (
      I0 => \recv_state[0]_i_2_n_0\,
      I1 => \rx_countdown[2]_i_2_n_0\,
      I2 => \recv_state_reg_n_0_[0]\,
      I3 => UART_TXD_IN,
      I4 => \recv_state_reg_n_0_[1]\,
      I5 => \recv_state_reg_n_0_[2]\,
      O => recv_state(0)
    );
\recv_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \rx_bits_remaining_reg_n_0_[3]\,
      I1 => \rx_bits_remaining_reg_n_0_[2]\,
      I2 => \rx_bits_remaining_reg_n_0_[0]\,
      I3 => \rx_bits_remaining_reg_n_0_[1]\,
      O => \recv_state[0]_i_2_n_0\
    );
\recv_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C868C8C"
    )
        port map (
      I0 => \recv_state_reg_n_0_[0]\,
      I1 => \recv_state_reg_n_0_[1]\,
      I2 => \recv_state_reg_n_0_[2]\,
      I3 => UART_TXD_IN,
      I4 => \rx_countdown[2]_i_2_n_0\,
      O => recv_state(1)
    );
\recv_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAB8880"
    )
        port map (
      I0 => \recv_state_reg_n_0_[0]\,
      I1 => \rx_countdown[2]_i_2_n_0\,
      I2 => \recv_state_reg_n_0_[1]\,
      I3 => UART_TXD_IN,
      I4 => \recv_state_reg_n_0_[2]\,
      O => recv_state(2)
    );
\recv_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => recv_state(0),
      Q => \recv_state_reg_n_0_[0]\,
      R => '0'
    );
\recv_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => recv_state(1),
      Q => \recv_state_reg_n_0_[1]\,
      R => '0'
    );
\recv_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => recv_state(2),
      Q => \recv_state_reg_n_0_[2]\,
      R => '0'
    );
\rx_bits_remaining[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \recv_state_reg_n_0_[1]\,
      I1 => \rx_bits_remaining_reg_n_0_[0]\,
      O => \rx_bits_remaining[0]_i_1_n_0\
    );
\rx_bits_remaining[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \recv_state_reg_n_0_[1]\,
      I1 => \rx_bits_remaining_reg_n_0_[0]\,
      I2 => \rx_bits_remaining_reg_n_0_[1]\,
      O => \rx_bits_remaining[1]_i_1_n_0\
    );
\rx_bits_remaining[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E100"
    )
        port map (
      I0 => \rx_bits_remaining_reg_n_0_[1]\,
      I1 => \rx_bits_remaining_reg_n_0_[0]\,
      I2 => \rx_bits_remaining_reg_n_0_[2]\,
      I3 => \recv_state_reg_n_0_[1]\,
      O => \rx_bits_remaining[2]_i_1_n_0\
    );
\rx_bits_remaining[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03040000"
    )
        port map (
      I0 => UART_TXD_IN,
      I1 => \recv_state_reg_n_0_[0]\,
      I2 => \recv_state_reg_n_0_[2]\,
      I3 => \recv_state_reg_n_0_[1]\,
      I4 => \rx_countdown[2]_i_2_n_0\,
      O => \rx_bits_remaining[3]_i_1_n_0\
    );
\rx_bits_remaining[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAB"
    )
        port map (
      I0 => \recv_state_reg_n_0_[0]\,
      I1 => \rx_bits_remaining_reg_n_0_[0]\,
      I2 => \rx_bits_remaining_reg_n_0_[1]\,
      I3 => \rx_bits_remaining_reg_n_0_[2]\,
      I4 => \rx_bits_remaining_reg_n_0_[3]\,
      O => \rx_bits_remaining[3]_i_2_n_0\
    );
\rx_bits_remaining_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_bits_remaining[3]_i_1_n_0\,
      D => \rx_bits_remaining[0]_i_1_n_0\,
      Q => \rx_bits_remaining_reg_n_0_[0]\,
      R => '0'
    );
\rx_bits_remaining_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_bits_remaining[3]_i_1_n_0\,
      D => \rx_bits_remaining[1]_i_1_n_0\,
      Q => \rx_bits_remaining_reg_n_0_[1]\,
      R => '0'
    );
\rx_bits_remaining_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_bits_remaining[3]_i_1_n_0\,
      D => \rx_bits_remaining[2]_i_1_n_0\,
      Q => \rx_bits_remaining_reg_n_0_[2]\,
      R => '0'
    );
\rx_bits_remaining_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_bits_remaining[3]_i_1_n_0\,
      D => \rx_bits_remaining[3]_i_2_n_0\,
      Q => \rx_bits_remaining_reg_n_0_[3]\,
      R => '0'
    );
\rx_clk_divider[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_clk_divider(0),
      O => \rx_clk_divider[0]_i_1_n_0\
    );
\rx_clk_divider[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FE01"
    )
        port map (
      I0 => \rx_clk_divider[10]_i_2_n_0\,
      I1 => rx_clk_divider(8),
      I2 => rx_clk_divider(9),
      I3 => rx_clk_divider(10),
      I4 => \rx_clk_divider[10]_i_3_n_0\,
      I5 => \rx_clk_divider[10]_i_4_n_0\,
      O => \rx_clk_divider[10]_i_1_n_0\
    );
\rx_clk_divider[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rx_clk_divider(7),
      I1 => \rx_clk_divider[7]_i_3_n_0\,
      I2 => rx_clk_divider(6),
      O => \rx_clk_divider[10]_i_2_n_0\
    );
\rx_clk_divider[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \recv_state_reg_n_0_[1]\,
      I1 => UART_TXD_IN,
      I2 => \recv_state_reg_n_0_[0]\,
      I3 => \recv_state_reg_n_0_[2]\,
      O => \rx_clk_divider[10]_i_3_n_0\
    );
\rx_clk_divider[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000041"
    )
        port map (
      I0 => \rx_clk_divider[9]_i_2_n_0\,
      I1 => \rx_clk_divider[10]_i_5_n_0\,
      I2 => rx_clk_divider(5),
      I3 => \rx_clk_divider[10]_i_6_n_0\,
      I4 => rx_clk_divider(7),
      O => \rx_clk_divider[10]_i_4_n_0\
    );
\rx_clk_divider[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => rx_clk_divider(2),
      I1 => rx_clk_divider(1),
      I2 => rx_clk_divider(0),
      I3 => rx_clk_divider(3),
      I4 => rx_clk_divider(4),
      O => \rx_clk_divider[10]_i_5_n_0\
    );
\rx_clk_divider[10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => rx_clk_divider(4),
      I1 => \rx_clk_divider[10]_i_7_n_0\,
      I2 => rx_clk_divider(3),
      I3 => rx_clk_divider(1),
      I4 => rx_clk_divider(0),
      O => \rx_clk_divider[10]_i_6_n_0\
    );
\rx_clk_divider[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_clk_divider(8),
      I1 => rx_clk_divider(6),
      I2 => rx_clk_divider(10),
      I3 => rx_clk_divider(2),
      O => \rx_clk_divider[10]_i_7_n_0\
    );
\rx_clk_divider[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999990"
    )
        port map (
      I0 => rx_clk_divider(1),
      I1 => rx_clk_divider(0),
      I2 => \recv_state_reg_n_0_[2]\,
      I3 => \recv_state_reg_n_0_[0]\,
      I4 => UART_TXD_IN,
      I5 => \recv_state_reg_n_0_[1]\,
      O => \rx_clk_divider[1]_i_1_n_0\
    );
\rx_clk_divider[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E1"
    )
        port map (
      I0 => rx_clk_divider(0),
      I1 => rx_clk_divider(1),
      I2 => rx_clk_divider(2),
      I3 => \rx_clk_divider[10]_i_3_n_0\,
      I4 => \rx_clk_divider[10]_i_4_n_0\,
      O => \rx_clk_divider[2]_i_1_n_0\
    );
\rx_clk_divider[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => rx_clk_divider(3),
      I1 => rx_clk_divider(0),
      I2 => rx_clk_divider(1),
      I3 => rx_clk_divider(2),
      O => \rx_clk_divider[3]_i_1_n_0\
    );
\rx_clk_divider[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => rx_clk_divider(4),
      I1 => rx_clk_divider(2),
      I2 => rx_clk_divider(1),
      I3 => rx_clk_divider(0),
      I4 => rx_clk_divider(3),
      O => \rx_clk_divider[4]_i_1_n_0\
    );
\rx_clk_divider[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \rx_clk_divider[5]_i_2_n_0\,
      I1 => \recv_state_reg_n_0_[2]\,
      I2 => \recv_state_reg_n_0_[0]\,
      I3 => UART_TXD_IN,
      I4 => \recv_state_reg_n_0_[1]\,
      O => \rx_clk_divider[5]_i_1_n_0\
    );
\rx_clk_divider[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => rx_clk_divider(5),
      I1 => rx_clk_divider(4),
      I2 => rx_clk_divider(3),
      I3 => rx_clk_divider(0),
      I4 => rx_clk_divider(1),
      I5 => rx_clk_divider(2),
      O => \rx_clk_divider[5]_i_2_n_0\
    );
\rx_clk_divider[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rx_clk_divider(6),
      I1 => \rx_clk_divider[7]_i_3_n_0\,
      O => \rx_clk_divider[6]_i_1_n_0\
    );
\rx_clk_divider[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \rx_clk_divider[10]_i_4_n_0\,
      I1 => \recv_state_reg_n_0_[2]\,
      I2 => \recv_state_reg_n_0_[0]\,
      I3 => UART_TXD_IN,
      I4 => \recv_state_reg_n_0_[1]\,
      O => \rx_clk_divider[7]_i_1_n_0\
    );
\rx_clk_divider[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => rx_clk_divider(6),
      I1 => \rx_clk_divider[7]_i_3_n_0\,
      I2 => rx_clk_divider(7),
      O => \rx_clk_divider[7]_i_2_n_0\
    );
\rx_clk_divider[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rx_clk_divider(5),
      I1 => rx_clk_divider(4),
      I2 => rx_clk_divider(3),
      I3 => rx_clk_divider(0),
      I4 => rx_clk_divider(1),
      I5 => rx_clk_divider(2),
      O => \rx_clk_divider[7]_i_3_n_0\
    );
\rx_clk_divider[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => \rx_clk_divider[10]_i_2_n_0\,
      I1 => rx_clk_divider(8),
      I2 => \rx_clk_divider[10]_i_3_n_0\,
      I3 => \rx_clk_divider[10]_i_4_n_0\,
      O => \rx_clk_divider[8]_i_1_n_0\
    );
\rx_clk_divider[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \rx_clk_divider[9]_i_2_n_0\,
      I1 => \recv_state_reg_n_0_[2]\,
      I2 => \recv_state_reg_n_0_[0]\,
      I3 => UART_TXD_IN,
      I4 => \recv_state_reg_n_0_[1]\,
      O => \rx_clk_divider[9]_i_1_n_0\
    );
\rx_clk_divider[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => rx_clk_divider(9),
      I1 => rx_clk_divider(7),
      I2 => \rx_clk_divider[7]_i_3_n_0\,
      I3 => rx_clk_divider(6),
      I4 => rx_clk_divider(8),
      O => \rx_clk_divider[9]_i_2_n_0\
    );
\rx_clk_divider_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_clk_divider[0]_i_1_n_0\,
      Q => rx_clk_divider(0),
      S => \rx_clk_divider[7]_i_1_n_0\
    );
\rx_clk_divider_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_clk_divider[10]_i_1_n_0\,
      Q => rx_clk_divider(10),
      R => '0'
    );
\rx_clk_divider_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_clk_divider[1]_i_1_n_0\,
      Q => rx_clk_divider(1),
      R => '0'
    );
\rx_clk_divider_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_clk_divider[2]_i_1_n_0\,
      Q => rx_clk_divider(2),
      R => '0'
    );
\rx_clk_divider_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_clk_divider[3]_i_1_n_0\,
      Q => rx_clk_divider(3),
      S => \rx_clk_divider[7]_i_1_n_0\
    );
\rx_clk_divider_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_clk_divider[4]_i_1_n_0\,
      Q => rx_clk_divider(4),
      S => \rx_clk_divider[7]_i_1_n_0\
    );
\rx_clk_divider_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_clk_divider[5]_i_1_n_0\,
      Q => rx_clk_divider(5),
      R => '0'
    );
\rx_clk_divider_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_clk_divider[6]_i_1_n_0\,
      Q => rx_clk_divider(6),
      S => \rx_clk_divider[7]_i_1_n_0\
    );
\rx_clk_divider_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_clk_divider[7]_i_2_n_0\,
      Q => rx_clk_divider(7),
      S => \rx_clk_divider[7]_i_1_n_0\
    );
\rx_clk_divider_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_clk_divider[8]_i_1_n_0\,
      Q => rx_clk_divider(8),
      R => '0'
    );
\rx_clk_divider_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_clk_divider[9]_i_1_n_0\,
      Q => rx_clk_divider(9),
      R => '0'
    );
\rx_count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \recv_state_reg_n_0_[0]\,
      I1 => \recv_state_reg_n_0_[2]\,
      I2 => \recv_state_reg_n_0_[1]\,
      O => \^recv_state_reg[0]_0\
    );
\rx_countdown[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666666660"
    )
        port map (
      I0 => \rx_clk_divider[10]_i_4_n_0\,
      I1 => rx_countdown(0),
      I2 => \recv_state_reg_n_0_[2]\,
      I3 => \recv_state_reg_n_0_[0]\,
      I4 => UART_TXD_IN,
      I5 => \recv_state_reg_n_0_[1]\,
      O => rx_countdown_0(0)
    );
\rx_countdown[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF9A"
    )
        port map (
      I0 => rx_countdown(1),
      I1 => rx_countdown(0),
      I2 => \rx_clk_divider[10]_i_4_n_0\,
      I3 => \rx_clk_divider[10]_i_3_n_0\,
      O => rx_countdown_0(1)
    );
\rx_countdown[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFC00000288"
    )
        port map (
      I0 => \rx_countdown[2]_i_2_n_0\,
      I1 => \recv_state_reg_n_0_[1]\,
      I2 => UART_TXD_IN,
      I3 => \recv_state_reg_n_0_[0]\,
      I4 => \recv_state_reg_n_0_[2]\,
      I5 => \rx_countdown[2]_i_3_n_0\,
      O => rx_countdown_0(2)
    );
\rx_countdown[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000001FE"
    )
        port map (
      I0 => \rx_clk_divider[9]_i_2_n_0\,
      I1 => \rx_countdown[2]_i_4_n_0\,
      I2 => \rx_clk_divider[7]_i_2_n_0\,
      I3 => rx_countdown(0),
      I4 => \rx_countdown[5]_i_3_n_0\,
      I5 => rx_countdown(5),
      O => \rx_countdown[2]_i_2_n_0\
    );
\rx_countdown[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => rx_countdown(2),
      I1 => rx_countdown(0),
      I2 => rx_clk_divider(10),
      I3 => \rx_countdown[4]_i_3_n_0\,
      I4 => \rx_clk_divider[9]_i_2_n_0\,
      I5 => rx_countdown(1),
      O => \rx_countdown[2]_i_3_n_0\
    );
\rx_countdown[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \rx_clk_divider[5]_i_2_n_0\,
      I1 => rx_clk_divider(0),
      I2 => rx_clk_divider(1),
      I3 => rx_clk_divider(3),
      I4 => \rx_clk_divider[10]_i_7_n_0\,
      I5 => \rx_clk_divider[4]_i_1_n_0\,
      O => \rx_countdown[2]_i_4_n_0\
    );
\rx_countdown[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666666660"
    )
        port map (
      I0 => \rx_countdown[4]_i_2_n_0\,
      I1 => rx_countdown(3),
      I2 => \recv_state_reg_n_0_[2]\,
      I3 => \recv_state_reg_n_0_[0]\,
      I4 => UART_TXD_IN,
      I5 => \recv_state_reg_n_0_[1]\,
      O => rx_countdown_0(3)
    );
\rx_countdown[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => \rx_countdown[4]_i_2_n_0\,
      I1 => rx_countdown(3),
      I2 => rx_countdown(4),
      I3 => \rx_clk_divider[10]_i_3_n_0\,
      O => rx_countdown_0(4)
    );
\rx_countdown[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => rx_countdown(0),
      I1 => rx_clk_divider(10),
      I2 => \rx_countdown[4]_i_3_n_0\,
      I3 => \rx_clk_divider[9]_i_2_n_0\,
      I4 => rx_countdown(1),
      I5 => rx_countdown(2),
      O => \rx_countdown[4]_i_2_n_0\
    );
\rx_countdown[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBE"
    )
        port map (
      I0 => rx_clk_divider(7),
      I1 => rx_clk_divider(5),
      I2 => \rx_clk_divider[10]_i_5_n_0\,
      I3 => rx_clk_divider(6),
      I4 => \rx_countdown[4]_i_4_n_0\,
      I5 => rx_clk_divider(8),
      O => \rx_countdown[4]_i_3_n_0\
    );
\rx_countdown[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => rx_clk_divider(4),
      I1 => rx_clk_divider(2),
      I2 => rx_clk_divider(0),
      I3 => rx_clk_divider(1),
      I4 => rx_clk_divider(3),
      O => \rx_countdown[4]_i_4_n_0\
    );
\rx_countdown[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \recv_state_reg_n_0_[1]\,
      I1 => \recv_state_reg_n_0_[0]\,
      I2 => \recv_state_reg_n_0_[2]\,
      O => \rx_countdown[5]_i_1_n_0\
    );
\rx_countdown[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55510004"
    )
        port map (
      I0 => \rx_clk_divider[10]_i_3_n_0\,
      I1 => \rx_clk_divider[10]_i_4_n_0\,
      I2 => rx_countdown(0),
      I3 => \rx_countdown[5]_i_3_n_0\,
      I4 => rx_countdown(5),
      O => rx_countdown_0(5)
    );
\rx_countdown[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_countdown(2),
      I1 => rx_countdown(1),
      I2 => rx_countdown(4),
      I3 => rx_countdown(3),
      O => \rx_countdown[5]_i_3_n_0\
    );
\rx_countdown_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rx_countdown_0(0),
      Q => rx_countdown(0),
      R => \rx_countdown[5]_i_1_n_0\
    );
\rx_countdown_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rx_countdown_0(1),
      Q => rx_countdown(1),
      R => \rx_countdown[5]_i_1_n_0\
    );
\rx_countdown_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rx_countdown_0(2),
      Q => rx_countdown(2),
      R => \rx_countdown[5]_i_1_n_0\
    );
\rx_countdown_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => rx_countdown_0(3),
      Q => rx_countdown(3),
      S => \rx_countdown[5]_i_1_n_0\
    );
\rx_countdown_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rx_countdown_0(4),
      Q => rx_countdown(4),
      R => \rx_countdown[5]_i_1_n_0\
    );
\rx_countdown_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rx_countdown_0(5),
      Q => rx_countdown(5),
      R => \rx_countdown[5]_i_1_n_0\
    );
\tx_bits_remaining[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \tx_state_reg_n_0_[0]\,
      I1 => \tx_bits_remaining_reg_n_0_[0]\,
      O => \tx_bits_remaining[0]_i_1_n_0\
    );
\tx_bits_remaining[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \tx_state_reg_n_0_[0]\,
      I1 => \tx_bits_remaining_reg_n_0_[0]\,
      I2 => \tx_bits_remaining_reg_n_0_[1]\,
      O => \tx_bits_remaining[1]_i_1_n_0\
    );
\tx_bits_remaining[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E100"
    )
        port map (
      I0 => \tx_bits_remaining_reg_n_0_[1]\,
      I1 => \tx_bits_remaining_reg_n_0_[0]\,
      I2 => \tx_bits_remaining_reg_n_0_[2]\,
      I3 => \tx_state_reg_n_0_[0]\,
      O => \tx_bits_remaining[2]_i_1_n_0\
    );
\tx_bits_remaining[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"010F0100"
    )
        port map (
      I0 => \tx_bits_remaining[3]_i_3_n_0\,
      I1 => tx_out_i_2_n_0,
      I2 => \tx_state_reg_n_0_[1]\,
      I3 => \tx_state_reg_n_0_[0]\,
      I4 => \tx_bits_remaining_reg[3]_0\,
      O => \tx_bits_remaining[3]_i_1_n_0\
    );
\tx_bits_remaining[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE01FFFF"
    )
        port map (
      I0 => \tx_bits_remaining_reg_n_0_[0]\,
      I1 => \tx_bits_remaining_reg_n_0_[1]\,
      I2 => \tx_bits_remaining_reg_n_0_[2]\,
      I3 => \tx_bits_remaining_reg_n_0_[3]\,
      I4 => \tx_state_reg_n_0_[0]\,
      O => \tx_bits_remaining[3]_i_2_n_0\
    );
\tx_bits_remaining[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFD02"
    )
        port map (
      I0 => tx_out_i_6_n_0,
      I1 => tx_out_i_5_n_0,
      I2 => \tx_clk_divider[8]_i_1_n_0\,
      I3 => tx_countdown(0),
      I4 => \tx_countdown[5]_i_2_n_0\,
      I5 => tx_countdown(5),
      O => \tx_bits_remaining[3]_i_3_n_0\
    );
\tx_bits_remaining_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_bits_remaining[3]_i_1_n_0\,
      D => \tx_bits_remaining[0]_i_1_n_0\,
      Q => \tx_bits_remaining_reg_n_0_[0]\,
      R => '0'
    );
\tx_bits_remaining_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_bits_remaining[3]_i_1_n_0\,
      D => \tx_bits_remaining[1]_i_1_n_0\,
      Q => \tx_bits_remaining_reg_n_0_[1]\,
      R => '0'
    );
\tx_bits_remaining_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_bits_remaining[3]_i_1_n_0\,
      D => \tx_bits_remaining[2]_i_1_n_0\,
      Q => \tx_bits_remaining_reg_n_0_[2]\,
      R => '0'
    );
\tx_bits_remaining_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_bits_remaining[3]_i_1_n_0\,
      D => \tx_bits_remaining[3]_i_2_n_0\,
      Q => \tx_bits_remaining_reg_n_0_[3]\,
      R => '0'
    );
\tx_clk_divider[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tx_clk_divider(0),
      O => \tx_clk_divider[0]_i_1_n_0\
    );
\tx_clk_divider[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \tx_bits_remaining_reg[3]_0\,
      I1 => \tx_state_reg_n_0_[0]\,
      I2 => \tx_state_reg_n_0_[1]\,
      O => \tx_clk_divider[10]_i_1_n_0\
    );
\tx_clk_divider[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000100"
    )
        port map (
      I0 => tx_clk_divider(9),
      I1 => tx_clk_divider(8),
      I2 => tx_clk_divider(6),
      I3 => \tx_clk_divider[10]_i_3_n_0\,
      I4 => tx_clk_divider(7),
      I5 => tx_clk_divider(10),
      O => \tx_clk_divider[10]_i_2_n_0\
    );
\tx_clk_divider[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => tx_clk_divider(3),
      I1 => tx_clk_divider(0),
      I2 => tx_clk_divider(1),
      I3 => tx_clk_divider(2),
      I4 => tx_clk_divider(4),
      I5 => tx_clk_divider(5),
      O => \tx_clk_divider[10]_i_3_n_0\
    );
\tx_clk_divider[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99909999"
    )
        port map (
      I0 => tx_clk_divider(1),
      I1 => tx_clk_divider(0),
      I2 => \tx_state_reg_n_0_[1]\,
      I3 => \tx_state_reg_n_0_[0]\,
      I4 => \tx_bits_remaining_reg[3]_0\,
      O => \tx_clk_divider[1]_i_1_n_0\
    );
\tx_clk_divider[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => tx_clk_divider(2),
      I1 => tx_clk_divider(1),
      I2 => tx_clk_divider(0),
      O => \tx_clk_divider[2]_i_1_n_0\
    );
\tx_clk_divider[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => tx_clk_divider(3),
      I1 => tx_clk_divider(0),
      I2 => tx_clk_divider(1),
      I3 => tx_clk_divider(2),
      O => \tx_clk_divider[3]_i_1_n_0\
    );
\tx_clk_divider[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => tx_clk_divider(3),
      I1 => tx_clk_divider(0),
      I2 => tx_clk_divider(1),
      I3 => tx_clk_divider(2),
      I4 => tx_clk_divider(4),
      O => \tx_clk_divider[4]_i_1_n_0\
    );
\tx_clk_divider[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => tx_clk_divider(5),
      I1 => tx_clk_divider(3),
      I2 => tx_clk_divider(0),
      I3 => tx_clk_divider(1),
      I4 => tx_clk_divider(2),
      I5 => tx_clk_divider(4),
      O => \tx_clk_divider[5]_i_1_n_0\
    );
\tx_clk_divider[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => tx_clk_divider(6),
      I1 => tx_clk_divider(5),
      I2 => \tx_clk_divider[9]_i_4_n_0\,
      O => \tx_clk_divider[6]_i_1_n_0\
    );
\tx_clk_divider[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
        port map (
      I0 => tx_clk_divider(7),
      I1 => tx_clk_divider(6),
      I2 => \tx_clk_divider[9]_i_4_n_0\,
      I3 => tx_clk_divider(5),
      O => \tx_clk_divider[7]_i_1_n_0\
    );
\tx_clk_divider[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA9AA"
    )
        port map (
      I0 => tx_clk_divider(8),
      I1 => tx_clk_divider(7),
      I2 => tx_clk_divider(5),
      I3 => \tx_clk_divider[9]_i_4_n_0\,
      I4 => tx_clk_divider(6),
      O => \tx_clk_divider[8]_i_1_n_0\
    );
\tx_clk_divider[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \tx_clk_divider[9]_i_3_n_0\,
      I1 => \tx_state_reg_n_0_[1]\,
      I2 => \tx_state_reg_n_0_[0]\,
      I3 => \tx_bits_remaining_reg[3]_0\,
      O => \tx_clk_divider[9]_i_1_n_0\
    );
\tx_clk_divider[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA9AA"
    )
        port map (
      I0 => tx_clk_divider(9),
      I1 => tx_clk_divider(8),
      I2 => tx_clk_divider(6),
      I3 => \tx_clk_divider[9]_i_4_n_0\,
      I4 => tx_clk_divider(5),
      I5 => tx_clk_divider(7),
      O => \tx_clk_divider[9]_i_2_n_0\
    );
\tx_clk_divider[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => tx_clk_divider(10),
      I1 => tx_out_i_5_n_0,
      I2 => tx_clk_divider(8),
      I3 => \tx_clk_divider[9]_i_5_n_0\,
      O => \tx_clk_divider[9]_i_3_n_0\
    );
\tx_clk_divider[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => tx_clk_divider(4),
      I1 => tx_clk_divider(2),
      I2 => tx_clk_divider(1),
      I3 => tx_clk_divider(0),
      I4 => tx_clk_divider(3),
      O => \tx_clk_divider[9]_i_4_n_0\
    );
\tx_clk_divider[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => tx_clk_divider(6),
      I1 => \tx_clk_divider[9]_i_4_n_0\,
      I2 => tx_clk_divider(5),
      I3 => tx_clk_divider(7),
      O => \tx_clk_divider[9]_i_5_n_0\
    );
\tx_clk_divider_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_clk_divider[0]_i_1_n_0\,
      Q => tx_clk_divider(0),
      S => \tx_clk_divider[9]_i_1_n_0\
    );
\tx_clk_divider_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_clk_divider[10]_i_2_n_0\,
      Q => tx_clk_divider(10),
      R => \tx_clk_divider[10]_i_1_n_0\
    );
\tx_clk_divider_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_clk_divider[1]_i_1_n_0\,
      Q => tx_clk_divider(1),
      R => '0'
    );
\tx_clk_divider_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_clk_divider[2]_i_1_n_0\,
      Q => tx_clk_divider(2),
      R => \tx_clk_divider[9]_i_1_n_0\
    );
\tx_clk_divider_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_clk_divider[3]_i_1_n_0\,
      Q => tx_clk_divider(3),
      S => \tx_clk_divider[9]_i_1_n_0\
    );
\tx_clk_divider_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_clk_divider[4]_i_1_n_0\,
      Q => tx_clk_divider(4),
      S => \tx_clk_divider[9]_i_1_n_0\
    );
\tx_clk_divider_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_clk_divider[5]_i_1_n_0\,
      Q => tx_clk_divider(5),
      R => \tx_clk_divider[9]_i_1_n_0\
    );
\tx_clk_divider_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_clk_divider[6]_i_1_n_0\,
      Q => tx_clk_divider(6),
      S => \tx_clk_divider[9]_i_1_n_0\
    );
\tx_clk_divider_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_clk_divider[7]_i_1_n_0\,
      Q => tx_clk_divider(7),
      S => \tx_clk_divider[9]_i_1_n_0\
    );
\tx_clk_divider_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_clk_divider[8]_i_1_n_0\,
      Q => tx_clk_divider(8),
      R => \tx_clk_divider[9]_i_1_n_0\
    );
\tx_clk_divider_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_clk_divider[9]_i_2_n_0\,
      Q => tx_clk_divider(9),
      R => \tx_clk_divider[9]_i_1_n_0\
    );
\tx_countdown[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66606666"
    )
        port map (
      I0 => \tx_clk_divider[9]_i_3_n_0\,
      I1 => tx_countdown(0),
      I2 => \tx_state_reg_n_0_[1]\,
      I3 => \tx_state_reg_n_0_[0]\,
      I4 => \tx_bits_remaining_reg[3]_0\,
      O => \tx_countdown[0]_i_1_n_0\
    );
\tx_countdown[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tx_countdown(1),
      I1 => \tx_countdown[2]_i_2_n_0\,
      O => \tx_countdown[1]_i_1_n_0\
    );
\tx_countdown[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFABABABABFF"
    )
        port map (
      I0 => \tx_clk_divider[10]_i_1_n_0\,
      I1 => tx_out_i_2_n_0,
      I2 => tx_out_i_3_n_0,
      I3 => tx_countdown(1),
      I4 => \tx_countdown[2]_i_2_n_0\,
      I5 => tx_countdown(2),
      O => \tx_countdown[2]_i_1_n_0\
    );
\tx_countdown[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFE"
    )
        port map (
      I0 => tx_countdown(0),
      I1 => \tx_countdown[2]_i_3_n_0\,
      I2 => \tx_countdown[2]_i_4_n_0\,
      I3 => tx_clk_divider(9),
      I4 => tx_clk_divider(8),
      I5 => \tx_clk_divider[9]_i_5_n_0\,
      O => \tx_countdown[2]_i_2_n_0\
    );
\tx_countdown[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB4"
    )
        port map (
      I0 => tx_clk_divider(6),
      I1 => \tx_clk_divider[10]_i_3_n_0\,
      I2 => tx_clk_divider(7),
      I3 => tx_clk_divider(10),
      O => \tx_countdown[2]_i_3_n_0\
    );
\tx_countdown[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEF"
    )
        port map (
      I0 => \tx_countdown[2]_i_5_n_0\,
      I1 => tx_clk_divider(6),
      I2 => tx_clk_divider(4),
      I3 => \tx_countdown[2]_i_6_n_0\,
      O => \tx_countdown[2]_i_4_n_0\
    );
\tx_countdown[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => tx_clk_divider(5),
      I1 => tx_clk_divider(2),
      I2 => tx_clk_divider(0),
      I3 => tx_clk_divider(1),
      I4 => tx_clk_divider(3),
      O => \tx_countdown[2]_i_5_n_0\
    );
\tx_countdown[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tx_clk_divider(3),
      I1 => tx_clk_divider(0),
      I2 => tx_clk_divider(1),
      I3 => tx_clk_divider(2),
      O => \tx_countdown[2]_i_6_n_0\
    );
\tx_countdown[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999999F999999999"
    )
        port map (
      I0 => \tx_countdown[3]_i_2_n_0\,
      I1 => tx_countdown(3),
      I2 => tx_out_i_2_n_0,
      I3 => \tx_bits_remaining[3]_i_3_n_0\,
      I4 => \tx_state_reg_n_0_[1]\,
      I5 => \tx_state_reg_n_0_[0]\,
      O => \tx_countdown[3]_i_1_n_0\
    );
\tx_countdown[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => tx_countdown(2),
      I1 => tx_countdown(0),
      I2 => \tx_countdown[2]_i_3_n_0\,
      I3 => \tx_countdown[2]_i_4_n_0\,
      I4 => \tx_countdown[3]_i_3_n_0\,
      I5 => tx_countdown(1),
      O => \tx_countdown[3]_i_2_n_0\
    );
\tx_countdown[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEF0010"
    )
        port map (
      I0 => tx_clk_divider(7),
      I1 => tx_clk_divider(5),
      I2 => \tx_clk_divider[9]_i_4_n_0\,
      I3 => tx_clk_divider(6),
      I4 => tx_clk_divider(8),
      I5 => tx_clk_divider(9),
      O => \tx_countdown[3]_i_3_n_0\
    );
\tx_countdown[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => tx_countdown(4),
      I1 => tx_countdown(2),
      I2 => \tx_countdown[2]_i_2_n_0\,
      I3 => tx_countdown(1),
      I4 => tx_countdown(3),
      O => \tx_countdown[4]_i_1_n_0\
    );
\tx_countdown[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FD02"
    )
        port map (
      I0 => \tx_clk_divider[9]_i_3_n_0\,
      I1 => tx_countdown(0),
      I2 => \tx_countdown[5]_i_2_n_0\,
      I3 => tx_countdown(5),
      I4 => \tx_clk_divider[10]_i_1_n_0\,
      O => \tx_countdown[5]_i_1_n_0\
    );
\tx_countdown[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tx_countdown(2),
      I1 => tx_countdown(1),
      I2 => tx_countdown(4),
      I3 => tx_countdown(3),
      O => \tx_countdown[5]_i_2_n_0\
    );
\tx_countdown_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_countdown[0]_i_1_n_0\,
      Q => tx_countdown(0),
      R => '0'
    );
\tx_countdown_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_countdown[1]_i_1_n_0\,
      Q => tx_countdown(1),
      R => \tx_clk_divider[10]_i_1_n_0\
    );
\tx_countdown_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_countdown[2]_i_1_n_0\,
      Q => tx_countdown(2),
      R => '0'
    );
\tx_countdown_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_countdown[3]_i_1_n_0\,
      Q => tx_countdown(3),
      R => \tx_clk_divider[10]_i_1_n_0\
    );
\tx_countdown_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_countdown[4]_i_1_n_0\,
      Q => tx_countdown(4),
      R => \tx_clk_divider[10]_i_1_n_0\
    );
\tx_countdown_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_countdown[5]_i_1_n_0\,
      Q => tx_countdown(5),
      R => '0'
    );
\tx_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_reg_n_0_[1]\,
      I1 => \tx_state_reg_n_0_[0]\,
      I2 => \tx_data_reg[7]_0\(0),
      O => \tx_data[0]_i_1_n_0\
    );
\tx_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_reg_n_0_[2]\,
      I1 => \tx_state_reg_n_0_[0]\,
      I2 => \tx_data_reg[7]_0\(1),
      O => \tx_data[1]_i_1_n_0\
    );
\tx_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_reg_n_0_[3]\,
      I1 => \tx_state_reg_n_0_[0]\,
      I2 => \tx_data_reg[7]_0\(2),
      O => \tx_data[2]_i_1_n_0\
    );
\tx_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_reg_n_0_[4]\,
      I1 => \tx_state_reg_n_0_[0]\,
      I2 => \tx_data_reg[7]_0\(3),
      O => \tx_data[3]_i_1_n_0\
    );
\tx_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_reg_n_0_[5]\,
      I1 => \tx_state_reg_n_0_[0]\,
      I2 => \tx_data_reg[7]_0\(4),
      O => \tx_data[4]_i_1_n_0\
    );
\tx_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_reg_n_0_[6]\,
      I1 => \tx_state_reg_n_0_[0]\,
      I2 => \tx_data_reg[7]_0\(5),
      O => \tx_data[5]_i_1_n_0\
    );
\tx_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_reg_n_0_[7]\,
      I1 => \tx_state_reg_n_0_[0]\,
      I2 => \tx_data_reg[7]_0\(6),
      O => \tx_data[6]_i_1_n_0\
    );
\tx_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \tx_data_reg[7]_0\(7),
      I1 => \tx_state_reg_n_0_[0]\,
      O => \tx_data[7]_i_1_n_0\
    );
\tx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_bits_remaining[3]_i_1_n_0\,
      D => \tx_data[0]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[0]\,
      R => '0'
    );
\tx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_bits_remaining[3]_i_1_n_0\,
      D => \tx_data[1]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[1]\,
      R => '0'
    );
\tx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_bits_remaining[3]_i_1_n_0\,
      D => \tx_data[2]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[2]\,
      R => '0'
    );
\tx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_bits_remaining[3]_i_1_n_0\,
      D => \tx_data[3]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[3]\,
      R => '0'
    );
\tx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_bits_remaining[3]_i_1_n_0\,
      D => \tx_data[4]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[4]\,
      R => '0'
    );
\tx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_bits_remaining[3]_i_1_n_0\,
      D => \tx_data[5]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[5]\,
      R => '0'
    );
\tx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_bits_remaining[3]_i_1_n_0\,
      D => \tx_data[6]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[6]\,
      R => '0'
    );
\tx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_bits_remaining[3]_i_1_n_0\,
      D => \tx_data[7]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[7]\,
      R => '0'
    );
tx_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8FFA8A8A800A8A8"
    )
        port map (
      I0 => \tx_state_reg_n_0_[0]\,
      I1 => tx_out_i_2_n_0,
      I2 => \tx_data_reg_n_0_[0]\,
      I3 => \tx_clk_divider[10]_i_1_n_0\,
      I4 => tx_out_i_3_n_0,
      I5 => \^uart_rxd_out\,
      O => tx_out_i_1_n_0
    );
tx_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \tx_bits_remaining_reg_n_0_[2]\,
      I1 => \tx_bits_remaining_reg_n_0_[1]\,
      I2 => \tx_bits_remaining_reg_n_0_[0]\,
      I3 => \tx_bits_remaining_reg_n_0_[3]\,
      O => tx_out_i_2_n_0
    );
tx_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEBEEEEFFFFFFFF"
    )
        port map (
      I0 => tx_out_i_4_n_0,
      I1 => tx_countdown(0),
      I2 => \tx_clk_divider[8]_i_1_n_0\,
      I3 => tx_out_i_5_n_0,
      I4 => tx_out_i_6_n_0,
      I5 => tx_out_i_7_n_0,
      O => tx_out_i_3_n_0
    );
tx_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => tx_countdown(5),
      I1 => tx_countdown(3),
      I2 => tx_countdown(4),
      I3 => tx_countdown(1),
      I4 => tx_countdown(2),
      O => tx_out_i_4_n_0
    );
tx_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \tx_clk_divider[5]_i_1_n_0\,
      I1 => tx_out_i_8_n_0,
      I2 => tx_clk_divider(3),
      I3 => tx_clk_divider(1),
      I4 => tx_clk_divider(6),
      I5 => tx_clk_divider(4),
      O => tx_out_i_5_n_0
    );
tx_out_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555565"
    )
        port map (
      I0 => tx_clk_divider(10),
      I1 => tx_clk_divider(7),
      I2 => \tx_clk_divider[10]_i_3_n_0\,
      I3 => tx_clk_divider(6),
      I4 => tx_clk_divider(8),
      I5 => tx_clk_divider(9),
      O => tx_out_i_6_n_0
    );
tx_out_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \tx_state_reg_n_0_[0]\,
      I1 => \tx_state_reg_n_0_[1]\,
      O => tx_out_i_7_n_0
    );
tx_out_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => tx_clk_divider(9),
      I1 => tx_clk_divider(2),
      I2 => tx_clk_divider(0),
      I3 => tx_clk_divider(7),
      O => tx_out_i_8_n_0
    );
tx_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => tx_out_i_1_n_0,
      Q => \^uart_rxd_out\,
      R => '0'
    );
\tx_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDD00F0"
    )
        port map (
      I0 => tx_out_i_2_n_0,
      I1 => \tx_bits_remaining[3]_i_3_n_0\,
      I2 => \tx_bits_remaining_reg[3]_0\,
      I3 => \tx_state_reg_n_0_[1]\,
      I4 => \tx_state_reg_n_0_[0]\,
      O => tx_state(0)
    );
\tx_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CEC0"
    )
        port map (
      I0 => tx_out_i_2_n_0,
      I1 => \tx_state_reg_n_0_[1]\,
      I2 => \tx_bits_remaining[3]_i_3_n_0\,
      I3 => \tx_state_reg_n_0_[0]\,
      O => tx_state(1)
    );
\tx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tx_state(0),
      Q => \tx_state_reg_n_0_[0]\,
      R => '0'
    );
\tx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tx_state(1),
      Q => \tx_state_reg_n_0_[1]\,
      R => '0'
    );
uart_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA00AAAA00FB"
    )
        port map (
      I0 => uart_state,
      I1 => \^recv_state_reg[0]_0\,
      I2 => tx_start,
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => uart_state_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MAES_uart_logger_0_0_uart_logger is
  port (
    tx_free : out STD_LOGIC;
    UART_RXD_OUT : out STD_LOGIC;
    tx_start : in STD_LOGIC;
    clk : in STD_LOGIC;
    tx_msg : in STD_LOGIC_VECTOR ( 63 downto 0 );
    UART_TXD_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MAES_uart_logger_0_0_uart_logger : entity is "uart_logger";
end MAES_uart_logger_0_0_uart_logger;

architecture STRUCTURE of MAES_uart_logger_0_0_uart_logger is
  signal \FSM_onehot_tx_count_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_sequential_next_sm_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_sm_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_count[2]_i_1_n_0\ : STD_LOGIC;
  signal enable_tx_i_1_n_0 : STD_LOGIC;
  signal enable_tx_reg_n_0 : STD_LOGIC;
  signal in3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in4 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in6 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in7 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in9 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal next_rx_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \next_rx_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_rx_count[3]_i_3_n_0\ : STD_LOGIC;
  signal \next_rx_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_rx_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_rx_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \next_rx_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \next_sm_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_tx_count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_tx_count__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rx_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal send_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \send_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \send_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \send_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \send_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \send_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \send_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \send_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \send_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \send_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \send_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \send_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \send_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \send_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \send_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \send_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \send_data[7]_i_3_n_0\ : STD_LOGIC;
  signal send_data_0 : STD_LOGIC;
  signal \send_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \send_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \send_data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \send_data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \send_data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \send_data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \send_data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \send_data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal sm_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tx_count : STD_LOGIC;
  signal \tx_count__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tx_count_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \tx_data[63]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[7]\ : STD_LOGIC;
  signal uart_state : STD_LOGIC;
  signal uart_uut_n_1 : STD_LOGIC;
  signal uart_uut_n_2 : STD_LOGIC;
  signal uart_uut_n_3 : STD_LOGIC;
  signal uart_uut_n_4 : STD_LOGIC;
  signal uart_uut_n_5 : STD_LOGIC;
  signal uart_uut_n_6 : STD_LOGIC;
  signal uart_uut_n_7 : STD_LOGIC;
  signal uart_uut_n_8 : STD_LOGIC;
  signal uart_uut_n_9 : STD_LOGIC;
  signal wait_for_is_transmitting_i_1_n_0 : STD_LOGIC;
  signal wait_for_is_transmitting_reg_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_count_state_reg[0]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_count_state_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_count_state_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_next_sm_state[2]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FSM_sequential_next_tx_count[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_sequential_next_tx_count[2]_i_2\ : label is "soft_lutpair31";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_state_reg[0]\ : label is "iSTATE:100,iSTATE0:010,iSTATE1:001,iSTATE2:000,iSTATE3:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_state_reg[1]\ : label is "iSTATE:100,iSTATE0:010,iSTATE1:001,iSTATE2:000,iSTATE3:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_state_reg[2]\ : label is "iSTATE:100,iSTATE0:010,iSTATE1:001,iSTATE2:000,iSTATE3:011";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_count[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_count[2]_i_1\ : label is "soft_lutpair30";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_count_reg[0]\ : label is "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101,iSTATE5:110,iSTATE6:111,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_count_reg[1]\ : label is "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101,iSTATE5:110,iSTATE6:111,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_count_reg[2]\ : label is "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101,iSTATE5:110,iSTATE6:111,";
  attribute SOFT_HLUTNM of \next_rx_count[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \next_rx_count[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \next_rx_count[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \next_rx_count[3]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \next_rx_count[3]_i_3\ : label is "soft_lutpair27";
begin
\FSM_onehot_tx_count_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => uart_uut_n_2,
      Q => \FSM_onehot_tx_count_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_tx_count_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => uart_uut_n_1,
      Q => tx_count_state(1),
      R => '0'
    );
\FSM_onehot_tx_count_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => uart_uut_n_3,
      Q => tx_count,
      R => '0'
    );
\FSM_sequential_next_sm_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000000FFFFFFFF"
    )
        port map (
      I0 => sm_state(1),
      I1 => tx_count,
      I2 => \tx_count__0\(2),
      I3 => \tx_count__0\(1),
      I4 => \tx_count__0\(0),
      I5 => sm_state(0),
      O => \FSM_sequential_next_sm_state[2]_i_3_n_0\
    );
\FSM_sequential_next_sm_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => rx_count(2),
      I1 => rx_count(1),
      I2 => rx_count(0),
      I3 => rx_count(3),
      O => \FSM_sequential_next_sm_state[2]_i_4_n_0\
    );
\FSM_sequential_next_sm_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => uart_uut_n_6,
      Q => \next_sm_state__0\(0),
      R => '0'
    );
\FSM_sequential_next_sm_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => uart_uut_n_5,
      Q => \next_sm_state__0\(1),
      R => '0'
    );
\FSM_sequential_next_sm_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => uart_uut_n_4,
      Q => \next_sm_state__0\(2),
      R => '0'
    );
\FSM_sequential_next_tx_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \tx_count__0\(0),
      O => \next_tx_count__0\(0)
    );
\FSM_sequential_next_tx_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tx_count__0\(0),
      I1 => \tx_count__0\(1),
      O => \next_tx_count__0\(1)
    );
\FSM_sequential_next_tx_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \FSM_onehot_tx_count_state_reg_n_0_[0]\,
      I1 => sm_state(0),
      I2 => sm_state(2),
      I3 => sm_state(1),
      O => send_data_0
    );
\FSM_sequential_next_tx_count[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \tx_count__0\(2),
      I1 => \tx_count__0\(1),
      I2 => \tx_count__0\(0),
      O => \next_tx_count__0\(2)
    );
\FSM_sequential_next_tx_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => send_data_0,
      D => \next_tx_count__0\(0),
      Q => next_tx_count(0),
      R => '0'
    );
\FSM_sequential_next_tx_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => send_data_0,
      D => \next_tx_count__0\(1),
      Q => next_tx_count(1),
      R => '0'
    );
\FSM_sequential_next_tx_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => send_data_0,
      D => \next_tx_count__0\(2),
      Q => next_tx_count(2),
      R => '0'
    );
\FSM_sequential_sm_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \next_sm_state__0\(0),
      Q => sm_state(0),
      R => '0'
    );
\FSM_sequential_sm_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \next_sm_state__0\(1),
      Q => sm_state(1),
      R => '0'
    );
\FSM_sequential_sm_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \next_sm_state__0\(2),
      Q => sm_state(2),
      R => '0'
    );
\FSM_sequential_tx_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_tx_count(0),
      I1 => tx_count,
      I2 => \tx_count__0\(0),
      O => \FSM_sequential_tx_count[0]_i_1_n_0\
    );
\FSM_sequential_tx_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_tx_count(1),
      I1 => tx_count,
      I2 => \tx_count__0\(1),
      O => \FSM_sequential_tx_count[1]_i_1_n_0\
    );
\FSM_sequential_tx_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_tx_count(2),
      I1 => tx_count,
      I2 => \tx_count__0\(2),
      O => \FSM_sequential_tx_count[2]_i_1_n_0\
    );
\FSM_sequential_tx_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_tx_count[0]_i_1_n_0\,
      Q => \tx_count__0\(0),
      R => '0'
    );
\FSM_sequential_tx_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_tx_count[1]_i_1_n_0\,
      Q => \tx_count__0\(1),
      R => '0'
    );
\FSM_sequential_tx_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_tx_count[2]_i_1_n_0\,
      Q => \tx_count__0\(2),
      R => '0'
    );
enable_tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA00F2AA"
    )
        port map (
      I0 => enable_tx_reg_n_0,
      I1 => tx_count_state(1),
      I2 => \FSM_onehot_tx_count_state_reg_n_0_[0]\,
      I3 => sm_state(0),
      I4 => sm_state(1),
      I5 => sm_state(2),
      O => enable_tx_i_1_n_0
    );
enable_tx_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enable_tx_i_1_n_0,
      Q => enable_tx_reg_n_0,
      R => '0'
    );
\next_rx_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sm_state(1),
      I1 => rx_count(0),
      I2 => rx_count(3),
      O => next_rx_count(0)
    );
\next_rx_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => rx_count(1),
      I1 => rx_count(0),
      I2 => sm_state(1),
      O => \next_rx_count[1]_i_1_n_0\
    );
\next_rx_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4CC0"
    )
        port map (
      I0 => rx_count(1),
      I1 => sm_state(1),
      I2 => rx_count(0),
      I3 => rx_count(2),
      O => next_rx_count(2)
    );
\next_rx_count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sm_state(1),
      I1 => rx_count(1),
      I2 => rx_count(0),
      I3 => rx_count(2),
      O => next_rx_count(3)
    );
\next_rx_count[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5552"
    )
        port map (
      I0 => rx_count(3),
      I1 => rx_count(0),
      I2 => rx_count(1),
      I3 => rx_count(2),
      O => \next_rx_count[3]_i_3_n_0\
    );
\next_rx_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => uart_uut_n_9,
      D => next_rx_count(0),
      Q => \next_rx_count_reg_n_0_[0]\,
      R => '0'
    );
\next_rx_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => uart_uut_n_9,
      D => \next_rx_count[1]_i_1_n_0\,
      Q => \next_rx_count_reg_n_0_[1]\,
      R => '0'
    );
\next_rx_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => uart_uut_n_9,
      D => next_rx_count(2),
      Q => \next_rx_count_reg_n_0_[2]\,
      R => '0'
    );
\next_rx_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => uart_uut_n_9,
      D => next_rx_count(3),
      Q => \next_rx_count_reg_n_0_[3]\,
      R => '0'
    );
\rx_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => uart_uut_n_8,
      D => \next_rx_count_reg_n_0_[0]\,
      Q => rx_count(0),
      R => '0'
    );
\rx_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => uart_uut_n_8,
      D => \next_rx_count_reg_n_0_[1]\,
      Q => rx_count(1),
      R => '0'
    );
\rx_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => uart_uut_n_8,
      D => \next_rx_count_reg_n_0_[2]\,
      Q => rx_count(2),
      R => '0'
    );
\rx_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => uart_uut_n_8,
      D => \next_rx_count_reg_n_0_[3]\,
      Q => rx_count(3),
      R => '0'
    );
\send_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in6(0),
      I1 => in5(0),
      I2 => \tx_count__0\(1),
      I3 => in4(0),
      I4 => \tx_count__0\(0),
      I5 => in3(0),
      O => \send_data[0]_i_2_n_0\
    );
\send_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_data_reg_n_0_[0]\,
      I1 => in9(0),
      I2 => \tx_count__0\(1),
      I3 => in8(0),
      I4 => \tx_count__0\(0),
      I5 => in7(0),
      O => \send_data[0]_i_3_n_0\
    );
\send_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in6(1),
      I1 => in5(1),
      I2 => \tx_count__0\(1),
      I3 => in4(1),
      I4 => \tx_count__0\(0),
      I5 => in3(1),
      O => \send_data[1]_i_2_n_0\
    );
\send_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_data_reg_n_0_[1]\,
      I1 => in9(1),
      I2 => \tx_count__0\(1),
      I3 => in8(1),
      I4 => \tx_count__0\(0),
      I5 => in7(1),
      O => \send_data[1]_i_3_n_0\
    );
\send_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in6(2),
      I1 => in5(2),
      I2 => \tx_count__0\(1),
      I3 => in4(2),
      I4 => \tx_count__0\(0),
      I5 => in3(2),
      O => \send_data[2]_i_2_n_0\
    );
\send_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_data_reg_n_0_[2]\,
      I1 => in9(2),
      I2 => \tx_count__0\(1),
      I3 => in8(2),
      I4 => \tx_count__0\(0),
      I5 => in7(2),
      O => \send_data[2]_i_3_n_0\
    );
\send_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in6(3),
      I1 => in5(3),
      I2 => \tx_count__0\(1),
      I3 => in4(3),
      I4 => \tx_count__0\(0),
      I5 => in3(3),
      O => \send_data[3]_i_2_n_0\
    );
\send_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_data_reg_n_0_[3]\,
      I1 => in9(3),
      I2 => \tx_count__0\(1),
      I3 => in8(3),
      I4 => \tx_count__0\(0),
      I5 => in7(3),
      O => \send_data[3]_i_3_n_0\
    );
\send_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in6(4),
      I1 => in5(4),
      I2 => \tx_count__0\(1),
      I3 => in4(4),
      I4 => \tx_count__0\(0),
      I5 => in3(4),
      O => \send_data[4]_i_2_n_0\
    );
\send_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_data_reg_n_0_[4]\,
      I1 => in9(4),
      I2 => \tx_count__0\(1),
      I3 => in8(4),
      I4 => \tx_count__0\(0),
      I5 => in7(4),
      O => \send_data[4]_i_3_n_0\
    );
\send_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in6(5),
      I1 => in5(5),
      I2 => \tx_count__0\(1),
      I3 => in4(5),
      I4 => \tx_count__0\(0),
      I5 => in3(5),
      O => \send_data[5]_i_2_n_0\
    );
\send_data[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_data_reg_n_0_[5]\,
      I1 => in9(5),
      I2 => \tx_count__0\(1),
      I3 => in8(5),
      I4 => \tx_count__0\(0),
      I5 => in7(5),
      O => \send_data[5]_i_3_n_0\
    );
\send_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in6(6),
      I1 => in5(6),
      I2 => \tx_count__0\(1),
      I3 => in4(6),
      I4 => \tx_count__0\(0),
      I5 => in3(6),
      O => \send_data[6]_i_2_n_0\
    );
\send_data[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_data_reg_n_0_[6]\,
      I1 => in9(6),
      I2 => \tx_count__0\(1),
      I3 => in8(6),
      I4 => \tx_count__0\(0),
      I5 => in7(6),
      O => \send_data[6]_i_3_n_0\
    );
\send_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in6(7),
      I1 => in5(7),
      I2 => \tx_count__0\(1),
      I3 => in4(7),
      I4 => \tx_count__0\(0),
      I5 => in3(7),
      O => \send_data[7]_i_2_n_0\
    );
\send_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_data_reg_n_0_[7]\,
      I1 => in9(7),
      I2 => \tx_count__0\(1),
      I3 => in8(7),
      I4 => \tx_count__0\(0),
      I5 => in7(7),
      O => \send_data[7]_i_3_n_0\
    );
\send_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => send_data_0,
      D => \send_data_reg[0]_i_1_n_0\,
      Q => send_data(0),
      R => '0'
    );
\send_data_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \send_data[0]_i_2_n_0\,
      I1 => \send_data[0]_i_3_n_0\,
      O => \send_data_reg[0]_i_1_n_0\,
      S => \tx_count__0\(2)
    );
\send_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => send_data_0,
      D => \send_data_reg[1]_i_1_n_0\,
      Q => send_data(1),
      R => '0'
    );
\send_data_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \send_data[1]_i_2_n_0\,
      I1 => \send_data[1]_i_3_n_0\,
      O => \send_data_reg[1]_i_1_n_0\,
      S => \tx_count__0\(2)
    );
\send_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => send_data_0,
      D => \send_data_reg[2]_i_1_n_0\,
      Q => send_data(2),
      R => '0'
    );
\send_data_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \send_data[2]_i_2_n_0\,
      I1 => \send_data[2]_i_3_n_0\,
      O => \send_data_reg[2]_i_1_n_0\,
      S => \tx_count__0\(2)
    );
\send_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => send_data_0,
      D => \send_data_reg[3]_i_1_n_0\,
      Q => send_data(3),
      R => '0'
    );
\send_data_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \send_data[3]_i_2_n_0\,
      I1 => \send_data[3]_i_3_n_0\,
      O => \send_data_reg[3]_i_1_n_0\,
      S => \tx_count__0\(2)
    );
\send_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => send_data_0,
      D => \send_data_reg[4]_i_1_n_0\,
      Q => send_data(4),
      R => '0'
    );
\send_data_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \send_data[4]_i_2_n_0\,
      I1 => \send_data[4]_i_3_n_0\,
      O => \send_data_reg[4]_i_1_n_0\,
      S => \tx_count__0\(2)
    );
\send_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => send_data_0,
      D => \send_data_reg[5]_i_1_n_0\,
      Q => send_data(5),
      R => '0'
    );
\send_data_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \send_data[5]_i_2_n_0\,
      I1 => \send_data[5]_i_3_n_0\,
      O => \send_data_reg[5]_i_1_n_0\,
      S => \tx_count__0\(2)
    );
\send_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => send_data_0,
      D => \send_data_reg[6]_i_1_n_0\,
      Q => send_data(6),
      R => '0'
    );
\send_data_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \send_data[6]_i_2_n_0\,
      I1 => \send_data[6]_i_3_n_0\,
      O => \send_data_reg[6]_i_1_n_0\,
      S => \tx_count__0\(2)
    );
\send_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => send_data_0,
      D => \send_data_reg[7]_i_1_n_0\,
      Q => send_data(7),
      R => '0'
    );
\send_data_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \send_data[7]_i_2_n_0\,
      I1 => \send_data[7]_i_3_n_0\,
      O => \send_data_reg[7]_i_1_n_0\,
      S => \tx_count__0\(2)
    );
\tx_data[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => sm_state(2),
      I1 => sm_state(0),
      I2 => sm_state(1),
      I3 => uart_state,
      I4 => tx_start,
      O => \tx_data[63]_i_1_n_0\
    );
\tx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(0),
      Q => \tx_data_reg_n_0_[0]\,
      R => '0'
    );
\tx_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(10),
      Q => in9(2),
      R => '0'
    );
\tx_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(11),
      Q => in9(3),
      R => '0'
    );
\tx_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(12),
      Q => in9(4),
      R => '0'
    );
\tx_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(13),
      Q => in9(5),
      R => '0'
    );
\tx_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(14),
      Q => in9(6),
      R => '0'
    );
\tx_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(15),
      Q => in9(7),
      R => '0'
    );
\tx_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(16),
      Q => in8(0),
      R => '0'
    );
\tx_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(17),
      Q => in8(1),
      R => '0'
    );
\tx_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(18),
      Q => in8(2),
      R => '0'
    );
\tx_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(19),
      Q => in8(3),
      R => '0'
    );
\tx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(1),
      Q => \tx_data_reg_n_0_[1]\,
      R => '0'
    );
\tx_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(20),
      Q => in8(4),
      R => '0'
    );
\tx_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(21),
      Q => in8(5),
      R => '0'
    );
\tx_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(22),
      Q => in8(6),
      R => '0'
    );
\tx_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(23),
      Q => in8(7),
      R => '0'
    );
\tx_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(24),
      Q => in7(0),
      R => '0'
    );
\tx_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(25),
      Q => in7(1),
      R => '0'
    );
\tx_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(26),
      Q => in7(2),
      R => '0'
    );
\tx_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(27),
      Q => in7(3),
      R => '0'
    );
\tx_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(28),
      Q => in7(4),
      R => '0'
    );
\tx_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(29),
      Q => in7(5),
      R => '0'
    );
\tx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(2),
      Q => \tx_data_reg_n_0_[2]\,
      R => '0'
    );
\tx_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(30),
      Q => in7(6),
      R => '0'
    );
\tx_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(31),
      Q => in7(7),
      R => '0'
    );
\tx_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(32),
      Q => in6(0),
      R => '0'
    );
\tx_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(33),
      Q => in6(1),
      R => '0'
    );
\tx_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(34),
      Q => in6(2),
      R => '0'
    );
\tx_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(35),
      Q => in6(3),
      R => '0'
    );
\tx_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(36),
      Q => in6(4),
      R => '0'
    );
\tx_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(37),
      Q => in6(5),
      R => '0'
    );
\tx_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(38),
      Q => in6(6),
      R => '0'
    );
\tx_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(39),
      Q => in6(7),
      R => '0'
    );
\tx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(3),
      Q => \tx_data_reg_n_0_[3]\,
      R => '0'
    );
\tx_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(40),
      Q => in5(0),
      R => '0'
    );
\tx_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(41),
      Q => in5(1),
      R => '0'
    );
\tx_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(42),
      Q => in5(2),
      R => '0'
    );
\tx_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(43),
      Q => in5(3),
      R => '0'
    );
\tx_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(44),
      Q => in5(4),
      R => '0'
    );
\tx_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(45),
      Q => in5(5),
      R => '0'
    );
\tx_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(46),
      Q => in5(6),
      R => '0'
    );
\tx_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(47),
      Q => in5(7),
      R => '0'
    );
\tx_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(48),
      Q => in4(0),
      R => '0'
    );
\tx_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(49),
      Q => in4(1),
      R => '0'
    );
\tx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(4),
      Q => \tx_data_reg_n_0_[4]\,
      R => '0'
    );
\tx_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(50),
      Q => in4(2),
      R => '0'
    );
\tx_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(51),
      Q => in4(3),
      R => '0'
    );
\tx_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(52),
      Q => in4(4),
      R => '0'
    );
\tx_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(53),
      Q => in4(5),
      R => '0'
    );
\tx_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(54),
      Q => in4(6),
      R => '0'
    );
\tx_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(55),
      Q => in4(7),
      R => '0'
    );
\tx_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(56),
      Q => in3(0),
      R => '0'
    );
\tx_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(57),
      Q => in3(1),
      R => '0'
    );
\tx_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(58),
      Q => in3(2),
      R => '0'
    );
\tx_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(59),
      Q => in3(3),
      R => '0'
    );
\tx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(5),
      Q => \tx_data_reg_n_0_[5]\,
      R => '0'
    );
\tx_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(60),
      Q => in3(4),
      R => '0'
    );
\tx_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(61),
      Q => in3(5),
      R => '0'
    );
\tx_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(62),
      Q => in3(6),
      R => '0'
    );
\tx_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(63),
      Q => in3(7),
      R => '0'
    );
\tx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(6),
      Q => \tx_data_reg_n_0_[6]\,
      R => '0'
    );
\tx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(7),
      Q => \tx_data_reg_n_0_[7]\,
      R => '0'
    );
\tx_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(8),
      Q => in9(0),
      R => '0'
    );
\tx_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => tx_msg(9),
      Q => in9(1),
      R => '0'
    );
tx_free_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sm_state(1),
      I1 => sm_state(0),
      I2 => sm_state(2),
      O => tx_free
    );
uart_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => uart_uut_n_7,
      Q => uart_state,
      R => '0'
    );
uart_uut: entity work.MAES_uart_logger_0_0_uart
     port map (
      D(2 downto 0) => \next_sm_state__0\(2 downto 0),
      E(0) => uart_uut_n_9,
      \FSM_onehot_tx_count_state_reg[1]\ => wait_for_is_transmitting_reg_n_0,
      \FSM_onehot_tx_count_state_reg[1]_0\ => \FSM_onehot_tx_count_state_reg_n_0_[0]\,
      \FSM_sequential_next_sm_state_reg[0]\ => \FSM_sequential_next_sm_state[2]_i_3_n_0\,
      \FSM_sequential_next_sm_state_reg[0]_0\ => \FSM_sequential_next_sm_state[2]_i_4_n_0\,
      \FSM_sequential_sm_state_reg[1]\ => uart_uut_n_5,
      \FSM_sequential_sm_state_reg[2]\ => uart_uut_n_4,
      \FSM_sequential_sm_state_reg[2]_0\ => uart_uut_n_6,
      Q(2 downto 0) => sm_state(2 downto 0),
      UART_RXD_OUT => UART_RXD_OUT,
      UART_TXD_IN => UART_TXD_IN,
      clk => clk,
      \next_rx_count_reg[0]\ => \next_rx_count[3]_i_3_n_0\,
      \recv_state_reg[0]_0\ => uart_uut_n_8,
      \tx_bits_remaining_reg[3]_0\ => enable_tx_reg_n_0,
      tx_count => tx_count,
      tx_count_state(0) => tx_count_state(1),
      \tx_data_reg[7]_0\(7 downto 0) => send_data(7 downto 0),
      tx_start => tx_start,
      uart_state => uart_state,
      uart_state_reg => uart_uut_n_7,
      wait_for_is_transmitting_reg => uart_uut_n_1,
      wait_for_is_transmitting_reg_0 => uart_uut_n_2,
      wait_for_is_transmitting_reg_1 => uart_uut_n_3
    );
wait_for_is_transmitting_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000200"
    )
        port map (
      I0 => \FSM_onehot_tx_count_state_reg_n_0_[0]\,
      I1 => sm_state(1),
      I2 => sm_state(2),
      I3 => sm_state(0),
      I4 => tx_count,
      I5 => wait_for_is_transmitting_reg_n_0,
      O => wait_for_is_transmitting_i_1_n_0
    );
wait_for_is_transmitting_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wait_for_is_transmitting_i_1_n_0,
      Q => wait_for_is_transmitting_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MAES_uart_logger_0_0 is
  port (
    clk : in STD_LOGIC;
    UART_TXD_IN : in STD_LOGIC;
    UART_RXD_OUT : out STD_LOGIC;
    tx_msg : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_start : in STD_LOGIC;
    tx_free : out STD_LOGIC;
    rx_msg : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_complete : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MAES_uart_logger_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MAES_uart_logger_0_0 : entity is "MAES_uart_logger_0_0,uart_logger,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of MAES_uart_logger_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of MAES_uart_logger_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of MAES_uart_logger_0_0 : entity is "uart_logger,Vivado 2020.2";
end MAES_uart_logger_0_0;

architecture STRUCTURE of MAES_uart_logger_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN MAES_sys_clock, INSERT_VIP 0";
begin
  rx_complete <= \<const0>\;
  rx_msg(63) <= \<const0>\;
  rx_msg(62) <= \<const0>\;
  rx_msg(61) <= \<const0>\;
  rx_msg(60) <= \<const0>\;
  rx_msg(59) <= \<const0>\;
  rx_msg(58) <= \<const0>\;
  rx_msg(57) <= \<const0>\;
  rx_msg(56) <= \<const0>\;
  rx_msg(55) <= \<const0>\;
  rx_msg(54) <= \<const0>\;
  rx_msg(53) <= \<const0>\;
  rx_msg(52) <= \<const0>\;
  rx_msg(51) <= \<const0>\;
  rx_msg(50) <= \<const0>\;
  rx_msg(49) <= \<const0>\;
  rx_msg(48) <= \<const0>\;
  rx_msg(47) <= \<const0>\;
  rx_msg(46) <= \<const0>\;
  rx_msg(45) <= \<const0>\;
  rx_msg(44) <= \<const0>\;
  rx_msg(43) <= \<const0>\;
  rx_msg(42) <= \<const0>\;
  rx_msg(41) <= \<const0>\;
  rx_msg(40) <= \<const0>\;
  rx_msg(39) <= \<const0>\;
  rx_msg(38) <= \<const0>\;
  rx_msg(37) <= \<const0>\;
  rx_msg(36) <= \<const0>\;
  rx_msg(35) <= \<const0>\;
  rx_msg(34) <= \<const0>\;
  rx_msg(33) <= \<const0>\;
  rx_msg(32) <= \<const0>\;
  rx_msg(31) <= \<const0>\;
  rx_msg(30) <= \<const0>\;
  rx_msg(29) <= \<const0>\;
  rx_msg(28) <= \<const0>\;
  rx_msg(27) <= \<const0>\;
  rx_msg(26) <= \<const0>\;
  rx_msg(25) <= \<const0>\;
  rx_msg(24) <= \<const0>\;
  rx_msg(23) <= \<const0>\;
  rx_msg(22) <= \<const0>\;
  rx_msg(21) <= \<const0>\;
  rx_msg(20) <= \<const0>\;
  rx_msg(19) <= \<const0>\;
  rx_msg(18) <= \<const0>\;
  rx_msg(17) <= \<const0>\;
  rx_msg(16) <= \<const0>\;
  rx_msg(15) <= \<const0>\;
  rx_msg(14) <= \<const0>\;
  rx_msg(13) <= \<const0>\;
  rx_msg(12) <= \<const0>\;
  rx_msg(11) <= \<const0>\;
  rx_msg(10) <= \<const0>\;
  rx_msg(9) <= \<const0>\;
  rx_msg(8) <= \<const0>\;
  rx_msg(7) <= \<const0>\;
  rx_msg(6) <= \<const0>\;
  rx_msg(5) <= \<const0>\;
  rx_msg(4) <= \<const0>\;
  rx_msg(3) <= \<const0>\;
  rx_msg(2) <= \<const0>\;
  rx_msg(1) <= \<const0>\;
  rx_msg(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.MAES_uart_logger_0_0_uart_logger
     port map (
      UART_RXD_OUT => UART_RXD_OUT,
      UART_TXD_IN => UART_TXD_IN,
      clk => clk,
      tx_free => tx_free,
      tx_msg(63 downto 0) => tx_msg(63 downto 0),
      tx_start => tx_start
    );
end STRUCTURE;
