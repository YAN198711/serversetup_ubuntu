#!/bin/bash
cd ~

# MATEのインストール
sudo apt install ubuntu-desktop
sudo apt install mate-* -y
sudo apt install ubuntu-mate-* -y
echo mate-session > ~/.xsession

# リモートデスクトップのインストール
sudo apt install xrdp -y
sudo update-rc.d -f xrdp defaults
sudo service xrdp restart
sudo systemctl enable xrdp

# ポートの有効化
sudo ufw allow from any to any port 3389 proto tcp
