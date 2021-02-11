#!/bin/bash
cd ~

# ツールのインストール
sudo apt install -y build-essential

# タイムゾーンの変更(Asia/Tolyo)
sudo timedatectl set-timezone Asia/Tokyo
