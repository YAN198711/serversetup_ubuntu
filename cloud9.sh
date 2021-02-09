#!/bin/bash
cd ~

# pyenvのインストール(2.7.18)
sudo apt -y install build-essential libffi-dev libssl-dev zlib1g-dev liblzma-dev libbz2-dev libreadline-dev libsqlite3-dev # bz2, readline, sqlite3
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc
#pyenv -v
pyenv install 2.7.18
pyenv global 2.7.18
pyenv rehash

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
sudo ufw enable -y
# 開かれているポートを確認する
#sudo ufw status

# foreverをインストール
sudo npm install forever -g
