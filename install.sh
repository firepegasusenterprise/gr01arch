#!/bin/bash

cd ~
git clone https://github.com/baskerville/bspwm.git ~
git clone https://github.com/baskerville/sxhkd.git ~
cd bspwm && make && sudo make install
cd ../sxhkd && make && sudo make install
cd ~
mkdir -p .config/{bspwm,sxhkd}
cp ~/gr01arch/sources/bspwmrc ~/.config/bspwm/
sudo chmod u+x ~/.config/bspwm/bspwmrc
cp ~/gr01arch/sources/sxhkdrc ~/.config/bspwm/
mkdir ~/.config/bspwm/scripts
cp ~/gr01arch/sources/bspwm_resize ~/.config/bspwm/scripts/
cd ~
touch ~/.xinitrc
echo "sxhkd &" >> ~/.xinitrc
echo "exec bspwm" >> ~/.xinitrc
mkdir  ~/.config/compton/
cp ~/gr01arch/sources/compton.conf ~/.config/compton/compton.conf
mkdir ~/Pictures
cp ~/gr01arch/sources/wallpaper.jpg ~/Pictures/
sudo cp ~/gr01arch/sources/polybar.tar /opt/
cd /opt/
sudo tar xvzf *
sudo rm *.tar
sudo mv * polybar
cd /opt/polybar
sudo mkdir build
cd build
sudo cmake ..
sudo make -j$(nproc)
sudo make install
mkdir ~/.config/polybar
cp ~/gr01arch/sources/config.ini ~/.config/polybar/
cp ~/gr01arch/sources/launch.sh ~/.config/polybar/
mkdir ~/.config/bin
cp ~/gr01arch/sources/ethernet.sh ~/.config/bin/
cp ~/gr01arch/sources/network.sh ~/.config/bin/
cp ~/gr01arch/sources/vpn.sh ~/.config/bin/
cp ~/gr01arch/sources/battery.sh ~/.config/bin/
cp ~/gr01arch/sources/username.sh ~/.config/bin/
