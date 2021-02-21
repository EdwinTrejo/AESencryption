// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Feb 21 16:18:33 2021
// Host        : MobileSickHorse running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Xilinx_Projects/AESencryption/FPGA/MAESencryption_next/MAESencryption.srcs/sources_1/bd/MAES/ip/MAES_uart_logger_0_0/MAES_uart_logger_0_0_sim_netlist.v
// Design      : MAES_uart_logger_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MAES_uart_logger_0_0,uart_logger,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_logger,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module MAES_uart_logger_0_0
   (clk,
    UART_TXD_IN,
    UART_RXD_OUT,
    tx_msg,
    tx_start,
    tx_free,
    rx_msg,
    rx_complete);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN MAES_sys_clock, INSERT_VIP 0" *) input clk;
  input UART_TXD_IN;
  output UART_RXD_OUT;
  input [63:0]tx_msg;
  input tx_start;
  output tx_free;
  output [63:0]rx_msg;
  output rx_complete;

  wire \<const0> ;
  wire UART_RXD_OUT;
  wire UART_TXD_IN;
  wire clk;
  wire tx_free;
  wire [63:0]tx_msg;
  wire tx_start;

  assign rx_complete = \<const0> ;
  assign rx_msg[63] = \<const0> ;
  assign rx_msg[62] = \<const0> ;
  assign rx_msg[61] = \<const0> ;
  assign rx_msg[60] = \<const0> ;
  assign rx_msg[59] = \<const0> ;
  assign rx_msg[58] = \<const0> ;
  assign rx_msg[57] = \<const0> ;
  assign rx_msg[56] = \<const0> ;
  assign rx_msg[55] = \<const0> ;
  assign rx_msg[54] = \<const0> ;
  assign rx_msg[53] = \<const0> ;
  assign rx_msg[52] = \<const0> ;
  assign rx_msg[51] = \<const0> ;
  assign rx_msg[50] = \<const0> ;
  assign rx_msg[49] = \<const0> ;
  assign rx_msg[48] = \<const0> ;
  assign rx_msg[47] = \<const0> ;
  assign rx_msg[46] = \<const0> ;
  assign rx_msg[45] = \<const0> ;
  assign rx_msg[44] = \<const0> ;
  assign rx_msg[43] = \<const0> ;
  assign rx_msg[42] = \<const0> ;
  assign rx_msg[41] = \<const0> ;
  assign rx_msg[40] = \<const0> ;
  assign rx_msg[39] = \<const0> ;
  assign rx_msg[38] = \<const0> ;
  assign rx_msg[37] = \<const0> ;
  assign rx_msg[36] = \<const0> ;
  assign rx_msg[35] = \<const0> ;
  assign rx_msg[34] = \<const0> ;
  assign rx_msg[33] = \<const0> ;
  assign rx_msg[32] = \<const0> ;
  assign rx_msg[31] = \<const0> ;
  assign rx_msg[30] = \<const0> ;
  assign rx_msg[29] = \<const0> ;
  assign rx_msg[28] = \<const0> ;
  assign rx_msg[27] = \<const0> ;
  assign rx_msg[26] = \<const0> ;
  assign rx_msg[25] = \<const0> ;
  assign rx_msg[24] = \<const0> ;
  assign rx_msg[23] = \<const0> ;
  assign rx_msg[22] = \<const0> ;
  assign rx_msg[21] = \<const0> ;
  assign rx_msg[20] = \<const0> ;
  assign rx_msg[19] = \<const0> ;
  assign rx_msg[18] = \<const0> ;
  assign rx_msg[17] = \<const0> ;
  assign rx_msg[16] = \<const0> ;
  assign rx_msg[15] = \<const0> ;
  assign rx_msg[14] = \<const0> ;
  assign rx_msg[13] = \<const0> ;
  assign rx_msg[12] = \<const0> ;
  assign rx_msg[11] = \<const0> ;
  assign rx_msg[10] = \<const0> ;
  assign rx_msg[9] = \<const0> ;
  assign rx_msg[8] = \<const0> ;
  assign rx_msg[7] = \<const0> ;
  assign rx_msg[6] = \<const0> ;
  assign rx_msg[5] = \<const0> ;
  assign rx_msg[4] = \<const0> ;
  assign rx_msg[3] = \<const0> ;
  assign rx_msg[2] = \<const0> ;
  assign rx_msg[1] = \<const0> ;
  assign rx_msg[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  MAES_uart_logger_0_0_uart_logger inst
       (.UART_RXD_OUT(UART_RXD_OUT),
        .UART_TXD_IN(UART_TXD_IN),
        .clk(clk),
        .tx_free(tx_free),
        .tx_msg(tx_msg),
        .tx_start(tx_start));
endmodule

(* ORIG_REF_NAME = "uart" *) 
module MAES_uart_logger_0_0_uart
   (UART_RXD_OUT,
    wait_for_is_transmitting_reg,
    wait_for_is_transmitting_reg_0,
    wait_for_is_transmitting_reg_1,
    \FSM_sequential_sm_state_reg[2] ,
    \FSM_sequential_sm_state_reg[1] ,
    \FSM_sequential_sm_state_reg[2]_0 ,
    uart_state_reg,
    \recv_state_reg[0]_0 ,
    E,
    clk,
    tx_start,
    uart_state,
    \tx_bits_remaining_reg[3]_0 ,
    \FSM_onehot_tx_count_state_reg[1] ,
    \FSM_onehot_tx_count_state_reg[1]_0 ,
    tx_count_state,
    tx_count,
    Q,
    D,
    \next_rx_count_reg[0] ,
    \FSM_sequential_next_sm_state_reg[0] ,
    \FSM_sequential_next_sm_state_reg[0]_0 ,
    UART_TXD_IN,
    \tx_data_reg[7]_0 );
  output UART_RXD_OUT;
  output wait_for_is_transmitting_reg;
  output wait_for_is_transmitting_reg_0;
  output wait_for_is_transmitting_reg_1;
  output \FSM_sequential_sm_state_reg[2] ;
  output \FSM_sequential_sm_state_reg[1] ;
  output \FSM_sequential_sm_state_reg[2]_0 ;
  output uart_state_reg;
  output \recv_state_reg[0]_0 ;
  output [0:0]E;
  input clk;
  input tx_start;
  input uart_state;
  input \tx_bits_remaining_reg[3]_0 ;
  input \FSM_onehot_tx_count_state_reg[1] ;
  input \FSM_onehot_tx_count_state_reg[1]_0 ;
  input [0:0]tx_count_state;
  input tx_count;
  input [2:0]Q;
  input [2:0]D;
  input \next_rx_count_reg[0] ;
  input \FSM_sequential_next_sm_state_reg[0] ;
  input \FSM_sequential_next_sm_state_reg[0]_0 ;
  input UART_TXD_IN;
  input [7:0]\tx_data_reg[7]_0 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_tx_count_state_reg[1] ;
  wire \FSM_onehot_tx_count_state_reg[1]_0 ;
  wire \FSM_sequential_next_sm_state[0]_i_2_n_0 ;
  wire \FSM_sequential_next_sm_state[1]_i_2_n_0 ;
  wire \FSM_sequential_next_sm_state[2]_i_2_n_0 ;
  wire \FSM_sequential_next_sm_state_reg[0] ;
  wire \FSM_sequential_next_sm_state_reg[0]_0 ;
  wire \FSM_sequential_sm_state_reg[1] ;
  wire \FSM_sequential_sm_state_reg[2] ;
  wire \FSM_sequential_sm_state_reg[2]_0 ;
  wire [2:0]Q;
  wire UART_RXD_OUT;
  wire UART_TXD_IN;
  wire clk;
  wire \next_rx_count_reg[0] ;
  wire [2:0]recv_state;
  wire \recv_state[0]_i_2_n_0 ;
  wire \recv_state_reg[0]_0 ;
  wire \recv_state_reg_n_0_[0] ;
  wire \recv_state_reg_n_0_[1] ;
  wire \recv_state_reg_n_0_[2] ;
  wire \rx_bits_remaining[0]_i_1_n_0 ;
  wire \rx_bits_remaining[1]_i_1_n_0 ;
  wire \rx_bits_remaining[2]_i_1_n_0 ;
  wire \rx_bits_remaining[3]_i_1_n_0 ;
  wire \rx_bits_remaining[3]_i_2_n_0 ;
  wire \rx_bits_remaining_reg_n_0_[0] ;
  wire \rx_bits_remaining_reg_n_0_[1] ;
  wire \rx_bits_remaining_reg_n_0_[2] ;
  wire \rx_bits_remaining_reg_n_0_[3] ;
  wire [10:0]rx_clk_divider;
  wire \rx_clk_divider[0]_i_1_n_0 ;
  wire \rx_clk_divider[10]_i_1_n_0 ;
  wire \rx_clk_divider[10]_i_2_n_0 ;
  wire \rx_clk_divider[10]_i_3_n_0 ;
  wire \rx_clk_divider[10]_i_4_n_0 ;
  wire \rx_clk_divider[10]_i_5_n_0 ;
  wire \rx_clk_divider[10]_i_6_n_0 ;
  wire \rx_clk_divider[10]_i_7_n_0 ;
  wire \rx_clk_divider[1]_i_1_n_0 ;
  wire \rx_clk_divider[2]_i_1_n_0 ;
  wire \rx_clk_divider[3]_i_1_n_0 ;
  wire \rx_clk_divider[4]_i_1_n_0 ;
  wire \rx_clk_divider[5]_i_1_n_0 ;
  wire \rx_clk_divider[5]_i_2_n_0 ;
  wire \rx_clk_divider[6]_i_1_n_0 ;
  wire \rx_clk_divider[7]_i_1_n_0 ;
  wire \rx_clk_divider[7]_i_2_n_0 ;
  wire \rx_clk_divider[7]_i_3_n_0 ;
  wire \rx_clk_divider[8]_i_1_n_0 ;
  wire \rx_clk_divider[9]_i_1_n_0 ;
  wire \rx_clk_divider[9]_i_2_n_0 ;
  wire [5:0]rx_countdown;
  wire \rx_countdown[2]_i_2_n_0 ;
  wire \rx_countdown[2]_i_3_n_0 ;
  wire \rx_countdown[2]_i_4_n_0 ;
  wire \rx_countdown[4]_i_2_n_0 ;
  wire \rx_countdown[4]_i_3_n_0 ;
  wire \rx_countdown[4]_i_4_n_0 ;
  wire \rx_countdown[5]_i_1_n_0 ;
  wire \rx_countdown[5]_i_3_n_0 ;
  wire [5:0]rx_countdown_0;
  wire \tx_bits_remaining[0]_i_1_n_0 ;
  wire \tx_bits_remaining[1]_i_1_n_0 ;
  wire \tx_bits_remaining[2]_i_1_n_0 ;
  wire \tx_bits_remaining[3]_i_1_n_0 ;
  wire \tx_bits_remaining[3]_i_2_n_0 ;
  wire \tx_bits_remaining[3]_i_3_n_0 ;
  wire \tx_bits_remaining_reg[3]_0 ;
  wire \tx_bits_remaining_reg_n_0_[0] ;
  wire \tx_bits_remaining_reg_n_0_[1] ;
  wire \tx_bits_remaining_reg_n_0_[2] ;
  wire \tx_bits_remaining_reg_n_0_[3] ;
  wire [10:0]tx_clk_divider;
  wire \tx_clk_divider[0]_i_1_n_0 ;
  wire \tx_clk_divider[10]_i_1_n_0 ;
  wire \tx_clk_divider[10]_i_2_n_0 ;
  wire \tx_clk_divider[10]_i_3_n_0 ;
  wire \tx_clk_divider[1]_i_1_n_0 ;
  wire \tx_clk_divider[2]_i_1_n_0 ;
  wire \tx_clk_divider[3]_i_1_n_0 ;
  wire \tx_clk_divider[4]_i_1_n_0 ;
  wire \tx_clk_divider[5]_i_1_n_0 ;
  wire \tx_clk_divider[6]_i_1_n_0 ;
  wire \tx_clk_divider[7]_i_1_n_0 ;
  wire \tx_clk_divider[8]_i_1_n_0 ;
  wire \tx_clk_divider[9]_i_1_n_0 ;
  wire \tx_clk_divider[9]_i_2_n_0 ;
  wire \tx_clk_divider[9]_i_3_n_0 ;
  wire \tx_clk_divider[9]_i_4_n_0 ;
  wire \tx_clk_divider[9]_i_5_n_0 ;
  wire tx_count;
  wire [0:0]tx_count_state;
  wire [5:0]tx_countdown;
  wire \tx_countdown[0]_i_1_n_0 ;
  wire \tx_countdown[1]_i_1_n_0 ;
  wire \tx_countdown[2]_i_1_n_0 ;
  wire \tx_countdown[2]_i_2_n_0 ;
  wire \tx_countdown[2]_i_3_n_0 ;
  wire \tx_countdown[2]_i_4_n_0 ;
  wire \tx_countdown[2]_i_5_n_0 ;
  wire \tx_countdown[2]_i_6_n_0 ;
  wire \tx_countdown[3]_i_1_n_0 ;
  wire \tx_countdown[3]_i_2_n_0 ;
  wire \tx_countdown[3]_i_3_n_0 ;
  wire \tx_countdown[4]_i_1_n_0 ;
  wire \tx_countdown[5]_i_1_n_0 ;
  wire \tx_countdown[5]_i_2_n_0 ;
  wire \tx_data[0]_i_1_n_0 ;
  wire \tx_data[1]_i_1_n_0 ;
  wire \tx_data[2]_i_1_n_0 ;
  wire \tx_data[3]_i_1_n_0 ;
  wire \tx_data[4]_i_1_n_0 ;
  wire \tx_data[5]_i_1_n_0 ;
  wire \tx_data[6]_i_1_n_0 ;
  wire \tx_data[7]_i_1_n_0 ;
  wire [7:0]\tx_data_reg[7]_0 ;
  wire \tx_data_reg_n_0_[0] ;
  wire \tx_data_reg_n_0_[1] ;
  wire \tx_data_reg_n_0_[2] ;
  wire \tx_data_reg_n_0_[3] ;
  wire \tx_data_reg_n_0_[4] ;
  wire \tx_data_reg_n_0_[5] ;
  wire \tx_data_reg_n_0_[6] ;
  wire \tx_data_reg_n_0_[7] ;
  wire tx_out_i_1_n_0;
  wire tx_out_i_2_n_0;
  wire tx_out_i_3_n_0;
  wire tx_out_i_4_n_0;
  wire tx_out_i_5_n_0;
  wire tx_out_i_6_n_0;
  wire tx_out_i_7_n_0;
  wire tx_out_i_8_n_0;
  wire tx_start;
  wire [1:0]tx_state;
  wire \tx_state_reg_n_0_[0] ;
  wire \tx_state_reg_n_0_[1] ;
  wire uart_state;
  wire uart_state_reg;
  wire wait_for_is_transmitting_reg;
  wire wait_for_is_transmitting_reg_0;
  wire wait_for_is_transmitting_reg_1;

  LUT6 #(
    .INIT(64'hFFFFFFFF0000444C)) 
    \FSM_onehot_tx_count_state[0]_i_1 
       (.I0(\FSM_onehot_tx_count_state_reg[1] ),
        .I1(\FSM_onehot_tx_count_state_reg[1]_0 ),
        .I2(\tx_state_reg_n_0_[1] ),
        .I3(\tx_state_reg_n_0_[0] ),
        .I4(tx_count_state),
        .I5(tx_count),
        .O(wait_for_is_transmitting_reg_0));
  LUT6 #(
    .INIT(64'hFFFDCCCCFFFD8880)) 
    \FSM_onehot_tx_count_state[1]_i_1 
       (.I0(\FSM_onehot_tx_count_state_reg[1] ),
        .I1(\FSM_onehot_tx_count_state_reg[1]_0 ),
        .I2(\tx_state_reg_n_0_[1] ),
        .I3(\tx_state_reg_n_0_[0] ),
        .I4(tx_count_state),
        .I5(tx_count),
        .O(wait_for_is_transmitting_reg));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_onehot_tx_count_state[2]_i_1 
       (.I0(\FSM_onehot_tx_count_state_reg[1] ),
        .I1(\tx_state_reg_n_0_[1] ),
        .I2(\tx_state_reg_n_0_[0] ),
        .I3(tx_count_state),
        .O(wait_for_is_transmitting_reg_1));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \FSM_sequential_next_sm_state[0]_i_1 
       (.I0(\FSM_sequential_next_sm_state[0]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\FSM_sequential_next_sm_state[2]_i_2_n_0 ),
        .I5(D[0]),
        .O(\FSM_sequential_sm_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF4555)) 
    \FSM_sequential_next_sm_state[0]_i_2 
       (.I0(tx_start),
        .I1(\recv_state_reg_n_0_[0] ),
        .I2(\recv_state_reg_n_0_[2] ),
        .I3(\recv_state_reg_n_0_[1] ),
        .I4(uart_state),
        .O(\FSM_sequential_next_sm_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1011FFFF10110000)) 
    \FSM_sequential_next_sm_state[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_next_sm_state[1]_i_2_n_0 ),
        .I4(\FSM_sequential_next_sm_state[2]_i_2_n_0 ),
        .I5(D[1]),
        .O(\FSM_sequential_sm_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \FSM_sequential_next_sm_state[1]_i_2 
       (.I0(tx_start),
        .I1(\recv_state_reg_n_0_[0] ),
        .I2(\recv_state_reg_n_0_[2] ),
        .I3(\recv_state_reg_n_0_[1] ),
        .I4(uart_state),
        .O(\FSM_sequential_next_sm_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \FSM_sequential_next_sm_state[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\FSM_sequential_next_sm_state[2]_i_2_n_0 ),
        .I4(D[2]),
        .O(\FSM_sequential_sm_state_reg[2] ));
  LUT6 #(
    .INIT(64'h5050707050557070)) 
    \FSM_sequential_next_sm_state[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\FSM_sequential_next_sm_state_reg[0] ),
        .I3(\recv_state_reg[0]_0 ),
        .I4(Q[1]),
        .I5(\FSM_sequential_next_sm_state_reg[0]_0 ),
        .O(\FSM_sequential_next_sm_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000004400000F)) 
    \next_rx_count[3]_i_1 
       (.I0(\recv_state_reg[0]_0 ),
        .I1(\next_rx_count_reg[0] ),
        .I2(\FSM_sequential_next_sm_state[1]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(E));
  LUT6 #(
    .INIT(64'hF0F0000038F8F03F)) 
    \recv_state[0]_i_1 
       (.I0(\recv_state[0]_i_2_n_0 ),
        .I1(\rx_countdown[2]_i_2_n_0 ),
        .I2(\recv_state_reg_n_0_[0] ),
        .I3(UART_TXD_IN),
        .I4(\recv_state_reg_n_0_[1] ),
        .I5(\recv_state_reg_n_0_[2] ),
        .O(recv_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \recv_state[0]_i_2 
       (.I0(\rx_bits_remaining_reg_n_0_[3] ),
        .I1(\rx_bits_remaining_reg_n_0_[2] ),
        .I2(\rx_bits_remaining_reg_n_0_[0] ),
        .I3(\rx_bits_remaining_reg_n_0_[1] ),
        .O(\recv_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h8C868C8C)) 
    \recv_state[1]_i_1 
       (.I0(\recv_state_reg_n_0_[0] ),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(\recv_state_reg_n_0_[2] ),
        .I3(UART_TXD_IN),
        .I4(\rx_countdown[2]_i_2_n_0 ),
        .O(recv_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hABAB8880)) 
    \recv_state[2]_i_1 
       (.I0(\recv_state_reg_n_0_[0] ),
        .I1(\rx_countdown[2]_i_2_n_0 ),
        .I2(\recv_state_reg_n_0_[1] ),
        .I3(UART_TXD_IN),
        .I4(\recv_state_reg_n_0_[2] ),
        .O(recv_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(recv_state[0]),
        .Q(\recv_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \recv_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(recv_state[1]),
        .Q(\recv_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \recv_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(recv_state[2]),
        .Q(\recv_state_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \rx_bits_remaining[0]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\rx_bits_remaining_reg_n_0_[0] ),
        .O(\rx_bits_remaining[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \rx_bits_remaining[1]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\rx_bits_remaining_reg_n_0_[0] ),
        .I2(\rx_bits_remaining_reg_n_0_[1] ),
        .O(\rx_bits_remaining[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \rx_bits_remaining[2]_i_1 
       (.I0(\rx_bits_remaining_reg_n_0_[1] ),
        .I1(\rx_bits_remaining_reg_n_0_[0] ),
        .I2(\rx_bits_remaining_reg_n_0_[2] ),
        .I3(\recv_state_reg_n_0_[1] ),
        .O(\rx_bits_remaining[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03040000)) 
    \rx_bits_remaining[3]_i_1 
       (.I0(UART_TXD_IN),
        .I1(\recv_state_reg_n_0_[0] ),
        .I2(\recv_state_reg_n_0_[2] ),
        .I3(\recv_state_reg_n_0_[1] ),
        .I4(\rx_countdown[2]_i_2_n_0 ),
        .O(\rx_bits_remaining[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFEAAAB)) 
    \rx_bits_remaining[3]_i_2 
       (.I0(\recv_state_reg_n_0_[0] ),
        .I1(\rx_bits_remaining_reg_n_0_[0] ),
        .I2(\rx_bits_remaining_reg_n_0_[1] ),
        .I3(\rx_bits_remaining_reg_n_0_[2] ),
        .I4(\rx_bits_remaining_reg_n_0_[3] ),
        .O(\rx_bits_remaining[3]_i_2_n_0 ));
  FDRE \rx_bits_remaining_reg[0] 
       (.C(clk),
        .CE(\rx_bits_remaining[3]_i_1_n_0 ),
        .D(\rx_bits_remaining[0]_i_1_n_0 ),
        .Q(\rx_bits_remaining_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rx_bits_remaining_reg[1] 
       (.C(clk),
        .CE(\rx_bits_remaining[3]_i_1_n_0 ),
        .D(\rx_bits_remaining[1]_i_1_n_0 ),
        .Q(\rx_bits_remaining_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rx_bits_remaining_reg[2] 
       (.C(clk),
        .CE(\rx_bits_remaining[3]_i_1_n_0 ),
        .D(\rx_bits_remaining[2]_i_1_n_0 ),
        .Q(\rx_bits_remaining_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rx_bits_remaining_reg[3] 
       (.C(clk),
        .CE(\rx_bits_remaining[3]_i_1_n_0 ),
        .D(\rx_bits_remaining[3]_i_2_n_0 ),
        .Q(\rx_bits_remaining_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rx_clk_divider[0]_i_1 
       (.I0(rx_clk_divider[0]),
        .O(\rx_clk_divider[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FE01)) 
    \rx_clk_divider[10]_i_1 
       (.I0(\rx_clk_divider[10]_i_2_n_0 ),
        .I1(rx_clk_divider[8]),
        .I2(rx_clk_divider[9]),
        .I3(rx_clk_divider[10]),
        .I4(\rx_clk_divider[10]_i_3_n_0 ),
        .I5(\rx_clk_divider[10]_i_4_n_0 ),
        .O(\rx_clk_divider[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \rx_clk_divider[10]_i_2 
       (.I0(rx_clk_divider[7]),
        .I1(\rx_clk_divider[7]_i_3_n_0 ),
        .I2(rx_clk_divider[6]),
        .O(\rx_clk_divider[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_clk_divider[10]_i_3 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(UART_TXD_IN),
        .I2(\recv_state_reg_n_0_[0] ),
        .I3(\recv_state_reg_n_0_[2] ),
        .O(\rx_clk_divider[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000041)) 
    \rx_clk_divider[10]_i_4 
       (.I0(\rx_clk_divider[9]_i_2_n_0 ),
        .I1(\rx_clk_divider[10]_i_5_n_0 ),
        .I2(rx_clk_divider[5]),
        .I3(\rx_clk_divider[10]_i_6_n_0 ),
        .I4(rx_clk_divider[7]),
        .O(\rx_clk_divider[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \rx_clk_divider[10]_i_5 
       (.I0(rx_clk_divider[2]),
        .I1(rx_clk_divider[1]),
        .I2(rx_clk_divider[0]),
        .I3(rx_clk_divider[3]),
        .I4(rx_clk_divider[4]),
        .O(\rx_clk_divider[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \rx_clk_divider[10]_i_6 
       (.I0(rx_clk_divider[4]),
        .I1(\rx_clk_divider[10]_i_7_n_0 ),
        .I2(rx_clk_divider[3]),
        .I3(rx_clk_divider[1]),
        .I4(rx_clk_divider[0]),
        .O(\rx_clk_divider[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_clk_divider[10]_i_7 
       (.I0(rx_clk_divider[8]),
        .I1(rx_clk_divider[6]),
        .I2(rx_clk_divider[10]),
        .I3(rx_clk_divider[2]),
        .O(\rx_clk_divider[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999990)) 
    \rx_clk_divider[1]_i_1 
       (.I0(rx_clk_divider[1]),
        .I1(rx_clk_divider[0]),
        .I2(\recv_state_reg_n_0_[2] ),
        .I3(\recv_state_reg_n_0_[0] ),
        .I4(UART_TXD_IN),
        .I5(\recv_state_reg_n_0_[1] ),
        .O(\rx_clk_divider[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E1)) 
    \rx_clk_divider[2]_i_1 
       (.I0(rx_clk_divider[0]),
        .I1(rx_clk_divider[1]),
        .I2(rx_clk_divider[2]),
        .I3(\rx_clk_divider[10]_i_3_n_0 ),
        .I4(\rx_clk_divider[10]_i_4_n_0 ),
        .O(\rx_clk_divider[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \rx_clk_divider[3]_i_1 
       (.I0(rx_clk_divider[3]),
        .I1(rx_clk_divider[0]),
        .I2(rx_clk_divider[1]),
        .I3(rx_clk_divider[2]),
        .O(\rx_clk_divider[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \rx_clk_divider[4]_i_1 
       (.I0(rx_clk_divider[4]),
        .I1(rx_clk_divider[2]),
        .I2(rx_clk_divider[1]),
        .I3(rx_clk_divider[0]),
        .I4(rx_clk_divider[3]),
        .O(\rx_clk_divider[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \rx_clk_divider[5]_i_1 
       (.I0(\rx_clk_divider[5]_i_2_n_0 ),
        .I1(\recv_state_reg_n_0_[2] ),
        .I2(\recv_state_reg_n_0_[0] ),
        .I3(UART_TXD_IN),
        .I4(\recv_state_reg_n_0_[1] ),
        .O(\rx_clk_divider[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \rx_clk_divider[5]_i_2 
       (.I0(rx_clk_divider[5]),
        .I1(rx_clk_divider[4]),
        .I2(rx_clk_divider[3]),
        .I3(rx_clk_divider[0]),
        .I4(rx_clk_divider[1]),
        .I5(rx_clk_divider[2]),
        .O(\rx_clk_divider[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \rx_clk_divider[6]_i_1 
       (.I0(rx_clk_divider[6]),
        .I1(\rx_clk_divider[7]_i_3_n_0 ),
        .O(\rx_clk_divider[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_clk_divider[7]_i_1 
       (.I0(\rx_clk_divider[10]_i_4_n_0 ),
        .I1(\recv_state_reg_n_0_[2] ),
        .I2(\recv_state_reg_n_0_[0] ),
        .I3(UART_TXD_IN),
        .I4(\recv_state_reg_n_0_[1] ),
        .O(\rx_clk_divider[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \rx_clk_divider[7]_i_2 
       (.I0(rx_clk_divider[6]),
        .I1(\rx_clk_divider[7]_i_3_n_0 ),
        .I2(rx_clk_divider[7]),
        .O(\rx_clk_divider[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rx_clk_divider[7]_i_3 
       (.I0(rx_clk_divider[5]),
        .I1(rx_clk_divider[4]),
        .I2(rx_clk_divider[3]),
        .I3(rx_clk_divider[0]),
        .I4(rx_clk_divider[1]),
        .I5(rx_clk_divider[2]),
        .O(\rx_clk_divider[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0009)) 
    \rx_clk_divider[8]_i_1 
       (.I0(\rx_clk_divider[10]_i_2_n_0 ),
        .I1(rx_clk_divider[8]),
        .I2(\rx_clk_divider[10]_i_3_n_0 ),
        .I3(\rx_clk_divider[10]_i_4_n_0 ),
        .O(\rx_clk_divider[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \rx_clk_divider[9]_i_1 
       (.I0(\rx_clk_divider[9]_i_2_n_0 ),
        .I1(\recv_state_reg_n_0_[2] ),
        .I2(\recv_state_reg_n_0_[0] ),
        .I3(UART_TXD_IN),
        .I4(\recv_state_reg_n_0_[1] ),
        .O(\rx_clk_divider[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \rx_clk_divider[9]_i_2 
       (.I0(rx_clk_divider[9]),
        .I1(rx_clk_divider[7]),
        .I2(\rx_clk_divider[7]_i_3_n_0 ),
        .I3(rx_clk_divider[6]),
        .I4(rx_clk_divider[8]),
        .O(\rx_clk_divider[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_clk_divider_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_clk_divider[0]_i_1_n_0 ),
        .Q(rx_clk_divider[0]),
        .S(\rx_clk_divider[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_clk_divider_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_clk_divider[10]_i_1_n_0 ),
        .Q(rx_clk_divider[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_clk_divider_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_clk_divider[1]_i_1_n_0 ),
        .Q(rx_clk_divider[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_clk_divider_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_clk_divider[2]_i_1_n_0 ),
        .Q(rx_clk_divider[2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \rx_clk_divider_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_clk_divider[3]_i_1_n_0 ),
        .Q(rx_clk_divider[3]),
        .S(\rx_clk_divider[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_clk_divider_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_clk_divider[4]_i_1_n_0 ),
        .Q(rx_clk_divider[4]),
        .S(\rx_clk_divider[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_clk_divider_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_clk_divider[5]_i_1_n_0 ),
        .Q(rx_clk_divider[5]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \rx_clk_divider_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_clk_divider[6]_i_1_n_0 ),
        .Q(rx_clk_divider[6]),
        .S(\rx_clk_divider[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_clk_divider_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_clk_divider[7]_i_2_n_0 ),
        .Q(rx_clk_divider[7]),
        .S(\rx_clk_divider[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_clk_divider_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_clk_divider[8]_i_1_n_0 ),
        .Q(rx_clk_divider[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_clk_divider_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_clk_divider[9]_i_1_n_0 ),
        .Q(rx_clk_divider[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \rx_count[3]_i_1 
       (.I0(\recv_state_reg_n_0_[0] ),
        .I1(\recv_state_reg_n_0_[2] ),
        .I2(\recv_state_reg_n_0_[1] ),
        .O(\recv_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6666666666666660)) 
    \rx_countdown[0]_i_1 
       (.I0(\rx_clk_divider[10]_i_4_n_0 ),
        .I1(rx_countdown[0]),
        .I2(\recv_state_reg_n_0_[2] ),
        .I3(\recv_state_reg_n_0_[0] ),
        .I4(UART_TXD_IN),
        .I5(\recv_state_reg_n_0_[1] ),
        .O(rx_countdown_0[0]));
  LUT4 #(
    .INIT(16'hFF9A)) 
    \rx_countdown[1]_i_1 
       (.I0(rx_countdown[1]),
        .I1(rx_countdown[0]),
        .I2(\rx_clk_divider[10]_i_4_n_0 ),
        .I3(\rx_clk_divider[10]_i_3_n_0 ),
        .O(rx_countdown_0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFC00000288)) 
    \rx_countdown[2]_i_1 
       (.I0(\rx_countdown[2]_i_2_n_0 ),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(UART_TXD_IN),
        .I3(\recv_state_reg_n_0_[0] ),
        .I4(\recv_state_reg_n_0_[2] ),
        .I5(\rx_countdown[2]_i_3_n_0 ),
        .O(rx_countdown_0[2]));
  LUT6 #(
    .INIT(64'h00000000000001FE)) 
    \rx_countdown[2]_i_2 
       (.I0(\rx_clk_divider[9]_i_2_n_0 ),
        .I1(\rx_countdown[2]_i_4_n_0 ),
        .I2(\rx_clk_divider[7]_i_2_n_0 ),
        .I3(rx_countdown[0]),
        .I4(\rx_countdown[5]_i_3_n_0 ),
        .I5(rx_countdown[5]),
        .O(\rx_countdown[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \rx_countdown[2]_i_3 
       (.I0(rx_countdown[2]),
        .I1(rx_countdown[0]),
        .I2(rx_clk_divider[10]),
        .I3(\rx_countdown[4]_i_3_n_0 ),
        .I4(\rx_clk_divider[9]_i_2_n_0 ),
        .I5(rx_countdown[1]),
        .O(\rx_countdown[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \rx_countdown[2]_i_4 
       (.I0(\rx_clk_divider[5]_i_2_n_0 ),
        .I1(rx_clk_divider[0]),
        .I2(rx_clk_divider[1]),
        .I3(rx_clk_divider[3]),
        .I4(\rx_clk_divider[10]_i_7_n_0 ),
        .I5(\rx_clk_divider[4]_i_1_n_0 ),
        .O(\rx_countdown[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666666660)) 
    \rx_countdown[3]_i_1 
       (.I0(\rx_countdown[4]_i_2_n_0 ),
        .I1(rx_countdown[3]),
        .I2(\recv_state_reg_n_0_[2] ),
        .I3(\recv_state_reg_n_0_[0] ),
        .I4(UART_TXD_IN),
        .I5(\recv_state_reg_n_0_[1] ),
        .O(rx_countdown_0[3]));
  LUT4 #(
    .INIT(16'h00D2)) 
    \rx_countdown[4]_i_1 
       (.I0(\rx_countdown[4]_i_2_n_0 ),
        .I1(rx_countdown[3]),
        .I2(rx_countdown[4]),
        .I3(\rx_clk_divider[10]_i_3_n_0 ),
        .O(rx_countdown_0[4]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rx_countdown[4]_i_2 
       (.I0(rx_countdown[0]),
        .I1(rx_clk_divider[10]),
        .I2(\rx_countdown[4]_i_3_n_0 ),
        .I3(\rx_clk_divider[9]_i_2_n_0 ),
        .I4(rx_countdown[1]),
        .I5(rx_countdown[2]),
        .O(\rx_countdown[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBE)) 
    \rx_countdown[4]_i_3 
       (.I0(rx_clk_divider[7]),
        .I1(rx_clk_divider[5]),
        .I2(\rx_clk_divider[10]_i_5_n_0 ),
        .I3(rx_clk_divider[6]),
        .I4(\rx_countdown[4]_i_4_n_0 ),
        .I5(rx_clk_divider[8]),
        .O(\rx_countdown[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \rx_countdown[4]_i_4 
       (.I0(rx_clk_divider[4]),
        .I1(rx_clk_divider[2]),
        .I2(rx_clk_divider[0]),
        .I3(rx_clk_divider[1]),
        .I4(rx_clk_divider[3]),
        .O(\rx_countdown[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \rx_countdown[5]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\recv_state_reg_n_0_[0] ),
        .I2(\recv_state_reg_n_0_[2] ),
        .O(\rx_countdown[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55510004)) 
    \rx_countdown[5]_i_2 
       (.I0(\rx_clk_divider[10]_i_3_n_0 ),
        .I1(\rx_clk_divider[10]_i_4_n_0 ),
        .I2(rx_countdown[0]),
        .I3(\rx_countdown[5]_i_3_n_0 ),
        .I4(rx_countdown[5]),
        .O(rx_countdown_0[5]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_countdown[5]_i_3 
       (.I0(rx_countdown[2]),
        .I1(rx_countdown[1]),
        .I2(rx_countdown[4]),
        .I3(rx_countdown[3]),
        .O(\rx_countdown[5]_i_3_n_0 ));
  FDRE \rx_countdown_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_countdown_0[0]),
        .Q(rx_countdown[0]),
        .R(\rx_countdown[5]_i_1_n_0 ));
  FDRE \rx_countdown_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_countdown_0[1]),
        .Q(rx_countdown[1]),
        .R(\rx_countdown[5]_i_1_n_0 ));
  FDRE \rx_countdown_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_countdown_0[2]),
        .Q(rx_countdown[2]),
        .R(\rx_countdown[5]_i_1_n_0 ));
  FDSE \rx_countdown_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_countdown_0[3]),
        .Q(rx_countdown[3]),
        .S(\rx_countdown[5]_i_1_n_0 ));
  FDRE \rx_countdown_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_countdown_0[4]),
        .Q(rx_countdown[4]),
        .R(\rx_countdown[5]_i_1_n_0 ));
  FDRE \rx_countdown_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_countdown_0[5]),
        .Q(rx_countdown[5]),
        .R(\rx_countdown[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tx_bits_remaining[0]_i_1 
       (.I0(\tx_state_reg_n_0_[0] ),
        .I1(\tx_bits_remaining_reg_n_0_[0] ),
        .O(\tx_bits_remaining[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \tx_bits_remaining[1]_i_1 
       (.I0(\tx_state_reg_n_0_[0] ),
        .I1(\tx_bits_remaining_reg_n_0_[0] ),
        .I2(\tx_bits_remaining_reg_n_0_[1] ),
        .O(\tx_bits_remaining[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \tx_bits_remaining[2]_i_1 
       (.I0(\tx_bits_remaining_reg_n_0_[1] ),
        .I1(\tx_bits_remaining_reg_n_0_[0] ),
        .I2(\tx_bits_remaining_reg_n_0_[2] ),
        .I3(\tx_state_reg_n_0_[0] ),
        .O(\tx_bits_remaining[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h010F0100)) 
    \tx_bits_remaining[3]_i_1 
       (.I0(\tx_bits_remaining[3]_i_3_n_0 ),
        .I1(tx_out_i_2_n_0),
        .I2(\tx_state_reg_n_0_[1] ),
        .I3(\tx_state_reg_n_0_[0] ),
        .I4(\tx_bits_remaining_reg[3]_0 ),
        .O(\tx_bits_remaining[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFE01FFFF)) 
    \tx_bits_remaining[3]_i_2 
       (.I0(\tx_bits_remaining_reg_n_0_[0] ),
        .I1(\tx_bits_remaining_reg_n_0_[1] ),
        .I2(\tx_bits_remaining_reg_n_0_[2] ),
        .I3(\tx_bits_remaining_reg_n_0_[3] ),
        .I4(\tx_state_reg_n_0_[0] ),
        .O(\tx_bits_remaining[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFD02)) 
    \tx_bits_remaining[3]_i_3 
       (.I0(tx_out_i_6_n_0),
        .I1(tx_out_i_5_n_0),
        .I2(\tx_clk_divider[8]_i_1_n_0 ),
        .I3(tx_countdown[0]),
        .I4(\tx_countdown[5]_i_2_n_0 ),
        .I5(tx_countdown[5]),
        .O(\tx_bits_remaining[3]_i_3_n_0 ));
  FDRE \tx_bits_remaining_reg[0] 
       (.C(clk),
        .CE(\tx_bits_remaining[3]_i_1_n_0 ),
        .D(\tx_bits_remaining[0]_i_1_n_0 ),
        .Q(\tx_bits_remaining_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_bits_remaining_reg[1] 
       (.C(clk),
        .CE(\tx_bits_remaining[3]_i_1_n_0 ),
        .D(\tx_bits_remaining[1]_i_1_n_0 ),
        .Q(\tx_bits_remaining_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_bits_remaining_reg[2] 
       (.C(clk),
        .CE(\tx_bits_remaining[3]_i_1_n_0 ),
        .D(\tx_bits_remaining[2]_i_1_n_0 ),
        .Q(\tx_bits_remaining_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tx_bits_remaining_reg[3] 
       (.C(clk),
        .CE(\tx_bits_remaining[3]_i_1_n_0 ),
        .D(\tx_bits_remaining[3]_i_2_n_0 ),
        .Q(\tx_bits_remaining_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tx_clk_divider[0]_i_1 
       (.I0(tx_clk_divider[0]),
        .O(\tx_clk_divider[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \tx_clk_divider[10]_i_1 
       (.I0(\tx_bits_remaining_reg[3]_0 ),
        .I1(\tx_state_reg_n_0_[0] ),
        .I2(\tx_state_reg_n_0_[1] ),
        .O(\tx_clk_divider[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000100)) 
    \tx_clk_divider[10]_i_2 
       (.I0(tx_clk_divider[9]),
        .I1(tx_clk_divider[8]),
        .I2(tx_clk_divider[6]),
        .I3(\tx_clk_divider[10]_i_3_n_0 ),
        .I4(tx_clk_divider[7]),
        .I5(tx_clk_divider[10]),
        .O(\tx_clk_divider[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tx_clk_divider[10]_i_3 
       (.I0(tx_clk_divider[3]),
        .I1(tx_clk_divider[0]),
        .I2(tx_clk_divider[1]),
        .I3(tx_clk_divider[2]),
        .I4(tx_clk_divider[4]),
        .I5(tx_clk_divider[5]),
        .O(\tx_clk_divider[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h99909999)) 
    \tx_clk_divider[1]_i_1 
       (.I0(tx_clk_divider[1]),
        .I1(tx_clk_divider[0]),
        .I2(\tx_state_reg_n_0_[1] ),
        .I3(\tx_state_reg_n_0_[0] ),
        .I4(\tx_bits_remaining_reg[3]_0 ),
        .O(\tx_clk_divider[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \tx_clk_divider[2]_i_1 
       (.I0(tx_clk_divider[2]),
        .I1(tx_clk_divider[1]),
        .I2(tx_clk_divider[0]),
        .O(\tx_clk_divider[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \tx_clk_divider[3]_i_1 
       (.I0(tx_clk_divider[3]),
        .I1(tx_clk_divider[0]),
        .I2(tx_clk_divider[1]),
        .I3(tx_clk_divider[2]),
        .O(\tx_clk_divider[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \tx_clk_divider[4]_i_1 
       (.I0(tx_clk_divider[3]),
        .I1(tx_clk_divider[0]),
        .I2(tx_clk_divider[1]),
        .I3(tx_clk_divider[2]),
        .I4(tx_clk_divider[4]),
        .O(\tx_clk_divider[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \tx_clk_divider[5]_i_1 
       (.I0(tx_clk_divider[5]),
        .I1(tx_clk_divider[3]),
        .I2(tx_clk_divider[0]),
        .I3(tx_clk_divider[1]),
        .I4(tx_clk_divider[2]),
        .I5(tx_clk_divider[4]),
        .O(\tx_clk_divider[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \tx_clk_divider[6]_i_1 
       (.I0(tx_clk_divider[6]),
        .I1(tx_clk_divider[5]),
        .I2(\tx_clk_divider[9]_i_4_n_0 ),
        .O(\tx_clk_divider[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAA9A)) 
    \tx_clk_divider[7]_i_1 
       (.I0(tx_clk_divider[7]),
        .I1(tx_clk_divider[6]),
        .I2(\tx_clk_divider[9]_i_4_n_0 ),
        .I3(tx_clk_divider[5]),
        .O(\tx_clk_divider[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAAAAA9AA)) 
    \tx_clk_divider[8]_i_1 
       (.I0(tx_clk_divider[8]),
        .I1(tx_clk_divider[7]),
        .I2(tx_clk_divider[5]),
        .I3(\tx_clk_divider[9]_i_4_n_0 ),
        .I4(tx_clk_divider[6]),
        .O(\tx_clk_divider[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABAA)) 
    \tx_clk_divider[9]_i_1 
       (.I0(\tx_clk_divider[9]_i_3_n_0 ),
        .I1(\tx_state_reg_n_0_[1] ),
        .I2(\tx_state_reg_n_0_[0] ),
        .I3(\tx_bits_remaining_reg[3]_0 ),
        .O(\tx_clk_divider[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA9AA)) 
    \tx_clk_divider[9]_i_2 
       (.I0(tx_clk_divider[9]),
        .I1(tx_clk_divider[8]),
        .I2(tx_clk_divider[6]),
        .I3(\tx_clk_divider[9]_i_4_n_0 ),
        .I4(tx_clk_divider[5]),
        .I5(tx_clk_divider[7]),
        .O(\tx_clk_divider[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1001)) 
    \tx_clk_divider[9]_i_3 
       (.I0(tx_clk_divider[10]),
        .I1(tx_out_i_5_n_0),
        .I2(tx_clk_divider[8]),
        .I3(\tx_clk_divider[9]_i_5_n_0 ),
        .O(\tx_clk_divider[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \tx_clk_divider[9]_i_4 
       (.I0(tx_clk_divider[4]),
        .I1(tx_clk_divider[2]),
        .I2(tx_clk_divider[1]),
        .I3(tx_clk_divider[0]),
        .I4(tx_clk_divider[3]),
        .O(\tx_clk_divider[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \tx_clk_divider[9]_i_5 
       (.I0(tx_clk_divider[6]),
        .I1(\tx_clk_divider[9]_i_4_n_0 ),
        .I2(tx_clk_divider[5]),
        .I3(tx_clk_divider[7]),
        .O(\tx_clk_divider[9]_i_5_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \tx_clk_divider_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_clk_divider[0]_i_1_n_0 ),
        .Q(tx_clk_divider[0]),
        .S(\tx_clk_divider[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_clk_divider_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_clk_divider[10]_i_2_n_0 ),
        .Q(tx_clk_divider[10]),
        .R(\tx_clk_divider[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_clk_divider_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_clk_divider[1]_i_1_n_0 ),
        .Q(tx_clk_divider[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_clk_divider_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_clk_divider[2]_i_1_n_0 ),
        .Q(tx_clk_divider[2]),
        .R(\tx_clk_divider[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \tx_clk_divider_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_clk_divider[3]_i_1_n_0 ),
        .Q(tx_clk_divider[3]),
        .S(\tx_clk_divider[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \tx_clk_divider_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_clk_divider[4]_i_1_n_0 ),
        .Q(tx_clk_divider[4]),
        .S(\tx_clk_divider[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_clk_divider_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_clk_divider[5]_i_1_n_0 ),
        .Q(tx_clk_divider[5]),
        .R(\tx_clk_divider[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \tx_clk_divider_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_clk_divider[6]_i_1_n_0 ),
        .Q(tx_clk_divider[6]),
        .S(\tx_clk_divider[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \tx_clk_divider_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_clk_divider[7]_i_1_n_0 ),
        .Q(tx_clk_divider[7]),
        .S(\tx_clk_divider[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_clk_divider_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_clk_divider[8]_i_1_n_0 ),
        .Q(tx_clk_divider[8]),
        .R(\tx_clk_divider[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_clk_divider_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_clk_divider[9]_i_2_n_0 ),
        .Q(tx_clk_divider[9]),
        .R(\tx_clk_divider[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h66606666)) 
    \tx_countdown[0]_i_1 
       (.I0(\tx_clk_divider[9]_i_3_n_0 ),
        .I1(tx_countdown[0]),
        .I2(\tx_state_reg_n_0_[1] ),
        .I3(\tx_state_reg_n_0_[0] ),
        .I4(\tx_bits_remaining_reg[3]_0 ),
        .O(\tx_countdown[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tx_countdown[1]_i_1 
       (.I0(tx_countdown[1]),
        .I1(\tx_countdown[2]_i_2_n_0 ),
        .O(\tx_countdown[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFABABABABFF)) 
    \tx_countdown[2]_i_1 
       (.I0(\tx_clk_divider[10]_i_1_n_0 ),
        .I1(tx_out_i_2_n_0),
        .I2(tx_out_i_3_n_0),
        .I3(tx_countdown[1]),
        .I4(\tx_countdown[2]_i_2_n_0 ),
        .I5(tx_countdown[2]),
        .O(\tx_countdown[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFE)) 
    \tx_countdown[2]_i_2 
       (.I0(tx_countdown[0]),
        .I1(\tx_countdown[2]_i_3_n_0 ),
        .I2(\tx_countdown[2]_i_4_n_0 ),
        .I3(tx_clk_divider[9]),
        .I4(tx_clk_divider[8]),
        .I5(\tx_clk_divider[9]_i_5_n_0 ),
        .O(\tx_countdown[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFB4)) 
    \tx_countdown[2]_i_3 
       (.I0(tx_clk_divider[6]),
        .I1(\tx_clk_divider[10]_i_3_n_0 ),
        .I2(tx_clk_divider[7]),
        .I3(tx_clk_divider[10]),
        .O(\tx_countdown[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEEF)) 
    \tx_countdown[2]_i_4 
       (.I0(\tx_countdown[2]_i_5_n_0 ),
        .I1(tx_clk_divider[6]),
        .I2(tx_clk_divider[4]),
        .I3(\tx_countdown[2]_i_6_n_0 ),
        .O(\tx_countdown[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \tx_countdown[2]_i_5 
       (.I0(tx_clk_divider[5]),
        .I1(tx_clk_divider[2]),
        .I2(tx_clk_divider[0]),
        .I3(tx_clk_divider[1]),
        .I4(tx_clk_divider[3]),
        .O(\tx_countdown[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tx_countdown[2]_i_6 
       (.I0(tx_clk_divider[3]),
        .I1(tx_clk_divider[0]),
        .I2(tx_clk_divider[1]),
        .I3(tx_clk_divider[2]),
        .O(\tx_countdown[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h999999F999999999)) 
    \tx_countdown[3]_i_1 
       (.I0(\tx_countdown[3]_i_2_n_0 ),
        .I1(tx_countdown[3]),
        .I2(tx_out_i_2_n_0),
        .I3(\tx_bits_remaining[3]_i_3_n_0 ),
        .I4(\tx_state_reg_n_0_[1] ),
        .I5(\tx_state_reg_n_0_[0] ),
        .O(\tx_countdown[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \tx_countdown[3]_i_2 
       (.I0(tx_countdown[2]),
        .I1(tx_countdown[0]),
        .I2(\tx_countdown[2]_i_3_n_0 ),
        .I3(\tx_countdown[2]_i_4_n_0 ),
        .I4(\tx_countdown[3]_i_3_n_0 ),
        .I5(tx_countdown[1]),
        .O(\tx_countdown[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEF0010)) 
    \tx_countdown[3]_i_3 
       (.I0(tx_clk_divider[7]),
        .I1(tx_clk_divider[5]),
        .I2(\tx_clk_divider[9]_i_4_n_0 ),
        .I3(tx_clk_divider[6]),
        .I4(tx_clk_divider[8]),
        .I5(tx_clk_divider[9]),
        .O(\tx_countdown[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \tx_countdown[4]_i_1 
       (.I0(tx_countdown[4]),
        .I1(tx_countdown[2]),
        .I2(\tx_countdown[2]_i_2_n_0 ),
        .I3(tx_countdown[1]),
        .I4(tx_countdown[3]),
        .O(\tx_countdown[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FD02)) 
    \tx_countdown[5]_i_1 
       (.I0(\tx_clk_divider[9]_i_3_n_0 ),
        .I1(tx_countdown[0]),
        .I2(\tx_countdown[5]_i_2_n_0 ),
        .I3(tx_countdown[5]),
        .I4(\tx_clk_divider[10]_i_1_n_0 ),
        .O(\tx_countdown[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tx_countdown[5]_i_2 
       (.I0(tx_countdown[2]),
        .I1(tx_countdown[1]),
        .I2(tx_countdown[4]),
        .I3(tx_countdown[3]),
        .O(\tx_countdown[5]_i_2_n_0 ));
  FDRE \tx_countdown_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_countdown[0]_i_1_n_0 ),
        .Q(tx_countdown[0]),
        .R(1'b0));
  FDRE \tx_countdown_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_countdown[1]_i_1_n_0 ),
        .Q(tx_countdown[1]),
        .R(\tx_clk_divider[10]_i_1_n_0 ));
  FDRE \tx_countdown_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_countdown[2]_i_1_n_0 ),
        .Q(tx_countdown[2]),
        .R(1'b0));
  FDRE \tx_countdown_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_countdown[3]_i_1_n_0 ),
        .Q(tx_countdown[3]),
        .R(\tx_clk_divider[10]_i_1_n_0 ));
  FDRE \tx_countdown_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_countdown[4]_i_1_n_0 ),
        .Q(tx_countdown[4]),
        .R(\tx_clk_divider[10]_i_1_n_0 ));
  FDRE \tx_countdown_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_countdown[5]_i_1_n_0 ),
        .Q(tx_countdown[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data[0]_i_1 
       (.I0(\tx_data_reg_n_0_[1] ),
        .I1(\tx_state_reg_n_0_[0] ),
        .I2(\tx_data_reg[7]_0 [0]),
        .O(\tx_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data[1]_i_1 
       (.I0(\tx_data_reg_n_0_[2] ),
        .I1(\tx_state_reg_n_0_[0] ),
        .I2(\tx_data_reg[7]_0 [1]),
        .O(\tx_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data[2]_i_1 
       (.I0(\tx_data_reg_n_0_[3] ),
        .I1(\tx_state_reg_n_0_[0] ),
        .I2(\tx_data_reg[7]_0 [2]),
        .O(\tx_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data[3]_i_1 
       (.I0(\tx_data_reg_n_0_[4] ),
        .I1(\tx_state_reg_n_0_[0] ),
        .I2(\tx_data_reg[7]_0 [3]),
        .O(\tx_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data[4]_i_1 
       (.I0(\tx_data_reg_n_0_[5] ),
        .I1(\tx_state_reg_n_0_[0] ),
        .I2(\tx_data_reg[7]_0 [4]),
        .O(\tx_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data[5]_i_1 
       (.I0(\tx_data_reg_n_0_[6] ),
        .I1(\tx_state_reg_n_0_[0] ),
        .I2(\tx_data_reg[7]_0 [5]),
        .O(\tx_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data[6]_i_1 
       (.I0(\tx_data_reg_n_0_[7] ),
        .I1(\tx_state_reg_n_0_[0] ),
        .I2(\tx_data_reg[7]_0 [6]),
        .O(\tx_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tx_data[7]_i_1 
       (.I0(\tx_data_reg[7]_0 [7]),
        .I1(\tx_state_reg_n_0_[0] ),
        .O(\tx_data[7]_i_1_n_0 ));
  FDRE \tx_data_reg[0] 
       (.C(clk),
        .CE(\tx_bits_remaining[3]_i_1_n_0 ),
        .D(\tx_data[0]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_data_reg[1] 
       (.C(clk),
        .CE(\tx_bits_remaining[3]_i_1_n_0 ),
        .D(\tx_data[1]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_data_reg[2] 
       (.C(clk),
        .CE(\tx_bits_remaining[3]_i_1_n_0 ),
        .D(\tx_data[2]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tx_data_reg[3] 
       (.C(clk),
        .CE(\tx_bits_remaining[3]_i_1_n_0 ),
        .D(\tx_data[3]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_data_reg[4] 
       (.C(clk),
        .CE(\tx_bits_remaining[3]_i_1_n_0 ),
        .D(\tx_data[4]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tx_data_reg[5] 
       (.C(clk),
        .CE(\tx_bits_remaining[3]_i_1_n_0 ),
        .D(\tx_data[5]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tx_data_reg[6] 
       (.C(clk),
        .CE(\tx_bits_remaining[3]_i_1_n_0 ),
        .D(\tx_data[6]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \tx_data_reg[7] 
       (.C(clk),
        .CE(\tx_bits_remaining[3]_i_1_n_0 ),
        .D(\tx_data[7]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA8FFA8A8A800A8A8)) 
    tx_out_i_1
       (.I0(\tx_state_reg_n_0_[0] ),
        .I1(tx_out_i_2_n_0),
        .I2(\tx_data_reg_n_0_[0] ),
        .I3(\tx_clk_divider[10]_i_1_n_0 ),
        .I4(tx_out_i_3_n_0),
        .I5(UART_RXD_OUT),
        .O(tx_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    tx_out_i_2
       (.I0(\tx_bits_remaining_reg_n_0_[2] ),
        .I1(\tx_bits_remaining_reg_n_0_[1] ),
        .I2(\tx_bits_remaining_reg_n_0_[0] ),
        .I3(\tx_bits_remaining_reg_n_0_[3] ),
        .O(tx_out_i_2_n_0));
  LUT6 #(
    .INIT(64'hEEEBEEEEFFFFFFFF)) 
    tx_out_i_3
       (.I0(tx_out_i_4_n_0),
        .I1(tx_countdown[0]),
        .I2(\tx_clk_divider[8]_i_1_n_0 ),
        .I3(tx_out_i_5_n_0),
        .I4(tx_out_i_6_n_0),
        .I5(tx_out_i_7_n_0),
        .O(tx_out_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    tx_out_i_4
       (.I0(tx_countdown[5]),
        .I1(tx_countdown[3]),
        .I2(tx_countdown[4]),
        .I3(tx_countdown[1]),
        .I4(tx_countdown[2]),
        .O(tx_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    tx_out_i_5
       (.I0(\tx_clk_divider[5]_i_1_n_0 ),
        .I1(tx_out_i_8_n_0),
        .I2(tx_clk_divider[3]),
        .I3(tx_clk_divider[1]),
        .I4(tx_clk_divider[6]),
        .I5(tx_clk_divider[4]),
        .O(tx_out_i_5_n_0));
  LUT6 #(
    .INIT(64'h5555555555555565)) 
    tx_out_i_6
       (.I0(tx_clk_divider[10]),
        .I1(tx_clk_divider[7]),
        .I2(\tx_clk_divider[10]_i_3_n_0 ),
        .I3(tx_clk_divider[6]),
        .I4(tx_clk_divider[8]),
        .I5(tx_clk_divider[9]),
        .O(tx_out_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    tx_out_i_7
       (.I0(\tx_state_reg_n_0_[0] ),
        .I1(\tx_state_reg_n_0_[1] ),
        .O(tx_out_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    tx_out_i_8
       (.I0(tx_clk_divider[9]),
        .I1(tx_clk_divider[2]),
        .I2(tx_clk_divider[0]),
        .I3(tx_clk_divider[7]),
        .O(tx_out_i_8_n_0));
  FDRE #(
    .INIT(1'b1)) 
    tx_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_out_i_1_n_0),
        .Q(UART_RXD_OUT),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFDD00F0)) 
    \tx_state[0]_i_1 
       (.I0(tx_out_i_2_n_0),
        .I1(\tx_bits_remaining[3]_i_3_n_0 ),
        .I2(\tx_bits_remaining_reg[3]_0 ),
        .I3(\tx_state_reg_n_0_[1] ),
        .I4(\tx_state_reg_n_0_[0] ),
        .O(tx_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hCEC0)) 
    \tx_state[1]_i_1 
       (.I0(tx_out_i_2_n_0),
        .I1(\tx_state_reg_n_0_[1] ),
        .I2(\tx_bits_remaining[3]_i_3_n_0 ),
        .I3(\tx_state_reg_n_0_[0] ),
        .O(tx_state[1]));
  FDRE #(
    .INIT(1'b0)) 
    \tx_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(tx_state[0]),
        .Q(\tx_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(tx_state[1]),
        .Q(\tx_state_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAA00AAAA00FB)) 
    uart_state_i_1
       (.I0(uart_state),
        .I1(\recv_state_reg[0]_0 ),
        .I2(tx_start),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(uart_state_reg));
endmodule

(* ORIG_REF_NAME = "uart_logger" *) 
module MAES_uart_logger_0_0_uart_logger
   (tx_free,
    UART_RXD_OUT,
    tx_start,
    clk,
    tx_msg,
    UART_TXD_IN);
  output tx_free;
  output UART_RXD_OUT;
  input tx_start;
  input clk;
  input [63:0]tx_msg;
  input UART_TXD_IN;

  wire \FSM_onehot_tx_count_state_reg_n_0_[0] ;
  wire \FSM_sequential_next_sm_state[2]_i_3_n_0 ;
  wire \FSM_sequential_next_sm_state[2]_i_4_n_0 ;
  wire \FSM_sequential_tx_count[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_count[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_count[2]_i_1_n_0 ;
  wire UART_RXD_OUT;
  wire UART_TXD_IN;
  wire clk;
  wire enable_tx_i_1_n_0;
  wire enable_tx_reg_n_0;
  wire [7:0]in3;
  wire [7:0]in4;
  wire [7:0]in5;
  wire [7:0]in6;
  wire [7:0]in7;
  wire [7:0]in8;
  wire [7:0]in9;
  wire [3:0]next_rx_count;
  wire \next_rx_count[1]_i_1_n_0 ;
  wire \next_rx_count[3]_i_3_n_0 ;
  wire \next_rx_count_reg_n_0_[0] ;
  wire \next_rx_count_reg_n_0_[1] ;
  wire \next_rx_count_reg_n_0_[2] ;
  wire \next_rx_count_reg_n_0_[3] ;
  wire [2:0]next_sm_state__0;
  wire [2:0]next_tx_count;
  wire [2:0]next_tx_count__0;
  wire [3:0]rx_count;
  wire [7:0]send_data;
  wire \send_data[0]_i_2_n_0 ;
  wire \send_data[0]_i_3_n_0 ;
  wire \send_data[1]_i_2_n_0 ;
  wire \send_data[1]_i_3_n_0 ;
  wire \send_data[2]_i_2_n_0 ;
  wire \send_data[2]_i_3_n_0 ;
  wire \send_data[3]_i_2_n_0 ;
  wire \send_data[3]_i_3_n_0 ;
  wire \send_data[4]_i_2_n_0 ;
  wire \send_data[4]_i_3_n_0 ;
  wire \send_data[5]_i_2_n_0 ;
  wire \send_data[5]_i_3_n_0 ;
  wire \send_data[6]_i_2_n_0 ;
  wire \send_data[6]_i_3_n_0 ;
  wire \send_data[7]_i_2_n_0 ;
  wire \send_data[7]_i_3_n_0 ;
  wire send_data_0;
  wire \send_data_reg[0]_i_1_n_0 ;
  wire \send_data_reg[1]_i_1_n_0 ;
  wire \send_data_reg[2]_i_1_n_0 ;
  wire \send_data_reg[3]_i_1_n_0 ;
  wire \send_data_reg[4]_i_1_n_0 ;
  wire \send_data_reg[5]_i_1_n_0 ;
  wire \send_data_reg[6]_i_1_n_0 ;
  wire \send_data_reg[7]_i_1_n_0 ;
  wire [2:0]sm_state;
  wire tx_count;
  wire [2:0]tx_count__0;
  wire [1:1]tx_count_state;
  wire \tx_data[63]_i_1_n_0 ;
  wire \tx_data_reg_n_0_[0] ;
  wire \tx_data_reg_n_0_[1] ;
  wire \tx_data_reg_n_0_[2] ;
  wire \tx_data_reg_n_0_[3] ;
  wire \tx_data_reg_n_0_[4] ;
  wire \tx_data_reg_n_0_[5] ;
  wire \tx_data_reg_n_0_[6] ;
  wire \tx_data_reg_n_0_[7] ;
  wire tx_free;
  wire [63:0]tx_msg;
  wire tx_start;
  wire uart_state;
  wire uart_uut_n_1;
  wire uart_uut_n_2;
  wire uart_uut_n_3;
  wire uart_uut_n_4;
  wire uart_uut_n_5;
  wire uart_uut_n_6;
  wire uart_uut_n_7;
  wire uart_uut_n_8;
  wire uart_uut_n_9;
  wire wait_for_is_transmitting_i_1_n_0;
  wire wait_for_is_transmitting_reg_n_0;

  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_tx_count_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(uart_uut_n_2),
        .Q(\FSM_onehot_tx_count_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_count_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(uart_uut_n_1),
        .Q(tx_count_state),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_count_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(uart_uut_n_3),
        .Q(tx_count),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \FSM_sequential_next_sm_state[2]_i_3 
       (.I0(sm_state[1]),
        .I1(tx_count),
        .I2(tx_count__0[2]),
        .I3(tx_count__0[1]),
        .I4(tx_count__0[0]),
        .I5(sm_state[0]),
        .O(\FSM_sequential_next_sm_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \FSM_sequential_next_sm_state[2]_i_4 
       (.I0(rx_count[2]),
        .I1(rx_count[1]),
        .I2(rx_count[0]),
        .I3(rx_count[3]),
        .O(\FSM_sequential_next_sm_state[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_sm_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(uart_uut_n_6),
        .Q(next_sm_state__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_sm_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(uart_uut_n_5),
        .Q(next_sm_state__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_sm_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(uart_uut_n_4),
        .Q(next_sm_state__0[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_next_tx_count[0]_i_1 
       (.I0(tx_count__0[0]),
        .O(next_tx_count__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_next_tx_count[1]_i_1 
       (.I0(tx_count__0[0]),
        .I1(tx_count__0[1]),
        .O(next_tx_count__0[1]));
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_sequential_next_tx_count[2]_i_1 
       (.I0(\FSM_onehot_tx_count_state_reg_n_0_[0] ),
        .I1(sm_state[0]),
        .I2(sm_state[2]),
        .I3(sm_state[1]),
        .O(send_data_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \FSM_sequential_next_tx_count[2]_i_2 
       (.I0(tx_count__0[2]),
        .I1(tx_count__0[1]),
        .I2(tx_count__0[0]),
        .O(next_tx_count__0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_tx_count_reg[0] 
       (.C(clk),
        .CE(send_data_0),
        .D(next_tx_count__0[0]),
        .Q(next_tx_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_tx_count_reg[1] 
       (.C(clk),
        .CE(send_data_0),
        .D(next_tx_count__0[1]),
        .Q(next_tx_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_tx_count_reg[2] 
       (.C(clk),
        .CE(send_data_0),
        .D(next_tx_count__0[2]),
        .Q(next_tx_count[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:010,iSTATE1:001,iSTATE2:000,iSTATE3:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_sm_state__0[0]),
        .Q(sm_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:010,iSTATE1:001,iSTATE2:000,iSTATE3:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(next_sm_state__0[1]),
        .Q(sm_state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:010,iSTATE1:001,iSTATE2:000,iSTATE3:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(next_sm_state__0[2]),
        .Q(sm_state[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_tx_count[0]_i_1 
       (.I0(next_tx_count[0]),
        .I1(tx_count),
        .I2(tx_count__0[0]),
        .O(\FSM_sequential_tx_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_tx_count[1]_i_1 
       (.I0(next_tx_count[1]),
        .I1(tx_count),
        .I2(tx_count__0[1]),
        .O(\FSM_sequential_tx_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_tx_count[2]_i_1 
       (.I0(next_tx_count[2]),
        .I1(tx_count),
        .I2(tx_count__0[2]),
        .O(\FSM_sequential_tx_count[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101,iSTATE5:110,iSTATE6:111," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_tx_count[0]_i_1_n_0 ),
        .Q(tx_count__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101,iSTATE5:110,iSTATE6:111," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_tx_count[1]_i_1_n_0 ),
        .Q(tx_count__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101,iSTATE5:110,iSTATE6:111," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_tx_count[2]_i_1_n_0 ),
        .Q(tx_count__0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA00F2AA)) 
    enable_tx_i_1
       (.I0(enable_tx_reg_n_0),
        .I1(tx_count_state),
        .I2(\FSM_onehot_tx_count_state_reg_n_0_[0] ),
        .I3(sm_state[0]),
        .I4(sm_state[1]),
        .I5(sm_state[2]),
        .O(enable_tx_i_1_n_0));
  FDRE enable_tx_reg
       (.C(clk),
        .CE(1'b1),
        .D(enable_tx_i_1_n_0),
        .Q(enable_tx_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \next_rx_count[0]_i_1 
       (.I0(sm_state[1]),
        .I1(rx_count[0]),
        .I2(rx_count[3]),
        .O(next_rx_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \next_rx_count[1]_i_1 
       (.I0(rx_count[1]),
        .I1(rx_count[0]),
        .I2(sm_state[1]),
        .O(\next_rx_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h4CC0)) 
    \next_rx_count[2]_i_1 
       (.I0(rx_count[1]),
        .I1(sm_state[1]),
        .I2(rx_count[0]),
        .I3(rx_count[2]),
        .O(next_rx_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \next_rx_count[3]_i_2 
       (.I0(sm_state[1]),
        .I1(rx_count[1]),
        .I2(rx_count[0]),
        .I3(rx_count[2]),
        .O(next_rx_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h5552)) 
    \next_rx_count[3]_i_3 
       (.I0(rx_count[3]),
        .I1(rx_count[0]),
        .I2(rx_count[1]),
        .I3(rx_count[2]),
        .O(\next_rx_count[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_rx_count_reg[0] 
       (.C(clk),
        .CE(uart_uut_n_9),
        .D(next_rx_count[0]),
        .Q(\next_rx_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_rx_count_reg[1] 
       (.C(clk),
        .CE(uart_uut_n_9),
        .D(\next_rx_count[1]_i_1_n_0 ),
        .Q(\next_rx_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_rx_count_reg[2] 
       (.C(clk),
        .CE(uart_uut_n_9),
        .D(next_rx_count[2]),
        .Q(\next_rx_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_rx_count_reg[3] 
       (.C(clk),
        .CE(uart_uut_n_9),
        .D(next_rx_count[3]),
        .Q(\next_rx_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg[0] 
       (.C(clk),
        .CE(uart_uut_n_8),
        .D(\next_rx_count_reg_n_0_[0] ),
        .Q(rx_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg[1] 
       (.C(clk),
        .CE(uart_uut_n_8),
        .D(\next_rx_count_reg_n_0_[1] ),
        .Q(rx_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg[2] 
       (.C(clk),
        .CE(uart_uut_n_8),
        .D(\next_rx_count_reg_n_0_[2] ),
        .Q(rx_count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg[3] 
       (.C(clk),
        .CE(uart_uut_n_8),
        .D(\next_rx_count_reg_n_0_[3] ),
        .Q(rx_count[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[0]_i_2 
       (.I0(in6[0]),
        .I1(in5[0]),
        .I2(tx_count__0[1]),
        .I3(in4[0]),
        .I4(tx_count__0[0]),
        .I5(in3[0]),
        .O(\send_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[0]_i_3 
       (.I0(\tx_data_reg_n_0_[0] ),
        .I1(in9[0]),
        .I2(tx_count__0[1]),
        .I3(in8[0]),
        .I4(tx_count__0[0]),
        .I5(in7[0]),
        .O(\send_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[1]_i_2 
       (.I0(in6[1]),
        .I1(in5[1]),
        .I2(tx_count__0[1]),
        .I3(in4[1]),
        .I4(tx_count__0[0]),
        .I5(in3[1]),
        .O(\send_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[1]_i_3 
       (.I0(\tx_data_reg_n_0_[1] ),
        .I1(in9[1]),
        .I2(tx_count__0[1]),
        .I3(in8[1]),
        .I4(tx_count__0[0]),
        .I5(in7[1]),
        .O(\send_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[2]_i_2 
       (.I0(in6[2]),
        .I1(in5[2]),
        .I2(tx_count__0[1]),
        .I3(in4[2]),
        .I4(tx_count__0[0]),
        .I5(in3[2]),
        .O(\send_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[2]_i_3 
       (.I0(\tx_data_reg_n_0_[2] ),
        .I1(in9[2]),
        .I2(tx_count__0[1]),
        .I3(in8[2]),
        .I4(tx_count__0[0]),
        .I5(in7[2]),
        .O(\send_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[3]_i_2 
       (.I0(in6[3]),
        .I1(in5[3]),
        .I2(tx_count__0[1]),
        .I3(in4[3]),
        .I4(tx_count__0[0]),
        .I5(in3[3]),
        .O(\send_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[3]_i_3 
       (.I0(\tx_data_reg_n_0_[3] ),
        .I1(in9[3]),
        .I2(tx_count__0[1]),
        .I3(in8[3]),
        .I4(tx_count__0[0]),
        .I5(in7[3]),
        .O(\send_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[4]_i_2 
       (.I0(in6[4]),
        .I1(in5[4]),
        .I2(tx_count__0[1]),
        .I3(in4[4]),
        .I4(tx_count__0[0]),
        .I5(in3[4]),
        .O(\send_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[4]_i_3 
       (.I0(\tx_data_reg_n_0_[4] ),
        .I1(in9[4]),
        .I2(tx_count__0[1]),
        .I3(in8[4]),
        .I4(tx_count__0[0]),
        .I5(in7[4]),
        .O(\send_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[5]_i_2 
       (.I0(in6[5]),
        .I1(in5[5]),
        .I2(tx_count__0[1]),
        .I3(in4[5]),
        .I4(tx_count__0[0]),
        .I5(in3[5]),
        .O(\send_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[5]_i_3 
       (.I0(\tx_data_reg_n_0_[5] ),
        .I1(in9[5]),
        .I2(tx_count__0[1]),
        .I3(in8[5]),
        .I4(tx_count__0[0]),
        .I5(in7[5]),
        .O(\send_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[6]_i_2 
       (.I0(in6[6]),
        .I1(in5[6]),
        .I2(tx_count__0[1]),
        .I3(in4[6]),
        .I4(tx_count__0[0]),
        .I5(in3[6]),
        .O(\send_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[6]_i_3 
       (.I0(\tx_data_reg_n_0_[6] ),
        .I1(in9[6]),
        .I2(tx_count__0[1]),
        .I3(in8[6]),
        .I4(tx_count__0[0]),
        .I5(in7[6]),
        .O(\send_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[7]_i_2 
       (.I0(in6[7]),
        .I1(in5[7]),
        .I2(tx_count__0[1]),
        .I3(in4[7]),
        .I4(tx_count__0[0]),
        .I5(in3[7]),
        .O(\send_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_data[7]_i_3 
       (.I0(\tx_data_reg_n_0_[7] ),
        .I1(in9[7]),
        .I2(tx_count__0[1]),
        .I3(in8[7]),
        .I4(tx_count__0[0]),
        .I5(in7[7]),
        .O(\send_data[7]_i_3_n_0 ));
  FDRE \send_data_reg[0] 
       (.C(clk),
        .CE(send_data_0),
        .D(\send_data_reg[0]_i_1_n_0 ),
        .Q(send_data[0]),
        .R(1'b0));
  MUXF7 \send_data_reg[0]_i_1 
       (.I0(\send_data[0]_i_2_n_0 ),
        .I1(\send_data[0]_i_3_n_0 ),
        .O(\send_data_reg[0]_i_1_n_0 ),
        .S(tx_count__0[2]));
  FDRE \send_data_reg[1] 
       (.C(clk),
        .CE(send_data_0),
        .D(\send_data_reg[1]_i_1_n_0 ),
        .Q(send_data[1]),
        .R(1'b0));
  MUXF7 \send_data_reg[1]_i_1 
       (.I0(\send_data[1]_i_2_n_0 ),
        .I1(\send_data[1]_i_3_n_0 ),
        .O(\send_data_reg[1]_i_1_n_0 ),
        .S(tx_count__0[2]));
  FDRE \send_data_reg[2] 
       (.C(clk),
        .CE(send_data_0),
        .D(\send_data_reg[2]_i_1_n_0 ),
        .Q(send_data[2]),
        .R(1'b0));
  MUXF7 \send_data_reg[2]_i_1 
       (.I0(\send_data[2]_i_2_n_0 ),
        .I1(\send_data[2]_i_3_n_0 ),
        .O(\send_data_reg[2]_i_1_n_0 ),
        .S(tx_count__0[2]));
  FDRE \send_data_reg[3] 
       (.C(clk),
        .CE(send_data_0),
        .D(\send_data_reg[3]_i_1_n_0 ),
        .Q(send_data[3]),
        .R(1'b0));
  MUXF7 \send_data_reg[3]_i_1 
       (.I0(\send_data[3]_i_2_n_0 ),
        .I1(\send_data[3]_i_3_n_0 ),
        .O(\send_data_reg[3]_i_1_n_0 ),
        .S(tx_count__0[2]));
  FDRE \send_data_reg[4] 
       (.C(clk),
        .CE(send_data_0),
        .D(\send_data_reg[4]_i_1_n_0 ),
        .Q(send_data[4]),
        .R(1'b0));
  MUXF7 \send_data_reg[4]_i_1 
       (.I0(\send_data[4]_i_2_n_0 ),
        .I1(\send_data[4]_i_3_n_0 ),
        .O(\send_data_reg[4]_i_1_n_0 ),
        .S(tx_count__0[2]));
  FDRE \send_data_reg[5] 
       (.C(clk),
        .CE(send_data_0),
        .D(\send_data_reg[5]_i_1_n_0 ),
        .Q(send_data[5]),
        .R(1'b0));
  MUXF7 \send_data_reg[5]_i_1 
       (.I0(\send_data[5]_i_2_n_0 ),
        .I1(\send_data[5]_i_3_n_0 ),
        .O(\send_data_reg[5]_i_1_n_0 ),
        .S(tx_count__0[2]));
  FDRE \send_data_reg[6] 
       (.C(clk),
        .CE(send_data_0),
        .D(\send_data_reg[6]_i_1_n_0 ),
        .Q(send_data[6]),
        .R(1'b0));
  MUXF7 \send_data_reg[6]_i_1 
       (.I0(\send_data[6]_i_2_n_0 ),
        .I1(\send_data[6]_i_3_n_0 ),
        .O(\send_data_reg[6]_i_1_n_0 ),
        .S(tx_count__0[2]));
  FDRE \send_data_reg[7] 
       (.C(clk),
        .CE(send_data_0),
        .D(\send_data_reg[7]_i_1_n_0 ),
        .Q(send_data[7]),
        .R(1'b0));
  MUXF7 \send_data_reg[7]_i_1 
       (.I0(\send_data[7]_i_2_n_0 ),
        .I1(\send_data[7]_i_3_n_0 ),
        .O(\send_data_reg[7]_i_1_n_0 ),
        .S(tx_count__0[2]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \tx_data[63]_i_1 
       (.I0(sm_state[2]),
        .I1(sm_state[0]),
        .I2(sm_state[1]),
        .I3(uart_state),
        .I4(tx_start),
        .O(\tx_data[63]_i_1_n_0 ));
  FDRE \tx_data_reg[0] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[0]),
        .Q(\tx_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_data_reg[10] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[10]),
        .Q(in9[2]),
        .R(1'b0));
  FDRE \tx_data_reg[11] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[11]),
        .Q(in9[3]),
        .R(1'b0));
  FDRE \tx_data_reg[12] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[12]),
        .Q(in9[4]),
        .R(1'b0));
  FDRE \tx_data_reg[13] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[13]),
        .Q(in9[5]),
        .R(1'b0));
  FDRE \tx_data_reg[14] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[14]),
        .Q(in9[6]),
        .R(1'b0));
  FDRE \tx_data_reg[15] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[15]),
        .Q(in9[7]),
        .R(1'b0));
  FDRE \tx_data_reg[16] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[16]),
        .Q(in8[0]),
        .R(1'b0));
  FDRE \tx_data_reg[17] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[17]),
        .Q(in8[1]),
        .R(1'b0));
  FDRE \tx_data_reg[18] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[18]),
        .Q(in8[2]),
        .R(1'b0));
  FDRE \tx_data_reg[19] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[19]),
        .Q(in8[3]),
        .R(1'b0));
  FDRE \tx_data_reg[1] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[1]),
        .Q(\tx_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_data_reg[20] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[20]),
        .Q(in8[4]),
        .R(1'b0));
  FDRE \tx_data_reg[21] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[21]),
        .Q(in8[5]),
        .R(1'b0));
  FDRE \tx_data_reg[22] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[22]),
        .Q(in8[6]),
        .R(1'b0));
  FDRE \tx_data_reg[23] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[23]),
        .Q(in8[7]),
        .R(1'b0));
  FDRE \tx_data_reg[24] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[24]),
        .Q(in7[0]),
        .R(1'b0));
  FDRE \tx_data_reg[25] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[25]),
        .Q(in7[1]),
        .R(1'b0));
  FDRE \tx_data_reg[26] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[26]),
        .Q(in7[2]),
        .R(1'b0));
  FDRE \tx_data_reg[27] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[27]),
        .Q(in7[3]),
        .R(1'b0));
  FDRE \tx_data_reg[28] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[28]),
        .Q(in7[4]),
        .R(1'b0));
  FDRE \tx_data_reg[29] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[29]),
        .Q(in7[5]),
        .R(1'b0));
  FDRE \tx_data_reg[2] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[2]),
        .Q(\tx_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tx_data_reg[30] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[30]),
        .Q(in7[6]),
        .R(1'b0));
  FDRE \tx_data_reg[31] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[31]),
        .Q(in7[7]),
        .R(1'b0));
  FDRE \tx_data_reg[32] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[32]),
        .Q(in6[0]),
        .R(1'b0));
  FDRE \tx_data_reg[33] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[33]),
        .Q(in6[1]),
        .R(1'b0));
  FDRE \tx_data_reg[34] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[34]),
        .Q(in6[2]),
        .R(1'b0));
  FDRE \tx_data_reg[35] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[35]),
        .Q(in6[3]),
        .R(1'b0));
  FDRE \tx_data_reg[36] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[36]),
        .Q(in6[4]),
        .R(1'b0));
  FDRE \tx_data_reg[37] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[37]),
        .Q(in6[5]),
        .R(1'b0));
  FDRE \tx_data_reg[38] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[38]),
        .Q(in6[6]),
        .R(1'b0));
  FDRE \tx_data_reg[39] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[39]),
        .Q(in6[7]),
        .R(1'b0));
  FDRE \tx_data_reg[3] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[3]),
        .Q(\tx_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_data_reg[40] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[40]),
        .Q(in5[0]),
        .R(1'b0));
  FDRE \tx_data_reg[41] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[41]),
        .Q(in5[1]),
        .R(1'b0));
  FDRE \tx_data_reg[42] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[42]),
        .Q(in5[2]),
        .R(1'b0));
  FDRE \tx_data_reg[43] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[43]),
        .Q(in5[3]),
        .R(1'b0));
  FDRE \tx_data_reg[44] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[44]),
        .Q(in5[4]),
        .R(1'b0));
  FDRE \tx_data_reg[45] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[45]),
        .Q(in5[5]),
        .R(1'b0));
  FDRE \tx_data_reg[46] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[46]),
        .Q(in5[6]),
        .R(1'b0));
  FDRE \tx_data_reg[47] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[47]),
        .Q(in5[7]),
        .R(1'b0));
  FDRE \tx_data_reg[48] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[48]),
        .Q(in4[0]),
        .R(1'b0));
  FDRE \tx_data_reg[49] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[49]),
        .Q(in4[1]),
        .R(1'b0));
  FDRE \tx_data_reg[4] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[4]),
        .Q(\tx_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tx_data_reg[50] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[50]),
        .Q(in4[2]),
        .R(1'b0));
  FDRE \tx_data_reg[51] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[51]),
        .Q(in4[3]),
        .R(1'b0));
  FDRE \tx_data_reg[52] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[52]),
        .Q(in4[4]),
        .R(1'b0));
  FDRE \tx_data_reg[53] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[53]),
        .Q(in4[5]),
        .R(1'b0));
  FDRE \tx_data_reg[54] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[54]),
        .Q(in4[6]),
        .R(1'b0));
  FDRE \tx_data_reg[55] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[55]),
        .Q(in4[7]),
        .R(1'b0));
  FDRE \tx_data_reg[56] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[56]),
        .Q(in3[0]),
        .R(1'b0));
  FDRE \tx_data_reg[57] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[57]),
        .Q(in3[1]),
        .R(1'b0));
  FDRE \tx_data_reg[58] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[58]),
        .Q(in3[2]),
        .R(1'b0));
  FDRE \tx_data_reg[59] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[59]),
        .Q(in3[3]),
        .R(1'b0));
  FDRE \tx_data_reg[5] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[5]),
        .Q(\tx_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tx_data_reg[60] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[60]),
        .Q(in3[4]),
        .R(1'b0));
  FDRE \tx_data_reg[61] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[61]),
        .Q(in3[5]),
        .R(1'b0));
  FDRE \tx_data_reg[62] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[62]),
        .Q(in3[6]),
        .R(1'b0));
  FDRE \tx_data_reg[63] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[63]),
        .Q(in3[7]),
        .R(1'b0));
  FDRE \tx_data_reg[6] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[6]),
        .Q(\tx_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \tx_data_reg[7] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[7]),
        .Q(\tx_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \tx_data_reg[8] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[8]),
        .Q(in9[0]),
        .R(1'b0));
  FDRE \tx_data_reg[9] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(tx_msg[9]),
        .Q(in9[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    tx_free_INST_0
       (.I0(sm_state[1]),
        .I1(sm_state[0]),
        .I2(sm_state[2]),
        .O(tx_free));
  FDRE #(
    .INIT(1'b0)) 
    uart_state_reg
       (.C(clk),
        .CE(1'b1),
        .D(uart_uut_n_7),
        .Q(uart_state),
        .R(1'b0));
  MAES_uart_logger_0_0_uart uart_uut
       (.D(next_sm_state__0),
        .E(uart_uut_n_9),
        .\FSM_onehot_tx_count_state_reg[1] (wait_for_is_transmitting_reg_n_0),
        .\FSM_onehot_tx_count_state_reg[1]_0 (\FSM_onehot_tx_count_state_reg_n_0_[0] ),
        .\FSM_sequential_next_sm_state_reg[0] (\FSM_sequential_next_sm_state[2]_i_3_n_0 ),
        .\FSM_sequential_next_sm_state_reg[0]_0 (\FSM_sequential_next_sm_state[2]_i_4_n_0 ),
        .\FSM_sequential_sm_state_reg[1] (uart_uut_n_5),
        .\FSM_sequential_sm_state_reg[2] (uart_uut_n_4),
        .\FSM_sequential_sm_state_reg[2]_0 (uart_uut_n_6),
        .Q(sm_state),
        .UART_RXD_OUT(UART_RXD_OUT),
        .UART_TXD_IN(UART_TXD_IN),
        .clk(clk),
        .\next_rx_count_reg[0] (\next_rx_count[3]_i_3_n_0 ),
        .\recv_state_reg[0]_0 (uart_uut_n_8),
        .\tx_bits_remaining_reg[3]_0 (enable_tx_reg_n_0),
        .tx_count(tx_count),
        .tx_count_state(tx_count_state),
        .\tx_data_reg[7]_0 (send_data),
        .tx_start(tx_start),
        .uart_state(uart_state),
        .uart_state_reg(uart_uut_n_7),
        .wait_for_is_transmitting_reg(uart_uut_n_1),
        .wait_for_is_transmitting_reg_0(uart_uut_n_2),
        .wait_for_is_transmitting_reg_1(uart_uut_n_3));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000200)) 
    wait_for_is_transmitting_i_1
       (.I0(\FSM_onehot_tx_count_state_reg_n_0_[0] ),
        .I1(sm_state[1]),
        .I2(sm_state[2]),
        .I3(sm_state[0]),
        .I4(tx_count),
        .I5(wait_for_is_transmitting_reg_n_0),
        .O(wait_for_is_transmitting_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wait_for_is_transmitting_reg
       (.C(clk),
        .CE(1'b1),
        .D(wait_for_is_transmitting_i_1_n_0),
        .Q(wait_for_is_transmitting_reg_n_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
