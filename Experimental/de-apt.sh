#!/bin/bash

#Get the necessary components
apt-get update
apt-mark hold systemd*
apt-get install xfce4 tightvncserver --no-install-recommends -y

#Setup the necessary files
mkdir ~/.vnc
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Experimental/xstartup -P ~/.vnc/
chmod +x ~/.vnc/xstartup

echo " "
echo "You can now start vncserver by running /etc/init.d/vncserver start"
echo " "
echo "It will ask you to enter a password when first time starting it."
echo " "
echo "The VNC Server will be started at 127.0.0.1:5901"
echo " "
echo "You can connect to this address with a VNC Viewer you prefer"
echo " "
echo "Connect to this address will open a window with full Xfce4 Desktop Environment"
echo " "
echo " "
echo " "
echo "Starting VNC Server"
echo " "
echo " "
echo " "

vncserver
