---
title: "SPI Comm"
excerpt: "Understanding SPI"

sidebar:
  nav: "docs"

toc: true
toc_label: "TOC installation"
toc_icon: "cog"


categories:
- your category
tags:
- tag 1
- tag 2
- tag 3
- tag 4

author: R. Nicklas
pinned: false
---


## GPG Custom Testing 

The last two weeks I've succesfully tested the drivers for the GoPiGo3 with a simple C++ program that activated the GPG3 LEDs and motors. Next step will be testing IR capabilities but I'm currently missing the necessary HW for this, the available sensor is based on a small laser to determine the distance to an object. The sensor uses the Time of Flight method for a very fast and accurate distance reading but isn't compatible to the already developed IR FPGA Modules that we intend to use in this project. 

# FPGA

Taking inspiration(and a spi_master verilog implementation) from this mail chain(https://groups.google.com/g/fpga-wars-explorando-el-lado-libre/c/El39dfgeR08/m/hVVLbQwUAwAJ) I've developed a simple module(https://github.com/RoboticsLabURJC/2017-tfg-richard-nicklas/blob/master/GPG3/ICESTUDIO) that is supposed to send the same information that was tested in the previous experiments with the C++ drivers to activate the GPG3 LEDs. I'm Having issues with building the project on ICESTUDIO as the error displayed aren't very clear and I'm still trying to figure out what "net `$false' has multiple drivers" means.