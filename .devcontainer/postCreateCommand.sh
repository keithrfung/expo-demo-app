#!/bin/bash
echo -e "\nStarting post create command script..."
echo "Dev machine:"
uname -a
echo -e "\nInstalling expo CLI..."
npm i -g eas-cli
echo -e "\nInstalling npm packages..."
npm i
echo -e "\nInstalling watchman...\n"
sudo apt update
sudo apt install watchman
watchman version

echo -e "\n*******************************"
echo -e "\nDev container ready!".
echo -e "\n*******************************\n"
