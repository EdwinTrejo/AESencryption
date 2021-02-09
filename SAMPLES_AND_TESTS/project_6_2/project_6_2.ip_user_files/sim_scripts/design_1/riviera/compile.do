vlib work
vlib riviera

vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_uartlite_v2_0_26
vlib riviera/xil_defaultlib

vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_uartlite_v2_0_26 riviera/axi_uartlite_v2_0_26
vmap xil_defaultlib riviera/xil_defaultlib

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../project_6_2.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../project_6_2.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../project_6_2.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../project_6_2.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_26 -93 \
"../../../../project_6_2.srcs/sources_1/bd/design_1/ipshared/5edb/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_1/sim/design_1_axi_uartlite_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_ssd_0_0/sim/design_1_ssd_0_0.v" \
"../../../bd/design_1/ipshared/55c8/sim/uart_axi_master_block_uart_axi_master_0_2.v" \
"../../../bd/design_1/ipshared/55c8/src/debounce.v" \
"../../../bd/design_1/ipshared/55c8/src/uart_axi_master.v" \
"../../../bd/design_1/ipshared/55c8/sim/uart_axi_master_block.v" \
"../../../bd/design_1/ip/design_1_uart_axi_master_block_0_0/sim/design_1_uart_axi_master_block_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

