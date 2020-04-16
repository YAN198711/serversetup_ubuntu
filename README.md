# 使い方
Tera Termを起動、下記をコピー&ペースト

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
sudo rm /var/lib/apt/lists/lock

> [sudo] password for **【newuser】**:**パスワードを入力 +エンターキー**

sudo rm /var/lib/dpkg/lock \
sudo apt -y update \
sudo apt -y dist-upgrade

## ③タイムゾーンを変更する
timedatectl set-timezone Asia/Tokyo

> ==== AUTHENTICATING FOR org.freedesktop.timedate1.set-timezone === \
> システムのタイムゾーンを設定するには認証が必要です。 \
> Authenticating as: ,,, (**【newuser】**) \
> Password:**パスワードを入力 +エンターキー** \
> ==== AUTHENTICATION COMPLETE ===

## ③Gitをインストール
sudo apt -y install git

## ④Gitからファイルをダウンロード
git clone https://github.com/YAN198711/serversetup_ubuntu.git \
chmod -R 755 serversetup_ubuntu

## ⑤ファイルの実行
### (1)日本語化(約5分)
./serversetup_ubuntu/japanese.sh
### (2)google-chromeのインストール(約5分)
./serversetup_ubuntu/google.sh
### (3)pythonのインストール(約5分)
./serversetup_ubuntu/python.sh
### (4)cloud9のインストール(約5分)
./serversetup_ubuntu/cloud9.sh

aaa