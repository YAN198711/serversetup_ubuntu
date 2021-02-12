#!/bin/bash
cd ~
sudo apt update

# MATEのインストール
yes | sudo apt install ubuntu-desktop
yes | sudo apt install mate-*
yes | sudo apt install ubuntu-mate-*
echo mate-session > ~/.xsession

# リモートデスクトップのインストール
yes | sudo apt install xrdp
sudo update-rc.d -f xrdp defaults
sudo service xrdp restart
sudo systemctl enable xrdp

# ポートの有効化
sudo ufw allow from any to any port 3389 proto tcp
yes | sudo ufw enable
