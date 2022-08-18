# 8bit-Up-Down-Counter
This document is about an 8 bit Up-Down Counter which is implemented in Verilog HDL. This counter designed for use in the development of applications that need a digital signal of 8 bit




<p align="center">
  <img  src="/images/p2.png">
</p>



### Circuit of 8bit up-down counter

 The circuit contains two 4 digit counters (CD 4516), a 14 digit oscillator - counter (CD 4060), LED's to represent the output, transistors and buttons to increase, decrease or reset the output. The frequency of counting can be done with different frequencies. The digital value changes according to the button pressed. 
 
 <p align="center">
  <img  src="/images/p3.png">
</p>

### Working of 8bit up-down counter

Here the 4 digit counters combine to give the 8 digit counter by the internal carry(connecting "Carry Out" of the first counter (IC2) to "Clock In" of the second (IC3). The "Clock In" of the first counter (IC2) is connected to one of the outputs of the oscillator - counter (IC1)).  The mode of counting (UP or DOWN) is specified by the status of CL, U/D and RESET inputs. The signals to these inputs are connected to both counters. Table I shows the combination of these signals demand for each function, if there is a clock pulse presented
 Clock signal (CL) initiates the counting  which comes from the first transistor . This starts the up counting when the button UP is pressed
 The state of U/D signal determines the direction of counting. U/D signal comes from the second transistor. When the button DOWN pressed the transistor sets logic 0 to its output, and activates DOWN counting.
 RESET button sets logic 1 to the RESET input of counters and all the outputs go to 0.
     
 <p align="center">
  <img  src="/images/p1.png">
</p>


## Applications
This counter is used in development of  applications such as ecoders, DAC or digital inputs to microcontrollers. These synchronous, 8-bit up/down
counters feature internal-carry look-ahead circuitry for cascading in high-speed counting applications.These counters are fully programmable; they may be preset to any number between 0 and 255.

## About iverilog 
Icarus Verilog is an implementation of the Verilog hardware description language.
## About GTKWave
GTKWave is a fully featured GTK+ v1. 2 based wave viewer for Unix and Win32 which reads Ver Structural Verilog Compiler generated AET files as well as standard Verilog VCD/EVCD files and allows their viewing

### Installing iverilog and GTKWave

#### For Ubuntu

Open your terminal and type the following to install iverilog and GTKWave
```
$   sudo apt-get update
$   sudo apt-get install iverilog gtkwave
```

### Functional Simulation
To clone the Repository and download the Netlist files for Simulation, enter the following commands in your terminal.
```
$   sudo apt install -y git
$   git clone https://github.com/Ramyerra2703/8bit-Up-Down-Counter.git
$   cd 8bit-Up-Down-Counter
$   iverilog iiitb_8bit_up_down_counter.v iiitb_8bit_up_down_counter_tb.v
$   ./a.out
$   gtkwave waveform.vcd
```

## Functional Characteristics

The image below are the waveforms taken from the above instructions with the inputs 
the below picture represents the waveform when the counter is counting upwards(up_down=0)

 <p align="center">
  <img  src="/images/t3.png">
</p>

the below picture represents the waveform when the counter rests and  down counting starts(reset = 0,up_down=1)

 <p align="center">
  <img  src="/images/t2.png">
</p>

### Synthesis of verilog code

#### About Yosys
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.

- more at https://yosyshq.net/yosys/

To install yosys follow the instructions in  this github repository

https://github.com/YosysHQ/yosys

##### commands to run synthesis in yosys
first create an yosys script 'yosys_run.sh' and paste the following commands- 
```
read_verilog iiitb_8bit_up_down_counter.v
synth -top up_down_counter
dfflibmap -liberty /home/ram/Desktop/sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty /home/ram/Desktop/sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
flatten
write_verilog -noattr synth_udc.v
stat
show

```

after running the commands we get the following output
 <p align="center">
  <img  src="/images/ss1.png">
</p>

 <p align="center">
  <img  src="/images/ss2.png">
</p>


## Contributors 

- **Ram Yerra** 
- **Kunal Ghosh** 


## Acknowledgments

- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd.


## Contact Information

- Ram Yerra, Integrated Masters of Technology (ECE) , International Institute of Information Technology, Bangalore  Ram.Yerra@iiitb.ac.in
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com

## References:
- http://www.porlidas.gr/UpDnCount/UpDnCountEn.htm
- https://www.asic-world.com/examples/verilog/up_down_counter.html
- https://pccomponents.com/datasheets/TI-SN74AS869.PDF
- https://www.fpga4student.com/2017/03/verilog-code-for-counter-with-testbench.html
