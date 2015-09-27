#!/bin/bash

#Written: 2015-09-27
#Author: Christopher Wilson
#Description: Restore bashrc and profile from backup and remove nvm
#Assumptions: Ubuntu Server 14.04

#Delete files
echo "Removing NVM..."
sudo rm -rf ~/.nvm
echo "...Done"

#Restore backups.
echo "Restoring bashrc..."
sudo cp ~/.bashrc.backup ~/.bashrc
echo "...Done"

echo "Restoring profile..."
sudo cp ~/.profile.backup ~/.profile
echo "...Done"

#Exit script
echo "Press any key to exit...."
read FINAL_INPUT
exit
