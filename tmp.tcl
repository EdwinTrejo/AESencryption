open_project AESEncryption
set ippath [list [get_property ip_repo_paths [current_project]]]
lappend ippath {C:/ProgramData/MATLAB/SupportPackages/R2020b/toolbox/hdlverifier/supportpackages/fpgadebug_xilinx/+hdlverifier/+fpga/+vivado}
set_property  ip_repo_paths  ${ippath} [current_project]
update_ip_catalog
close_project
