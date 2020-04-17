#!/bin/bash
cd ~

# ngrokのインストール
sudo apt -y install unzip zip
curl -O https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
sudo cp ngrok /usr/bin/
rm -f ngrok-stable-linux-amd64.zip
#ngrok version

sudo ufw allow 80/tcp
sudo ufw allow 81/tcp
sudo ufw allow 82/tcp
sudo ufw allow 83/tcp
sudo ufw allow 84/tcp
sudo ufw -y enable
# 開かれているポートを確認する
#sudo ufw status
