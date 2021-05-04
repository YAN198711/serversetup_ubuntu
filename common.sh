#!/bin/bash
cd ~
sudo apt update

# ツールのインストール
yes | sudo apt install build-essential
yes | sudo apt install zip unzip

# タイムゾーンの変更(Asia/Tolyo)
sudo timedatectl set-timezone Asia/Tokyo
