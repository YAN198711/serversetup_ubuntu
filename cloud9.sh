#!/bin/bash
cd ~
sudo apt update

# pyenvのインストール(2.7)
yes | sudo apt install python2.7

# Node.jsのインストール
yes | sudo apt install nodejs npm
sudo npm install n -g
# sudo n stable
sudo n 12.20.2
yes | sudo apt purge nodejs npm
exec $SHELL -l
# node -v

# Cloud9のインストール
git clone https://github.com/YAN198711/core.git c9sdk
cd c9sdk
scripts/install-sdk.sh
cd ~

# 接続ポートを開く(8080)
sudo ufw allow 8080/tcp
yes | sudo ufw enable
exec $SHELL -l
# sudo ufw status # 開かれているポートを確認する

# foreverをインストール
sudo npm install forever -g
