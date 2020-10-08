#!/bin/bash
# CodeBar 1.0
if [[ $EUID -ne 0 ]]; then
   echo "Run This Script With Root" 
   echo "This Will Give Your Debian Distro A Cool Look" 
   exit 1
fi
i="0"
clear
while [ $i -lt 1 ]
do
clear

#COLOUR
red='\e[1;31m'
yellow='\e[0;33m'
Blue='\e[1;34m'

if [[ $(id -u) != 0 ]]
then
   echo -e ""$E"Permission denied!"
   exit
fi

{
ASESR="$(ping -c 1 -q www.google.com >&/dev/null; echo $?)"
} &> /dev/null
if [[ "$ASESR" != 0 ]]
then 
   echo -e ""$E"No Internet connection!"
   exit
fi

sleep 0.5
clear
sleep 0.5
echo -e '\e[1;33m
   _____          _      ____             
  / ____|        | |    |  _ \            
 | |     ___   __| | ___| |_) | __ _ _ __ 
 | |    / _ \ / _` |/ _ \  _ < / _` | '__|
 | |___| (_) | (_| |  __/ |_) | (_| | |   
  \_____\___/ \__,_|\___|____/ \__,_|_|\e[1;34m

'
 echo -e '\e[3;34m Created By xor3n & SmokinSpectre                 
\e[0m\e[3;39m

sleep 1
echo -e ""$G"Installing All The Necessary Packages..."
sleep 1

{
apt-get update
apt-get -y install bspwm
apt-get -y install sxhkd
apt-get -y install rofi
apt-get -y install polybar
pacman -Sy
pacman -S --noconfirm bspwm
pacman -S --noconfirm sxhkd
pacman -S --noconfirm rofi
pacman -S --noconfirm polybar
zypper refresh
zypper install -y bspwm
zypper install -y sxhkd
zypper install -y rofi
zypper install -y polybar
yum -y install git
yum -y install sxhkd
yum -y install rofi
yum -y install polybar
dnf -y install git
dnf -y install sxhkd
dnf -y install rofi
dnf -y install polybar
eopkg update-repo
eopkg -y install git
eopkg -y install sxhkd
eopkg -y install rofi
eopkg -y install polybar
xbps-install -S
xbps-install -y bspwm
xbps-install -y sxhkd
xbps-install -y rofi
xbps-install -y polybar
} &> /dev/null

sleep 1
echo -e ""$S"The Setup Is Completed Now You Can Run The Tool!"
sleep 1