# 使い方
1)Tera Termを起動します。

> IP : **ConoHa作成後に表示される** \
> ID : **root** \
> pass : **作成時のパスワード +エンターキー**(表示されない)

※IPを入れても接続ができない場合、ConoHaから対象VPSのコンソールへ接続し、
> ID : **root** \
> pass : **作成時のパスワード +エンターキー**(表示されない) \

sudo ufw allow 22/tcp \
sudo ufw enable -y \
sudo reboot \
し、再度Tera Termを接続します。

2)下記をコピー&ペースト

# はじめに 
## ①ユーザー追加
sudo adduser **【newuser】**

> Enter new UNIX password:**パスワードを入力 +エンターキー** \
> Retype new UNIX password:**同じパスワードを入力 +エンターキー** \
>　-中略- \
>    Full Name[]: **そのままエンターキー** \
>    Room Number[]: **そのままエンターキー** \
>    Work Phone[]: **そのままエンターキー** \
>    Home Phone[]: **そのままエンターキー** \
>    Other[]: **そのままエンターキー** \
> Is the information correct? [Y/n] **Y +エンターキー**

### 新ユーザーに管理者権限(sudo)を与える
sudo usermod -aG sudo **【newuser】**
### 新ユーザーに切り替える
su - **【newuser】**

## ②初回更新
sudo apt update

> [sudo] password for **【newuser】**:**パスワードを入力 +エンターキー**

yes | sudo apt dist-upgrade


## ③Tera Term用のポートを開放する
sudo ufw allow 22/tcp \
yes | sudo ufw enable

> Command may disrupt existing ssh connections. Proceed with operation (y|n)?**y +エンターキー**

## ④タイムゾーンを変更する
timedatectl set-timezone Asia/Tokyo

> ==== AUTHENTICATING FOR org.freedesktop.timedate1.set-timezone === \
> システムのタイムゾーンを設定するには認証が必要です。 \
> Authenticating as: ,,, (**【newuser】**) \
> Password:**パスワードを入力 +エンターキー** \
> ==== AUTHENTICATION COMPLETE ===

## ⑤Gitをインストール
yes | sudo apt install git

## ⑥Gitからファイルをダウンロード
git clone https://github.com/YAN198711/serversetup_ubuntu.git \
chmod -R 755 serversetup_ubuntu

## ⑦ファイルの実行
### (0)共通作業(約1分)
./serversetup_ubuntu/common.sh
### (1)日本語化(約5分)
./serversetup_ubuntu/japanese.sh
### (2)google-chromeのインストール(約5分)
./serversetup_ubuntu/google.sh
### (3)pythonのインストール(約5分)
./serversetup_ubuntu/python.sh
### (4)cloud9のインストール(約5分)
./serversetup_ubuntu/cloud9.sh
### (5)ngrokのインストール(約5分)
./serversetup_ubuntu/ngrok.sh


### (6)システムの再起動
./serversetup_ubuntu/restart.sh

## ⑧Cloud9起動方法
1)再起動が完了後、再度Tera Termで接続。

> IP : **ConoHa作成後に表示される** \
> ID : **【newuser】** \
> pass : **パスワードを入力 +エンターキー**

forever start ~/c9sdk/server.js -l **【IP(xxx.xx.xx.xx)】** -p 8080 -w ~/workspace/ -a **名前**:**パスワード**

※名前およびパスワードは管理しやすいものに変更 \
例) \
IP：118.00.00.xx \
名前：user \
パス:abcd1234 \
forever start ~/c9sdk/server.js -l 118.00.00.xx -p 8080 -w ~/workspace/ -a user:abcd1234

## cloud9の初回設定
Python support \
Python Version　⇒　Python 3 \
PYTHON PATH　⇒　:/root/.pyenv/shims/python3 　を右端に追加 \
デフォルトのままなら以下の通りとなる \
/usr/local/lib/python2.7/dist-packages:/usr/local/lib/python3.4/dist-packages:/usr/local/lib/python3.5/dist-packages:/root/.pyenv/shims/python3


## ⑨ngrokの稼働方法
1)ngrok公式サイトにアクセスし、(https://dashboard.ngrok.com/get-started)

> ③ Connect your account \
> の認証Tokenを予め取得しておく。

2)再起動が完了後、再度Tera Termで接続。 \

> IP : **ConoHa作成後に表示される** \
> ID : **【newuser】** \
> pass : **パスワードを入力 +エンターキー**

./ngrok authtoken **ngrok認証Token** \
例)./ngrok authtoken xaUxxxxxx2Rxxxm3xxxxxxxHxkxxxxxxojhFxxxxVExVNxxxx \
./serversetup_ubuntu/setup_ngrok.sh

3)ターミナルもしくは、Cloud9起動後、下記コマンドを入力で port:80,81,82,83,84 が開通します。\
ngrok start --all \
※このターミナルを閉じるとngrokの通信が切れ、Freeメンバーの場合はアドレスが変化します。

