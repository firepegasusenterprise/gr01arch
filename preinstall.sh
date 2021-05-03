#!/bin/bash

sudo apt update

sudo chmod +x ~/gr01arch/install.sh
sudo chmod +x ~/gr01arch/sources/bspwmrc
sudo chmod +x ~/gr01arch/sources/launch.sh
sudo chmod +x ~/gr01arch/sources/ethernet.sh
sudo chmod +x ~/gr01arch/sources/network.sh
sudo chmod +x ~/gr01arch/sources/vpn.sh
sudo chmod +x ~/gr01arch/sources/battery.sh
sudo chmod +x ~/gr01arch/sources/username.sh

sudo pacman -S cmake make git gcc terminator bspwm sxhkd cmake cmake-data pkg-config python3-sphinx python3-packaging libcairo2-dev python3-xcbgen xcb-proto libxcb xcb-util xcb-util-wm xcb-util-keysyms