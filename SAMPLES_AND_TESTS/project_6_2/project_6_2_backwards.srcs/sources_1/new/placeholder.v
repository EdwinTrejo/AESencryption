`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2020 04:30:05 PM
// Design Name: 
// Module Name: placeholder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//check how many errors

module placeholder();

    uart_axi_master uart_axi_master_uut();
    test2_toplevel test2_toplevel_uut();
    io_stress_test io_stress_test_uut();
    fifo_singleclock_noc fifo_singleclock_noc_uut();
    design_1_wrapper design_1_wrapper_uut();
    glip_jtag_toplevel glip_jtag_toplevel_uut();
    serial_device serial_device_uut();
    nexys4ddr nexys4ddr_uut();
    glip_cypressfx3_toplevel glip_cypressfx3_toplevel_uut();
    hamming_check hamming_check_uut();

endmodule