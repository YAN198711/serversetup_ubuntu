#!/bin/bash
cd ~

# Node.jsのインストール
sudo apt -y install nodejs npm
sudo npm install n -g
sudo n stable
sudo apt -y purge nodejs npm
exec $SHELL -l
#node -v

# Cloud9のインストール
git clone https://github.com/YAN198711/core.git c9sdk
cd c9sdk
scripts/install-sdk.sh
cd ~

sudo ufw allow 8080/tcp
sudo ufw -y enable
# 開かれているポートを確認する
#sudo ufw status

# foreverをインストール
sudo npm install forever -g