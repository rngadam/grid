# TCL File Generated by Component Editor 12.0
# Wed Jul 25 16:24:57 CST 2012
# DO NOT MODIFY


# 
# grid_CloseID "Close Up Tag ID" v1.0
# Ricky Ng-Adam 2012.07.25.16:24:57
# 
# 

# 
# request TCL package from ACDS 12.0
# 
package require -exact qsys 12.0


# 
# module grid_CloseID
# 
set_module_property NAME grid_CloseID
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP Lophilo/Grid
set_module_property AUTHOR "Ricky Ng-Adam"
set_module_property DISPLAY_NAME "Close Up Tag ID"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL grid_CloseID
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file grid_CloseID.v VERILOG PATH grid_CloseID.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point MRST
# 
add_interface MRST reset end
set_interface_property MRST associatedClock MCLK
set_interface_property MRST synchronousEdges DEASSERT
set_interface_property MRST ENABLED true

add_interface_port MRST rsi_MRST_reset reset Input 1


# 
# connection point MCLK
# 
add_interface MCLK clock end
set_interface_property MCLK clockRate 0
set_interface_property MCLK ENABLED true

add_interface_port MCLK csi_MCLK_clk clk Input 1


# 
# connection point CloseID
# 
add_interface CloseID avalon end
set_interface_property CloseID addressUnits WORDS
set_interface_property CloseID associatedClock MCLK
set_interface_property CloseID associatedReset MRST
set_interface_property CloseID bitsPerSymbol 8
set_interface_property CloseID burstOnBurstBoundariesOnly false
set_interface_property CloseID burstcountUnits WORDS
set_interface_property CloseID explicitAddressSpan 0
set_interface_property CloseID holdTime 0
set_interface_property CloseID linewrapBursts false
set_interface_property CloseID maximumPendingReadTransactions 0
set_interface_property CloseID readLatency 0
set_interface_property CloseID readWaitTime 1
set_interface_property CloseID setupTime 0
set_interface_property CloseID timingUnits Cycles
set_interface_property CloseID writeWaitTime 0
set_interface_property CloseID ENABLED true

add_interface_port CloseID avs_CloseID_readdata readdata Output 32
add_interface_port CloseID avs_CloseID_address address Input 2
add_interface_port CloseID avs_CloseID_read read Input 1
add_interface_port CloseID avs_CloseID_waitrequest waitrequest Output 1

