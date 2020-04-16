#!/bin/bash
cd ~

# 日本語化
sudo apt -y install language-pack-ja-base language-pack-ja ibus-mozc
sudo localectl set-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
source /etc/default/locale