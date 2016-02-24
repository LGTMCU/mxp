# TCL File Generated by Component Editor 11.0
# Tue Oct 04 02:35:44 PDT 2011
# DO NOT MODIFY


# +-----------------------------------
# | 
# | frame_writer "Frame Writer" v1.0
# | Aaron Severance 2011.10.04.02:35:44
# | 
# | 
# | /data/aaronsev/16tpad/ip/frame_writer/frame_writer.v
# | 
# |    ./frame_writer.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 11.0
# | 
package require -exact sopc 11.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module frame_writer
# | 
set_module_property NAME frame_writer
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property AUTHOR "Aaron Severance"
set_module_property DISPLAY_NAME "Frame Writer"
set_module_property TOP_LEVEL_HDL_FILE frame_writer.v
set_module_property TOP_LEVEL_HDL_MODULE frame_writer
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file frame_writer.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock
# | 
add_interface clock clock end
set_interface_property clock clockRate 0

set_interface_property clock ENABLED true

add_interface_port clock clk clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset
# | 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT

set_interface_property reset ENABLED true

add_interface_port reset reset reset Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point slave
# | 
add_interface slave avalon end
set_interface_property slave addressUnits WORDS
set_interface_property slave associatedClock clock
set_interface_property slave associatedReset reset
set_interface_property slave bitsPerSymbol 8
set_interface_property slave burstOnBurstBoundariesOnly false
set_interface_property slave burstcountUnits WORDS
set_interface_property slave explicitAddressSpan 0
set_interface_property slave holdTime 0
set_interface_property slave linewrapBursts false
set_interface_property slave maximumPendingReadTransactions 0
set_interface_property slave readLatency 0
set_interface_property slave readWaitTime 1
set_interface_property slave setupTime 0
set_interface_property slave timingUnits Cycles
set_interface_property slave writeWaitTime 0

set_interface_property slave ENABLED true

add_interface_port slave slave_write write Input 1
add_interface_port slave slave_address address Input 2
add_interface_port slave slave_writedata writedata Input 32
add_interface_port slave slave_waitrequest waitrequest Output 1
add_interface_port slave slave_readdata readdata Output 32
add_interface_port slave slave_read read Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point streaming_sink
# | 
add_interface streaming_sink avalon_streaming end
set_interface_property streaming_sink associatedClock clock
set_interface_property streaming_sink associatedReset reset
set_interface_property streaming_sink dataBitsPerSymbol 8
set_interface_property streaming_sink errorDescriptor ""
set_interface_property streaming_sink firstSymbolInHighOrderBits true
set_interface_property streaming_sink maxChannel 0
set_interface_property streaming_sink readyLatency 1

set_interface_property streaming_sink ENABLED true

add_interface_port streaming_sink din_valid valid Input 1
add_interface_port streaming_sink din_startofpacket startofpacket Input 1
add_interface_port streaming_sink din_endofpacket endofpacket Input 1
add_interface_port streaming_sink din_data data Input 24
add_interface_port streaming_sink din_ready ready Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point interrupt_sender
# | 
add_interface interrupt_sender interrupt end
set_interface_property interrupt_sender associatedAddressablePoint slave
set_interface_property interrupt_sender associatedClock clock
set_interface_property interrupt_sender associatedReset reset

set_interface_property interrupt_sender ENABLED true

add_interface_port interrupt_sender interrupt irq Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point master
# | 
add_interface master avalon start
set_interface_property master addressUnits SYMBOLS
set_interface_property master associatedClock clock
set_interface_property master associatedReset reset
set_interface_property master bitsPerSymbol 8
set_interface_property master burstOnBurstBoundariesOnly false
set_interface_property master burstcountUnits WORDS
set_interface_property master doStreamReads false
set_interface_property master doStreamWrites false
set_interface_property master holdTime 0
set_interface_property master linewrapBursts false
set_interface_property master maximumPendingReadTransactions 0
set_interface_property master readLatency 0
set_interface_property master readWaitTime 1
set_interface_property master setupTime 0
set_interface_property master timingUnits Cycles
set_interface_property master writeWaitTime 0

set_interface_property master ENABLED true

add_interface_port master master_write write Output 1
add_interface_port master master_writedata writedata Output 32
add_interface_port master master_waitrequest waitrequest Input 1
add_interface_port master master_address address Output 32
add_interface_port master master_burstcount burstcount Output 6
# | 
# +-----------------------------------