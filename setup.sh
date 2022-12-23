#!/bin/bash
# Ubuntu Set-up script A work in progress.

echo "Ubuntu basic setup script. Created 8/5/2022 by Cody Gula"

apt update && sudo apt upgrade -y

sudo apt-get update

# # Essential packages
sudo apt-get install curl htop lnav vim tmux meld git-all cowsay python3-pip git darktable awscli net-tools minicom neofetch newsboat -y

sudo snap install postman gimp umbrello -y

# Stuff I'm using currently
#sudo apt-get install 

echo "configuring git"
git config --global user.email "cgula7@gmail.com"
git config --global user.name "Cody Gula"
git config --global core.editor "vim"

# Install VS Code
echo "Installing VS Code"
# Copied from internet but untested.
# apt install software-properties-common apt-transport-https wget -y
# wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
# add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
# apt install code
# bash vscodesetup.sh


# Install Chrome
echo "Installing Chrome"
# This Works!
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb


pip3 install chromaterm
pip3 install selenium
pip3 install boto3


# Copy dot files

cp .vimrc ${HOME}
cp .bashrc ${HOME}

cp rssupdatescript.sh ${HOME}/scripts/rssupdatescript.sh
cp rsssraper.py ${HOME}/Setup-script-3/rssscraper.py
sudo chmod 777 ${HOME}/Setup-script-3/rssscraper.py

# TODO install python packages


sudo apt upgrade -y
sudo apt autoremove -y

echo "!!!!!!! Change user/password variable names in 'rssscraper.py'"
echo " ______                        __         __          __ "
echo "|      |.-----.--------.-----.|  |.-----.|  |_.-----.|  | "
echo "|   ---||  _  |        |  _  ||  ||  -__||   _|  -__||__| "
echo "|______||_____|__|__|__|   __||__||_____||____|_____||__| "
echo "                       |__|                               "