set src_dir [pwd]
set prj_dir "vivado_prj"
file mkdir ../$prj_dir
cd ../$prj_dir
create_project test.xpr
set_property PART xc7vx485tffg1761-1 [current_project]
add_file $src_dir/test.v
launch_runs synth_1 -force
wait_on_run synth_1