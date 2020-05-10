# Welcome to Chisel Hardware Construction Language 

This project aims to run simulation and synthesis on a basic hardware component, implemented in Chisel.
This will serve as a setup example for other commercial projects and will help newcomers to evaluate Chisel features and the possibility of integration with Verilog and VHDL IPs

## Prerequesties 

This tutorial was tested for `Ubuntu 18.10` and does not guarantee seamless operation on other OS without issues

## Installation

1. Install Java 11
```bash
  sudo apt-get install openjdk-11-jre openjdk-11-jdk
```

2. Install the Scala Build Tool (sbt) from [here](https://www.scala-sbt.org/1.x/docs/Installing-sbt-on-Linux.html) 

3. Install Verilator and GTKWave 
```bash
  sudo apt install build-essential verilator gtkwave
```

4. Optional - Install a `Visual Studio Code IDE` for a better code experience from [here](https://code.visualstudio.com/download)

## Starting up 

1. Clone a hello world project from Git: 
```bash
  git clone git@github.com:Neurodyne/chisel-hello.git
```

2. Run Chisel Tests with SBT. After running the `sim`, you can find `Verilog` and `VCD Dump` outputs in the `out` folder
```bash
  make sim
```

3. View sim results with GTKWave [program](http://gtkwave.sourceforge.net/)
```bash
  make view
```

