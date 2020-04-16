#!/bin/bash
cd ~

# Chrome Driverのインストール
sudo apt -y install unzip zip
curl -O https://chromedriver.storage.googleapis.com/81.0.4044.69/chromedriver_linux64.zip
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
sudo apt -y install google-chrome-stable
#google-chrome --version
#sudo apt -y install google-chrome-stable