set_property SRC_FILE_INFO {cfile:c:/Users/horse/Documents/Xilinx_Projects/mblaze_test/mblaze_test.srcs/sources_1/bd/mblaze_test/ip/mblaze_test_clk_wiz_1_1/mblaze_test_clk_wiz_1_1.xdc rfile:../../../mblaze_test.srcs/sources_1/bd/mblaze_test/ip/mblaze_test_clk_wiz_1_1/mblaze_test_clk_wiz_1_1.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
