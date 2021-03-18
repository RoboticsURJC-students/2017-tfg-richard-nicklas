---
title: "GPG Distance Sensor"
excerpt: "Testing distance sensor"

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


## GPG Testing Distance Sensor

Testing GoPiGo's Distance Sensor which uses a small laser to determine the distance to an object. The sensor uses the Time of Flight method for a very fast and accurate distance reading.
I programmed a simple python script to test the sensor capabilities and also developed a simple "bump n go" algorithm.


# Test

<iframe width="420" height="315" src="https://youtu.be/Tjxwd8zhaVg" frameborder="0" allowfullscreen></iframe>



# Bump N Go

<iframe width="420" height="315" src="https://youtu.be/keo7stQvjp4" frameborder="0" allowfullscreen></iframe>


#FPGA (LEDs still pending)

Still havent figured out whats wrong with my IceStudio module, Felipe also couln't fix the problem. I'll have to contact IceStudio support/developers to finally fix this issue or maybe figure a different approach to test my SPI LED verilog module. 