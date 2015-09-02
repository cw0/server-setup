#!/bin/bash

#Written: 2015-07-24
#Author: Christopher Wilson
#Description: Initial server setup script since it is awful reinstalling linux
#Assumptions: Ubuntu Server 14.04

#init variables
INSTALL_LIST = "git tmux vim"
NODE_VERSION = 0.10.32

#begin setup
echo "Everything broken again? Don't worry I got you."

#update apt-get
echo "Updating Apt Repositories..."
sudo apt-get update || echo "Err: Failed to Update" &&
echo "Upgrading installed packages..."
sudo apt-get -y upgrade || echo "Err: Failed to Upgrade" &&
echo "Done."

#remove unnecessary libraries
echo "Attempting to remove useless garbage..."

echo "Done."

#install basic dev tools
echo "Installing basic development tools..."
sudo apt-get install $INSTALL_LIST
echo "Done."

#install nvm
echo "Installing NVM..."
git clone https://github.com/creationix/nvm.git ~/.nvm &&
echo "source ~/.nvm/nvm.sh" >> ~/.bashrc
echo "source ~/.nvm/nvm.sh" >> ~/.profile
source ~/.nvm/nvm.sh
nvm install $NODE_VERSION
nvm alias default $NODE_VERSION
echo "Done."

echo "Updating NPM..."
npm update -g --verbose
echo "Done."

#exit the script
echo "All Done Here. Press Any Key To Reboot..."
read FINAL_INPUT
sudo reboot
exit
