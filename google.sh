#!/bin/bash
cd ~
sudo apt update

# Chrome Driverのインストール
yes | sudo apt install unzip zip
curl -O https://chromedriver.storage.googleapis.com/89.0.4389.23/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/local/bin/
chmod 777 /usr/local/bin/chromedriver
rm -f chromedriver_linux64.zip
#chromedriver --version

# google-chromeのインストール
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
ls -l /etc/apt/sources.list.d
cat /etc/apt/sources.list.d/google.list
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt update
yes | sudo apt install google-chrome-stable
#google-chrome --version
