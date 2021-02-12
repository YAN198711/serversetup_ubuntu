#!/bin/bash
cd ~
sudo apt update

# ツールのインストール
yes | sudo apt install build-essential

# タイムゾーンの変更(Asia/Tolyo)
sudo timedatectl set-timezone Asia/Tokyo
