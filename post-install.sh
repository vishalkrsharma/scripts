#!/bin/bash

# Unsnap Firefox

sudo snap remove firefox
sudo add-apt-repository ppa:mozillateam/ppa -y
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox
sudo apt install firefox

# Basic Utilities

cd ~/
sudo apt install update
sudo apt install upgrade
sudo apt install -y htop gdebi preload synaptic obs-studio chrome-gnome-shell dconf-editor cmatrix git vlc virt-manager cava ranger gdebi-core wget vim curl steam

# Codecs and MS Fonts

sudo apt install -y ubuntu-restricted-extras ubuntu-restricted-addons

# Fonts

sudo apt install -y fonts-cascadia-code

# Visual Studio Code

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# Java

sudo apt install -y default-jdk default-jdk-doc default-jdk-headless default-jre default-jre-headless

# Python

sudo apt install -y python3 python3-pip

# Discord

cd Downloads/
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/discord.deb
rm discord.deb
cd ~/

# NodeJS

curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh -o install_nvm.sh
bash install_nvm.sh
export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source ~/.bash_profile
command -v nvm
nvm install --lts

# Spotify

curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y

# Wonderwall

sudo snap install wonderwall

echo "All done! Please restart..."
