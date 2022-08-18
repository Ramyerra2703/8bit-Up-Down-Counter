# read design

read_verilog iiitb_8bit_up_down_counter.v

# generic synthesis
synth -top up_down_counter

# mapping to mycells.lib
dfflibmap -liberty /home/ram/Desktop/sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty /home/ram/Desktop/sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

clean
flatten
# write synthesized design
write_verilog -noattr synth_udc.v
