#!/bin/bash
# Ubuntu Set-up script A work in progress.

echo "Ubuntu basic setup script. Created 8/5/2022 by Cody Gula"

apt update && sudo apt upgrade -y

# Essential packages
sudo apt-get install curl htop lnav vim tmux git-all cowsay python3-pip -y

# Stuff I'm using currently
#sudo apt-get install 


# Install VS Code
echo "Installing VS Code"
# Copied from internet but untested.
apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt install code


# Install Chrome
echo "Installing Chrome"
# This Works!
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb


# install python packages


echo " ______                        __         __          __ "
echo "|      |.-----.--------.-----.|  |.-----.|  |_.-----.|  | "
echo "|   ---||  _  |        |  _  ||  ||  -__||   _|  -__||__| "
echo "|______||_____|__|__|__|   __||__||_____||____|_____||__| "
echo "                       |__|                               "