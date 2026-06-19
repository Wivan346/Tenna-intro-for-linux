# Intro for KDE 6  
\
![KDE Plasma 6](https://img.shields.io/badge/KDE-Plasma%206-blue?logo=kde&logoColor=white)
![Display Server](https://img.shields.io/badge/Display%20Server-Wayland-orange)
![License](https://img.shields.io/badge/License-MIT-green)

## Preview
<p aligm="center">
   <img width="400" alt="intro_wivan346" src="https://github.com/user-attachments/assets/940970cf-bc43-4f7f-b23c-08f43f4aff2d" />
</p>

link for youtube
https://youtu.be/94d-lfgtSLM

## Requirements
- MPV (media player)
- intro.mp4 (you can use whatever you want, but let's take mine as an example)  

## Installing

1. Quick start:
   ```bash
   git clone https://github.com/Wivan346/Tenna-intro-for-linux.git
   cd Tenna-intro-for-linux
   chmod +x install.sh
   sudo ./install.sh
2. Find out the name of your primary monitor:
   ```bash
   ls /sys/class/drm/ 
   #example HDMI-A-1
3. Replace with your monitor (--drm-connector=YOUR MONITOR)
   ```bash
   sudo nano /usr/local/bin/boot-intro.sh
4. Reboot and enjoy
