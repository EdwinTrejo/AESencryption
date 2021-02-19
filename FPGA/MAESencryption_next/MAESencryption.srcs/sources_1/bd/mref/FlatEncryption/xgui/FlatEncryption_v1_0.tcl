# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "EXPANDED_KEYS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "EXPANDED_KEY_PART_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FULL_MSG_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INSTRUCTION_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PARTIAL_MSG_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RCON0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RCON1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RCON10" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RCON2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RCON3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RCON4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RCON5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RCON6" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RCON7" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RCON8" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RCON9" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_COUNTER_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "state_block_size" -parent ${Page_0}
  ipgui::add_param $IPINST -name "state_blocks" -parent ${Page_0}
  ipgui::add_param $IPINST -name "times_two_B" -parent ${Page_0}


}

proc update_PARAM_VALUE.EXPANDED_KEYS { PARAM_VALUE.EXPANDED_KEYS } {
	# Procedure called to update EXPANDED_KEYS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EXPANDED_KEYS { PARAM_VALUE.EXPANDED_KEYS } {
	# Procedure called to validate EXPANDED_KEYS
	return true
}

proc update_PARAM_VALUE.EXPANDED_KEY_PART_SIZE { PARAM_VALUE.EXPANDED_KEY_PART_SIZE } {
	# Procedure called to update EXPANDED_KEY_PART_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EXPANDED_KEY_PART_SIZE { PARAM_VALUE.EXPANDED_KEY_PART_SIZE } {
	# Procedure called to validate EXPANDED_KEY_PART_SIZE
	return true
}

proc update_PARAM_VALUE.FULL_MSG_SIZE { PARAM_VALUE.FULL_MSG_SIZE } {
	# Procedure called to update FULL_MSG_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FULL_MSG_SIZE { PARAM_VALUE.FULL_MSG_SIZE } {
	# Procedure called to validate FULL_MSG_SIZE
	return true
}

proc update_PARAM_VALUE.INSTRUCTION_SIZE { PARAM_VALUE.INSTRUCTION_SIZE } {
	# Procedure called to update INSTRUCTION_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INSTRUCTION_SIZE { PARAM_VALUE.INSTRUCTION_SIZE } {
	# Procedure called to validate INSTRUCTION_SIZE
	return true
}

proc update_PARAM_VALUE.PARTIAL_MSG_SIZE { PARAM_VALUE.PARTIAL_MSG_SIZE } {
	# Procedure called to update PARTIAL_MSG_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PARTIAL_MSG_SIZE { PARAM_VALUE.PARTIAL_MSG_SIZE } {
	# Procedure called to validate PARTIAL_MSG_SIZE
	return true
}

proc update_PARAM_VALUE.RCON0 { PARAM_VALUE.RCON0 } {
	# Procedure called to update RCON0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RCON0 { PARAM_VALUE.RCON0 } {
	# Procedure called to validate RCON0
	return true
}

proc update_PARAM_VALUE.RCON1 { PARAM_VALUE.RCON1 } {
	# Procedure called to update RCON1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RCON1 { PARAM_VALUE.RCON1 } {
	# Procedure called to validate RCON1
	return true
}

proc update_PARAM_VALUE.RCON10 { PARAM_VALUE.RCON10 } {
	# Procedure called to update RCON10 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RCON10 { PARAM_VALUE.RCON10 } {
	# Procedure called to validate RCON10
	return true
}

proc update_PARAM_VALUE.RCON2 { PARAM_VALUE.RCON2 } {
	# Procedure called to update RCON2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RCON2 { PARAM_VALUE.RCON2 } {
	# Procedure called to validate RCON2
	return true
}

proc update_PARAM_VALUE.RCON3 { PARAM_VALUE.RCON3 } {
	# Procedure called to update RCON3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RCON3 { PARAM_VALUE.RCON3 } {
	# Procedure called to validate RCON3
	return true
}

proc update_PARAM_VALUE.RCON4 { PARAM_VALUE.RCON4 } {
	# Procedure called to update RCON4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RCON4 { PARAM_VALUE.RCON4 } {
	# Procedure called to validate RCON4
	return true
}

proc update_PARAM_VALUE.RCON5 { PARAM_VALUE.RCON5 } {
	# Procedure called to update RCON5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RCON5 { PARAM_VALUE.RCON5 } {
	# Procedure called to validate RCON5
	return true
}

proc update_PARAM_VALUE.RCON6 { PARAM_VALUE.RCON6 } {
	# Procedure called to update RCON6 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RCON6 { PARAM_VALUE.RCON6 } {
	# Procedure called to validate RCON6
	return true
}

proc update_PARAM_VALUE.RCON7 { PARAM_VALUE.RCON7 } {
	# Procedure called to update RCON7 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RCON7 { PARAM_VALUE.RCON7 } {
	# Procedure called to validate RCON7
	return true
}

proc update_PARAM_VALUE.RCON8 { PARAM_VALUE.RCON8 } {
	# Procedure called to update RCON8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RCON8 { PARAM_VALUE.RCON8 } {
	# Procedure called to validate RCON8
	return true
}

proc update_PARAM_VALUE.RCON9 { PARAM_VALUE.RCON9 } {
	# Procedure called to update RCON9 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RCON9 { PARAM_VALUE.RCON9 } {
	# Procedure called to validate RCON9
	return true
}

proc update_PARAM_VALUE.STATE_COUNTER_SIZE { PARAM_VALUE.STATE_COUNTER_SIZE } {
	# Procedure called to update STATE_COUNTER_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_COUNTER_SIZE { PARAM_VALUE.STATE_COUNTER_SIZE } {
	# Procedure called to validate STATE_COUNTER_SIZE
	return true
}

