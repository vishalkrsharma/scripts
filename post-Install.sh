#!/bin/bash

# Basic Utilities

cd ~/
sudo apt install update
sudo apt install upgrade
sudo apt install -yy htop gdebi preload synaptic obs-studio chrome-gnome-shell dconf-editor cmatrix git vlc virt-manager cava ranger gdebi-core wget vim curl steam

# Codecs and MS Fonts

sudo apt install -yy ubuntu-restricted-extras ubuntu-restricted-addons

# Git Config File

git config --global user.name "vishalkrsharma"
git config --global user.email "vishalkrsharma1234@gmail.com"

# Ubuntu Customizers

sudo apt install -yy chrome-gnome-shell dconf-editor gnome-tweaks gnome-shell-extensions

# Fonts

sudo apt install -yy fonts-cascadia-code

# Google Chrome

cd Downloads/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
cd ~/

# Firefox

sudo snap remove firefox
sudo apt install -yy firefox

# Visual Studio Code

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# Regolith Linux

sudo add-apt-repository ppa:regolith-linux/release
sudo apt install -yy regolith-desktop-standard

# Java

sudo apt install -yy default-jdk default-jdk-doc default-jdk-headless default-jre default-jre-headless

# Python

sudo apt install --y python3 pip3

# Discord

cd Downloads/
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/discord.deb -y
cd ~/

# NodeJS

curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Wonderwall

sudo snap install wonderwall

# # Zsh Shell

# sudo apt install zsh

# # Zsh Default Shell

# chsh -s $(which zsh)

# # Zsh Plugins

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# OhMyZsh

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerline10k

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# End

echo "All done! Please restart..."