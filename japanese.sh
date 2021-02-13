#!/bin/source
cd ~
sudo apt update

# 日本語化
yes | sudo apt install language-pack-ja-base language-pack-ja ibus-mozc
sudo localectl set-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
source /etc/default/locale