proc update_PARAM_VALUE.state_block_size { PARAM_VALUE.state_block_size } {
	# Procedure called to update state_block_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.state_block_size { PARAM_VALUE.state_block_size } {
	# Procedure called to validate state_block_size
	return true
}

proc update_PARAM_VALUE.state_blocks { PARAM_VALUE.state_blocks } {
	# Procedure called to update state_blocks when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.state_blocks { PARAM_VALUE.state_blocks } {
	# Procedure called to validate state_blocks
	return true
}

proc update_PARAM_VALUE.times_two_B { PARAM_VALUE.times_two_B } {
	# Procedure called to update times_two_B when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.times_two_B { PARAM_VALUE.times_two_B } {
	# Procedure called to validate times_two_B
	return true
}


proc update_MODELPARAM_VALUE.PARTIAL_MSG_SIZE { MODELPARAM_VALUE.PARTIAL_MSG_SIZE PARAM_VALUE.PARTIAL_MSG_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PARTIAL_MSG_SIZE}] ${MODELPARAM_VALUE.PARTIAL_MSG_SIZE}
}

proc update_MODELPARAM_VALUE.FULL_MSG_SIZE { MODELPARAM_VALUE.FULL_MSG_SIZE PARAM_VALUE.FULL_MSG_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FULL_MSG_SIZE}] ${MODELPARAM_VALUE.FULL_MSG_SIZE}
}

proc update_MODELPARAM_VALUE.EXPANDED_KEYS { MODELPARAM_VALUE.EXPANDED_KEYS PARAM_VALUE.EXPANDED_KEYS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EXPANDED_KEYS}] ${MODELPARAM_VALUE.EXPANDED_KEYS}
}

proc update_MODELPARAM_VALUE.EXPANDED_KEY_PART_SIZE { MODELPARAM_VALUE.EXPANDED_KEY_PART_SIZE PARAM_VALUE.EXPANDED_KEY_PART_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EXPANDED_KEY_PART_SIZE}] ${MODELPARAM_VALUE.EXPANDED_KEY_PART_SIZE}
}

proc update_MODELPARAM_VALUE.INSTRUCTION_SIZE { MODELPARAM_VALUE.INSTRUCTION_SIZE PARAM_VALUE.INSTRUCTION_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INSTRUCTION_SIZE}] ${MODELPARAM_VALUE.INSTRUCTION_SIZE}
}

proc update_MODELPARAM_VALUE.STATE_COUNTER_SIZE { MODELPARAM_VALUE.STATE_COUNTER_SIZE PARAM_VALUE.STATE_COUNTER_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_COUNTER_SIZE}] ${MODELPARAM_VALUE.STATE_COUNTER_SIZE}
}

proc update_MODELPARAM_VALUE.RCON0 { MODELPARAM_VALUE.RCON0 PARAM_VALUE.RCON0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RCON0}] ${MODELPARAM_VALUE.RCON0}
}

proc update_MODELPARAM_VALUE.RCON1 { MODELPARAM_VALUE.RCON1 PARAM_VALUE.RCON1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RCON1}] ${MODELPARAM_VALUE.RCON1}
}

proc update_MODELPARAM_VALUE.RCON2 { MODELPARAM_VALUE.RCON2 PARAM_VALUE.RCON2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RCON2}] ${MODELPARAM_VALUE.RCON2}
}

proc update_MODELPARAM_VALUE.RCON3 { MODELPARAM_VALUE.RCON3 PARAM_VALUE.RCON3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RCON3}] ${MODELPARAM_VALUE.RCON3}
}

proc update_MODELPARAM_VALUE.RCON4 { MODELPARAM_VALUE.RCON4 PARAM_VALUE.RCON4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RCON4}] ${MODELPARAM_VALUE.RCON4}
}

proc update_MODELPARAM_VALUE.RCON5 { MODELPARAM_VALUE.RCON5 PARAM_VALUE.RCON5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RCON5}] ${MODELPARAM_VALUE.RCON5}
}

proc update_MODELPARAM_VALUE.RCON6 { MODELPARAM_VALUE.RCON6 PARAM_VALUE.RCON6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RCON6}] ${MODELPARAM_VALUE.RCON6}
}

proc update_MODELPARAM_VALUE.RCON7 { MODELPARAM_VALUE.RCON7 PARAM_VALUE.RCON7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RCON7}] ${MODELPARAM_VALUE.RCON7}
}

proc update_MODELPARAM_VALUE.RCON8 { MODELPARAM_VALUE.RCON8 PARAM_VALUE.RCON8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RCON8}] ${MODELPARAM_VALUE.RCON8}
}

proc update_MODELPARAM_VALUE.RCON9 { MODELPARAM_VALUE.RCON9 PARAM_VALUE.RCON9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RCON9}] ${MODELPARAM_VALUE.RCON9}
}

proc update_MODELPARAM_VALUE.RCON10 { MODELPARAM_VALUE.RCON10 PARAM_VALUE.RCON10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RCON10}] ${MODELPARAM_VALUE.RCON10}
}

proc update_MODELPARAM_VALUE.state_blocks { MODELPARAM_VALUE.state_blocks PARAM_VALUE.state_blocks } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.state_blocks}] ${MODELPARAM_VALUE.state_blocks}
}

proc update_MODELPARAM_VALUE.state_block_size { MODELPARAM_VALUE.state_block_size PARAM_VALUE.state_block_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.state_block_size}] ${MODELPARAM_VALUE.state_block_size}
}

proc update_MODELPARAM_VALUE.times_two_B { MODELPARAM_VALUE.times_two_B PARAM_VALUE.times_two_B } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.times_two_B}] ${MODELPARAM_VALUE.times_two_B}
}

