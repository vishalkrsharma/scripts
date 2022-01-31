#!/bin/bash

# Basic Utilities

cd ~/
sudo apt install update
sudo apt install upgrade
sudo apt install -y htop gdebi preload synaptic obs-studio chrome-gnome-shell dconf-editor cmatrix git vlc virt-manager cava ranger gdebi-core wget vim curl steam

# Codecs and MS Fonts

sudo apt install -y ubuntu-restricted-extras ubuntu-restricted-addons

# Fonts

sudo apt install -y fonts-cascadia-code

# Google Chrome

cd Downloads/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
cd ~/

# Firefox

sudo snap remove firefox
sudo apt install -y firefox

# Visual Studio Code

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# Regolith Linux

sudo add-apt-repository ppa:regolith-linux/release -y
sudo apt install -y regolith-desktop-standard

# Java

sudo apt install -y default-jdk default-jdk-doc default-jdk-headless default-jre default-jre-headless

# Python

sudo apt install -y python3 pip3

# Discord

cd Downloads/
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/discord.deb
cd ~/

# NodeJS

curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Wonderwall

sudo snap install wonderwall

echo "All done! Please restart..."