#!/bin/bash
cd ~
sudo apt update

# Desktop(MATE)のインストール
yes | sudo apt install ubuntu-desktop
yes | sudo apt install mate-*
yes | sudo apt install ubuntu-mate-*
echo mate-session > ~/.xsession
# ここでYとok、lightGBMを選ぶ

# リモートデスクトップのインストール
yes | sudo apt install xrdp
sudo update-rc.d -f xrdp defaults
sudo service xrdp restart
sudo systemctl enable xrdp

# ポートの有効化
sudo ufw allow from any to any port 3389 proto tcp
yes | sudo ufw enable

# WINEのインストール
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update
yes | sudo apt install --install-recommends winehq-stable
# wine --version

# winetricksのインストール
yes | sudo apt install winetricks
winetricks allfonts
