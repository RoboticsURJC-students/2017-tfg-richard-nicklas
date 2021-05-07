---
title: "Filtered Color Detection"
excerpt: "FPGA verilog module that display the position of custom filtered color objects"

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
- Computer Vision


gallery:
  - url: /assets/images/RBallDetect.PNG
    image_path: assets/images/RBallDetect.PNG
    alt: "Red Object Detection"
  - url: /assets/images/CustomDetect.PNG
    image_path: assets/images/CustomDetect.PNG
    alt: "Custom Object Detection"


author: R. Nicklas
pinned: false
---


## Filtered Color Detection

Finally managed to make it work, code can be found [here](https://github.com/RoboticsLabURJC/2017-tfg-richard-nicklas/tree/master/GPG3/ICESTUDIO/RBallDetect_POC), this repo contains 4 main modules: Camera, ColorFilter/ObjectDetection, LED Display and VGA Display.

# It works
<iframe width="560" height="315" src="https://www.youtube.com/embed/ioeNptRcPDY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



{% include gallery caption=" Diagram " %}

A reduced and improved example can be found [here](https://github.com/RoboticsLabURJC/2017-tfg-richard-nicklas/tree/master/GPG3/ICESTUDIO/RBallDetect), with 4 main modules: Camera, ColorFilter, ObjectDetection and LED Display. In this module the Object Detection work on the configured color Filter (Button 2)
