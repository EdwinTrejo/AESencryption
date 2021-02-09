# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DECERR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "EXOKAY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OFF" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OKAY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ON" -parent ${Page_0}
  ipgui::add_param $IPINST -name "READ_COMPLETE_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "READ_READY_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "READ_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SLVERR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WAIT_STATE" -parent ${Page_0}


}

proc update_PARAM_VALUE.DECERR { PARAM_VALUE.DECERR } {
	# Procedure called to update DECERR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DECERR { PARAM_VALUE.DECERR } {
	# Procedure called to validate DECERR
	return true
}

proc update_PARAM_VALUE.EXOKAY { PARAM_VALUE.EXOKAY } {
	# Procedure called to update EXOKAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EXOKAY { PARAM_VALUE.EXOKAY } {
	# Procedure called to validate EXOKAY
	return true
}

proc update_PARAM_VALUE.OFF { PARAM_VALUE.OFF } {
	# Procedure called to update OFF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OFF { PARAM_VALUE.OFF } {
	# Procedure called to validate OFF
	return true
}

proc update_PARAM_VALUE.OKAY { PARAM_VALUE.OKAY } {
	# Procedure called to update OKAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OKAY { PARAM_VALUE.OKAY } {
	# Procedure called to validate OKAY
	return true
}

proc update_PARAM_VALUE.ON { PARAM_VALUE.ON } {
	# Procedure called to update ON when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ON { PARAM_VALUE.ON } {
	# Procedure called to validate ON
	return true
}

proc update_PARAM_VALUE.READ_COMPLETE_STATE { PARAM_VALUE.READ_COMPLETE_STATE } {
	# Procedure called to update READ_COMPLETE_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ_COMPLETE_STATE { PARAM_VALUE.READ_COMPLETE_STATE } {
	# Procedure called to validate READ_COMPLETE_STATE
	return true
}

proc update_PARAM_VALUE.READ_READY_STATE { PARAM_VALUE.READ_READY_STATE } {
	# Procedure called to update READ_READY_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ_READY_STATE { PARAM_VALUE.READ_READY_STATE } {
	# Procedure called to validate READ_READY_STATE
	return true
}

proc update_PARAM_VALUE.READ_STATE { PARAM_VALUE.READ_STATE } {
	# Procedure called to update READ_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ_STATE { PARAM_VALUE.READ_STATE } {
	# Procedure called to validate READ_STATE
	return true
}

proc update_PARAM_VALUE.SLVERR { PARAM_VALUE.SLVERR } {
	# Procedure called to update SLVERR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SLVERR { PARAM_VALUE.SLVERR } {
	# Procedure called to validate SLVERR
	return true
}

proc update_PARAM_VALUE.WAIT_STATE { PARAM_VALUE.WAIT_STATE } {
	# Procedure called to update WAIT_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WAIT_STATE { PARAM_VALUE.WAIT_STATE } {
	# Procedure called to validate WAIT_STATE
	return true
}


proc update_MODELPARAM_VALUE.OKAY { MODELPARAM_VALUE.OKAY PARAM_VALUE.OKAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OKAY}] ${MODELPARAM_VALUE.OKAY}
}

proc update_MODELPARAM_VALUE.EXOKAY { MODELPARAM_VALUE.EXOKAY PARAM_VALUE.EXOKAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EXOKAY}] ${MODELPARAM_VALUE.EXOKAY}
}

proc update_MODELPARAM_VALUE.SLVERR { MODELPARAM_VALUE.SLVERR PARAM_VALUE.SLVERR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SLVERR}] ${MODELPARAM_VALUE.SLVERR}
}

proc update_MODELPARAM_VALUE.DECERR { MODELPARAM_VALUE.DECERR PARAM_VALUE.DECERR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DECERR}] ${MODELPARAM_VALUE.DECERR}
}

proc update_MODELPARAM_VALUE.OFF { MODELPARAM_VALUE.OFF PARAM_VALUE.OFF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OFF}] ${MODELPARAM_VALUE.OFF}
}

proc update_MODELPARAM_VALUE.ON { MODELPARAM_VALUE.ON PARAM_VALUE.ON } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ON}] ${MODELPARAM_VALUE.ON}
}

proc update_MODELPARAM_VALUE.WAIT_STATE { MODELPARAM_VALUE.WAIT_STATE PARAM_VALUE.WAIT_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WAIT_STATE}] ${MODELPARAM_VALUE.WAIT_STATE}
}

proc update_MODELPARAM_VALUE.READ_READY_STATE { MODELPARAM_VALUE.READ_READY_STATE PARAM_VALUE.READ_READY_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.READ_READY_STATE}] ${MODELPARAM_VALUE.READ_READY_STATE}
}

proc update_MODELPARAM_VALUE.READ_STATE { MODELPARAM_VALUE.READ_STATE PARAM_VALUE.READ_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.READ_STATE}] ${MODELPARAM_VALUE.READ_STATE}
}

proc update_MODELPARAM_VALUE.READ_COMPLETE_STATE { MODELPARAM_VALUE.READ_COMPLETE_STATE PARAM_VALUE.READ_COMPLETE_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.READ_COMPLETE_STATE}] ${MODELPARAM_VALUE.READ_COMPLETE_STATE}
}

