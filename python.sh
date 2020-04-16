#!/bin/bash
cd ~

# pyenvのインストール
sudo apt -y install build-essential libffi-dev libssl-dev zlib1g-dev liblzma-dev libbz2-dev libreadline-dev libsqlite3-dev # bz2, readline, sqlite3
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc
#pyenv -v
pyenv install 3.7.2
pyenv global 3.7.2
pyenv rehash

# pipインストール
pip install --upgrade pip
pip install -r ~/serversetup_ubntu/requirements.txt

# TA-Libインストール
cd ~
wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz
tar -zxvf ta-lib-0.4.0-src.tar.gz
cd ta-lib
./configure --prefix=/usr
make
sudo make install
sudo bash -c "echo "/usr/local/lib64" >> /etc/ld.so.conf"
sudo /sbin/ldconfig
cd ../
rm -rf ta-lib-0.4.0-src.tar.gz
pip install ta-lib
rm -rf ta-lib