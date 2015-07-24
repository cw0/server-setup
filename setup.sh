#!/bin/bash

#Written: 2015-07-24
#Author: Christopher Wilson
#Description: Initial server setup script since it is awful reinstalling linux
#Assumptions: Ubuntu Server 14.04

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

echo "Done."

#exit the script
echo "All Done Here."
exit
