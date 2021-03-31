---
title: "GPG3 Distance Sensor"
excerpt: "Testing distance sensor"

sidebar:
  nav: "docs"

toc: true
toc_label: "TOC installation"
toc_icon: "cog"


categories:
- your category
tags:
- GPG
- video


author: R. Nicklas
pinned: false
---


## GPG Testing Distance Sensor

Testing GoPiGo's Distance Sensor which uses a small laser to determine the distance to an object. The sensor uses the Time of Flight method for a very fast and accurate distance reading.
I programmed a python script to test the sensor capabilities and also developed a simple "bump n go" algorithm, code can be found [here](https://github.com/RoboticsLabURJC/2017-tfg-richard-nicklas/tree/master/GPG3/raspberry/PYTHON)


# Test

<iframe width="560" height="315" src="https://www.youtube.com/embed/Tjxwd8zhaVg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>




# Bump N Go

<iframe width="560" height="315" src="https://www.youtube.com/embed/keo7stQvjp4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>




# FPGA (LEDs still pending)

Still havent figured out whats wrong with my IceStudio module. I'll have to contact IceStudio support/developers to finally fix this issue or maybe figure a different approach to test my SPI LED verilog module. 