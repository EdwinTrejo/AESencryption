// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jan 30 18:17:10 2021
// Host        : MobileSickHorse running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/horse/Documents/Xilinx_Projects/project_6_2/project_6_2.srcs/sources_1/bd/design_1/ip/design_1_ssd_0_0/design_1_ssd_0_0_sim_netlist.v
// Design      : design_1_ssd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ssd_0_0,ssd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ssd,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_ssd_0_0
   (clk,
    data,
    SSD,
    AN);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  input [127:0]data;
  output [6:0]SSD;
  output [7:0]AN;

  wire [7:0]AN;
  wire [6:0]SSD;
  wire clk;
  wire [127:0]data;

  design_1_ssd_0_0_ssd inst
       (.AN(AN),
        .SSD(SSD),
        .clk(clk),
        .data(data[126:95]));
endmodule

(* ORIG_REF_NAME = "ssd" *) 
module design_1_ssd_0_0_ssd
   (SSD,
    AN,
    clk,
    data);
  output [6:0]SSD;
  output [7:0]AN;
  input clk;
  input [31:0]data;

  wire [7:0]AN;
  wire \AN[0]_i_1_n_0 ;
  wire \AN[1]_i_1_n_0 ;
  wire \AN[2]_i_1_n_0 ;
  wire \AN[3]_i_1_n_0 ;
  wire \AN[4]_i_1_n_0 ;
  wire \AN[5]_i_1_n_0 ;
  wire \AN[6]_i_1_n_0 ;
  wire \AN[7]_i_1_n_0 ;
  wire [6:0]SSD;
  wire clk;
  wire [31:0]data;
  wire [3:0]digit;
  wire \digit[0]_i_2_n_0 ;
  wire \digit[0]_i_3_n_0 ;
  wire \digit[1]_i_2_n_0 ;
  wire \digit[1]_i_3_n_0 ;
  wire \digit[2]_i_2_n_0 ;
  wire \digit[2]_i_3_n_0 ;
  wire \digit[3]_i_2_n_0 ;
  wire \digit[3]_i_3_n_0 ;
  wire [3:0]digit_0;
  wire \divide_clock[0]_i_2_n_0 ;
  wire \divide_clock_reg[0]_i_1_n_0 ;
  wire \divide_clock_reg[0]_i_1_n_1 ;
  wire \divide_clock_reg[0]_i_1_n_2 ;
  wire \divide_clock_reg[0]_i_1_n_3 ;
  wire \divide_clock_reg[0]_i_1_n_4 ;
  wire \divide_clock_reg[0]_i_1_n_5 ;
  wire \divide_clock_reg[0]_i_1_n_6 ;
  wire \divide_clock_reg[0]_i_1_n_7 ;
  wire \divide_clock_reg[12]_i_1_n_0 ;
  wire \divide_clock_reg[12]_i_1_n_1 ;
  wire \divide_clock_reg[12]_i_1_n_2 ;
  wire \divide_clock_reg[12]_i_1_n_3 ;
  wire \divide_clock_reg[12]_i_1_n_4 ;
  wire \divide_clock_reg[12]_i_1_n_5 ;
  wire \divide_clock_reg[12]_i_1_n_6 ;
  wire \divide_clock_reg[12]_i_1_n_7 ;
  wire \divide_clock_reg[16]_i_1_n_1 ;
  wire \divide_clock_reg[16]_i_1_n_2 ;
  wire \divide_clock_reg[16]_i_1_n_3 ;
  wire \divide_clock_reg[16]_i_1_n_4 ;
  wire \divide_clock_reg[16]_i_1_n_5 ;
  wire \divide_clock_reg[16]_i_1_n_6 ;
  wire \divide_clock_reg[16]_i_1_n_7 ;
  wire \divide_clock_reg[4]_i_1_n_0 ;
  wire \divide_clock_reg[4]_i_1_n_1 ;
  wire \divide_clock_reg[4]_i_1_n_2 ;
  wire \divide_clock_reg[4]_i_1_n_3 ;
  wire \divide_clock_reg[4]_i_1_n_4 ;
  wire \divide_clock_reg[4]_i_1_n_5 ;
  wire \divide_clock_reg[4]_i_1_n_6 ;
  wire \divide_clock_reg[4]_i_1_n_7 ;
  wire \divide_clock_reg[8]_i_1_n_0 ;
  wire \divide_clock_reg[8]_i_1_n_1 ;
  wire \divide_clock_reg[8]_i_1_n_2 ;
  wire \divide_clock_reg[8]_i_1_n_3 ;
  wire \divide_clock_reg[8]_i_1_n_4 ;
  wire \divide_clock_reg[8]_i_1_n_5 ;
  wire \divide_clock_reg[8]_i_1_n_6 ;
  wire \divide_clock_reg[8]_i_1_n_7 ;
  wire \divide_clock_reg_n_0_[0] ;
  wire \divide_clock_reg_n_0_[10] ;
  wire \divide_clock_reg_n_0_[11] ;
  wire \divide_clock_reg_n_0_[12] ;
  wire \divide_clock_reg_n_0_[13] ;
  wire \divide_clock_reg_n_0_[14] ;
  wire \divide_clock_reg_n_0_[15] ;
  wire \divide_clock_reg_n_0_[16] ;
  wire \divide_clock_reg_n_0_[1] ;
  wire \divide_clock_reg_n_0_[2] ;
  wire \divide_clock_reg_n_0_[3] ;
  wire \divide_clock_reg_n_0_[4] ;
  wire \divide_clock_reg_n_0_[5] ;
  wire \divide_clock_reg_n_0_[6] ;
  wire \divide_clock_reg_n_0_[7] ;
  wire \divide_clock_reg_n_0_[8] ;
  wire \divide_clock_reg_n_0_[9] ;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire [2:0]internal_clock;
  wire [3:3]\NLW_divide_clock_reg[16]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \AN[0]_i_1 
       (.I0(internal_clock[0]),
        .I1(internal_clock[2]),
        .O(\AN[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AN[1]_i_1 
       (.I0(internal_clock[2]),
        .I1(internal_clock[0]),
        .O(\AN[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \AN[2]_i_1 
       (.I0(internal_clock[1]),
        .I1(internal_clock[0]),
        .I2(internal_clock[2]),
        .O(\AN[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \AN[3]_i_1 
       (.I0(internal_clock[1]),
        .I1(internal_clock[0]),
        .I2(internal_clock[2]),
        .O(\AN[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AN[4]_i_1 
       (.I0(internal_clock[0]),
        .I1(internal_clock[2]),
        .O(\AN[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \AN[5]_i_1 
       (.I0(internal_clock[0]),
        .I1(internal_clock[2]),
        .O(\AN[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \AN[6]_i_1 
       (.I0(internal_clock[1]),
        .I1(internal_clock[2]),
        .I2(internal_clock[0]),
        .O(\AN[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \AN[7]_i_1 
       (.I0(internal_clock[2]),
        .I1(internal_clock[0]),
        .I2(internal_clock[1]),
        .O(\AN[7]_i_1_n_0 ));
  FDSE \AN_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\AN[0]_i_1_n_0 ),
        .Q(AN[0]),
        .S(internal_clock[1]));
  FDSE \AN_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\AN[1]_i_1_n_0 ),
        .Q(AN[1]),
        .S(internal_clock[1]));
  FDRE \AN_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\AN[2]_i_1_n_0 ),
        .Q(AN[2]),
        .R(1'b0));
  FDRE \AN_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\AN[3]_i_1_n_0 ),
        .Q(AN[3]),
        .R(1'b0));
  FDSE \AN_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\AN[4]_i_1_n_0 ),
        .Q(AN[4]),
        .S(internal_clock[1]));
  FDSE \AN_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\AN[5]_i_1_n_0 ),
        .Q(AN[5]),
        .S(internal_clock[1]));
  FDRE \AN_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\AN[6]_i_1_n_0 ),
        .Q(AN[6]),
        .R(1'b0));
  FDRE \AN_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\AN[7]_i_1_n_0 ),
        .Q(AN[7]),
        .R(1'b0));
  FDRE \SSD_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(g0_b0_n_0),
        .Q(SSD[0]),
        .R(1'b0));
  FDRE \SSD_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(g0_b1_n_0),
        .Q(SSD[1]),
        .R(1'b0));
  FDRE \SSD_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(g0_b2_n_0),
        .Q(SSD[2]),
        .R(1'b0));
  FDRE \SSD_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(g0_b3_n_0),
        .Q(SSD[3]),
        .R(1'b0));
  FDRE \SSD_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(g0_b4_n_0),
        .Q(SSD[4]),
        .R(1'b0));
  FDRE \SSD_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(g0_b5_n_0),
        .Q(SSD[5]),
        .R(1'b0));
  FDRE \SSD_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(g0_b6_n_0),
        .Q(SSD[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[0]_i_2 
       (.I0(data[16]),
        .I1(data[20]),
        .I2(internal_clock[1]),
        .I3(data[24]),
        .I4(internal_clock[0]),
        .I5(data[28]),
        .O(\digit[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[0]_i_3 
       (.I0(data[0]),
        .I1(data[4]),
        .I2(internal_clock[1]),
        .I3(data[8]),
        .I4(internal_clock[0]),
        .I5(data[12]),
        .O(\digit[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[1]_i_2 
       (.I0(data[17]),
        .I1(data[21]),
        .I2(internal_clock[1]),
        .I3(data[25]),
        .I4(internal_clock[0]),
        .I5(data[29]),
        .O(\digit[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[1]_i_3 
       (.I0(data[1]),
        .I1(data[5]),
        .I2(internal_clock[1]),
        .I3(data[9]),
        .I4(internal_clock[0]),
        .I5(data[13]),
        .O(\digit[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[2]_i_2 
       (.I0(data[18]),
        .I1(data[22]),
        .I2(internal_clock[1]),
        .I3(data[26]),
        .I4(internal_clock[0]),
        .I5(data[30]),
        .O(\digit[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[2]_i_3 
       (.I0(data[2]),
        .I1(data[6]),
        .I2(internal_clock[1]),
        .I3(data[10]),
        .I4(internal_clock[0]),
        .I5(data[14]),
        .O(\digit[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[3]_i_2 
       (.I0(data[19]),
        .I1(data[23]),
        .I2(internal_clock[1]),
        .I3(data[27]),
        .I4(internal_clock[0]),
        .I5(data[31]),
        .O(\digit[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[3]_i_3 
       (.I0(data[3]),
        .I1(data[7]),
        .I2(internal_clock[1]),
        .I3(data[11]),
        .I4(internal_clock[0]),
        .I5(data[15]),
        .O(\digit[3]_i_3_n_0 ));
  FDRE \digit_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(digit_0[0]),
        .Q(digit[0]),
        .R(1'b0));
  MUXF7 \digit_reg[0]_i_1 
       (.I0(\digit[0]_i_2_n_0 ),
        .I1(\digit[0]_i_3_n_0 ),
        .O(digit_0[0]),
        .S(internal_clock[2]));
  FDRE \digit_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(digit_0[1]),
        .Q(digit[1]),
        .R(1'b0));
  MUXF7 \digit_reg[1]_i_1 
       (.I0(\digit[1]_i_2_n_0 ),
        .I1(\digit[1]_i_3_n_0 ),
        .O(digit_0[1]),
        .S(internal_clock[2]));
  FDRE \digit_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(digit_0[2]),
        .Q(digit[2]),
        .R(1'b0));
  MUXF7 \digit_reg[2]_i_1 
       (.I0(\digit[2]_i_2_n_0 ),
        .I1(\digit[2]_i_3_n_0 ),
        .O(digit_0[2]),
        .S(internal_clock[2]));
  FDRE \digit_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(digit_0[3]),
        .Q(digit[3]),
        .R(1'b0));
  MUXF7 \digit_reg[3]_i_1 
       (.I0(\digit[3]_i_2_n_0 ),
        .I1(\digit[3]_i_3_n_0 ),
        .O(digit_0[3]),
        .S(internal_clock[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \divide_clock[0]_i_2 
       (.I0(\divide_clock_reg_n_0_[0] ),
        .O(\divide_clock[0]_i_2_n_0 ));
  FDRE \divide_clock_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[0]_i_1_n_7 ),
        .Q(\divide_clock_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \divide_clock_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\divide_clock_reg[0]_i_1_n_0 ,\divide_clock_reg[0]_i_1_n_1 ,\divide_clock_reg[0]_i_1_n_2 ,\divide_clock_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\divide_clock_reg[0]_i_1_n_4 ,\divide_clock_reg[0]_i_1_n_5 ,\divide_clock_reg[0]_i_1_n_6 ,\divide_clock_reg[0]_i_1_n_7 }),
        .S({\divide_clock_reg_n_0_[3] ,\divide_clock_reg_n_0_[2] ,\divide_clock_reg_n_0_[1] ,\divide_clock[0]_i_2_n_0 }));
  FDRE \divide_clock_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[8]_i_1_n_5 ),
        .Q(\divide_clock_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \divide_clock_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[8]_i_1_n_4 ),
        .Q(\divide_clock_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \divide_clock_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[12]_i_1_n_7 ),
        .Q(\divide_clock_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \divide_clock_reg[12]_i_1 
       (.CI(\divide_clock_reg[8]_i_1_n_0 ),
        .CO({\divide_clock_reg[12]_i_1_n_0 ,\divide_clock_reg[12]_i_1_n_1 ,\divide_clock_reg[12]_i_1_n_2 ,\divide_clock_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\divide_clock_reg[12]_i_1_n_4 ,\divide_clock_reg[12]_i_1_n_5 ,\divide_clock_reg[12]_i_1_n_6 ,\divide_clock_reg[12]_i_1_n_7 }),
        .S({\divide_clock_reg_n_0_[15] ,\divide_clock_reg_n_0_[14] ,\divide_clock_reg_n_0_[13] ,\divide_clock_reg_n_0_[12] }));
  FDRE \divide_clock_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[12]_i_1_n_6 ),
        .Q(\divide_clock_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \divide_clock_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[12]_i_1_n_5 ),
        .Q(\divide_clock_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \divide_clock_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[12]_i_1_n_4 ),
        .Q(\divide_clock_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \divide_clock_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[16]_i_1_n_7 ),
        .Q(\divide_clock_reg_n_0_[16] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \divide_clock_reg[16]_i_1 
       (.CI(\divide_clock_reg[12]_i_1_n_0 ),
        .CO({\NLW_divide_clock_reg[16]_i_1_CO_UNCONNECTED [3],\divide_clock_reg[16]_i_1_n_1 ,\divide_clock_reg[16]_i_1_n_2 ,\divide_clock_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\divide_clock_reg[16]_i_1_n_4 ,\divide_clock_reg[16]_i_1_n_5 ,\divide_clock_reg[16]_i_1_n_6 ,\divide_clock_reg[16]_i_1_n_7 }),
        .S({internal_clock,\divide_clock_reg_n_0_[16] }));
  FDRE \divide_clock_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[16]_i_1_n_6 ),
        .Q(internal_clock[0]),
        .R(1'b0));
  FDRE \divide_clock_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[16]_i_1_n_5 ),
        .Q(internal_clock[1]),
        .R(1'b0));
  FDRE \divide_clock_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[16]_i_1_n_4 ),
        .Q(internal_clock[2]),
        .R(1'b0));
  FDRE \divide_clock_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[0]_i_1_n_6 ),
        .Q(\divide_clock_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \divide_clock_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[0]_i_1_n_5 ),
        .Q(\divide_clock_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \divide_clock_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[0]_i_1_n_4 ),
        .Q(\divide_clock_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \divide_clock_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[4]_i_1_n_7 ),
        .Q(\divide_clock_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \divide_clock_reg[4]_i_1 
       (.CI(\divide_clock_reg[0]_i_1_n_0 ),
        .CO({\divide_clock_reg[4]_i_1_n_0 ,\divide_clock_reg[4]_i_1_n_1 ,\divide_clock_reg[4]_i_1_n_2 ,\divide_clock_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\divide_clock_reg[4]_i_1_n_4 ,\divide_clock_reg[4]_i_1_n_5 ,\divide_clock_reg[4]_i_1_n_6 ,\divide_clock_reg[4]_i_1_n_7 }),
        .S({\divide_clock_reg_n_0_[7] ,\divide_clock_reg_n_0_[6] ,\divide_clock_reg_n_0_[5] ,\divide_clock_reg_n_0_[4] }));
  FDRE \divide_clock_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[4]_i_1_n_6 ),
        .Q(\divide_clock_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \divide_clock_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[4]_i_1_n_5 ),
        .Q(\divide_clock_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \divide_clock_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[4]_i_1_n_4 ),
        .Q(\divide_clock_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \divide_clock_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[8]_i_1_n_7 ),
        .Q(\divide_clock_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \divide_clock_reg[8]_i_1 
       (.CI(\divide_clock_reg[4]_i_1_n_0 ),
        .CO({\divide_clock_reg[8]_i_1_n_0 ,\divide_clock_reg[8]_i_1_n_1 ,\divide_clock_reg[8]_i_1_n_2 ,\divide_clock_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\divide_clock_reg[8]_i_1_n_4 ,\divide_clock_reg[8]_i_1_n_5 ,\divide_clock_reg[8]_i_1_n_6 ,\divide_clock_reg[8]_i_1_n_7 }),
        .S({\divide_clock_reg_n_0_[11] ,\divide_clock_reg_n_0_[10] ,\divide_clock_reg_n_0_[9] ,\divide_clock_reg_n_0_[8] }));
  FDRE \divide_clock_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide_clock_reg[8]_i_1_n_6 ),
        .Q(\divide_clock_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2812)) 
    g0_b0
       (.I0(digit[0]),
        .I1(digit[1]),
        .I2(digit[2]),
        .I3(digit[3]),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hD860)) 
    g0_b1
       (.I0(digit[0]),
        .I1(digit[1]),
        .I2(digit[2]),
        .I3(digit[3]),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hD004)) 
    g0_b2
       (.I0(digit[0]),
        .I1(digit[1]),
        .I2(digit[2]),
        .I3(digit[3]),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8492)) 
    g0_b3
       (.I0(digit[0]),
        .I1(digit[1]),
        .I2(digit[2]),
        .I3(digit[3]),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h02BA)) 
    g0_b4
       (.I0(digit[0]),
        .I1(digit[1]),
        .I2(digit[2]),
        .I3(digit[3]),
        .O(g0_b4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h208E)) 
    g0_b5
       (.I0(digit[0]),
        .I1(digit[1]),
        .I2(digit[2]),
        .I3(digit[3]),
        .O(g0_b5_n_0));
  LUT4 #(
    .INIT(16'h1083)) 
    g0_b6
       (.I0(digit[0]),
        .I1(digit[1]),
        .I2(digit[2]),
        .I3(digit[3]),
        .O(g0_b6_n_0));
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
