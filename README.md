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
$   git clone https://github.com/Ayyappa1911/iiitb_sysarray_for_3x3_mat_mul.git
$   cd iiitb_sysarray_for_3x3_mat_mul
$   iverilog iiitb_sysarray.v iiitb_sysarray_tb.v PE.v delay.v
$   ./a.out
$   gtkwave sysarray.vcd
```

## Functional Characteristics

The image below are the waveforms taken from the above instructions with the inputs 

A = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ], B = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ] 

and the output D = [ [30, 36, 42], [66, 81, 96], [102, 126, 150] ]

 <p align="center">
  <img  src="/images/t1.png">
</p>

All the other characteristics are mentioned under the Heading Systolic Array

 <p align="center">
  <img  src="/images/t2.png">
</p>
## synthesis of verilog code

#### About Yosys
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.

- more at https://yosyshq.net/yosys/

To install yosys follow the instructions in  this github repository

https://github.com/YosysHQ/yosys


#### to synthesize
```
$   yosys
$   yosys>    script yosys_run.sh
```

#### to see diffarent types of cells after synthesys
```
$   yosys>    stat
```
#### to generate schematics
```
$   yosys>    show
```


## Contributors 

- **Ram Yerra** 
- **Kunal Ghosh** 


## Acknowledgments

- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd.


## Contact Information

- Ram Yerra, Integrated Masters of Technology (ECE) , International Institute of Information Technology, Bangalore  Ram.Yerra@iiitb.ac.in
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com

## References:
- <a href="http://www.porlidas.gr/UpDnCount/UpDnCountEn.htm></a> 
- <a href="https://www.asic-world.com/examples/verilog/up_down_counter.html></a> 
- <a href="https://pccomponents.com/datasheets/TI-SN74AS869.PDF></a> 
