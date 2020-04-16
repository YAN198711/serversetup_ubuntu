# 使い方
Tera Termを起動、下記をコピー&ペースト

# はじめに
## ①ユーザー追加
sudo adduser **【newuser】**

> Enter new UNIX password:**パスワードを入力** \
> Retype new UNIX password:**同じパスワードを入力** \
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
sudo rm /var/lib/apt/lists/lock \
> [sudo] password for **【newuser】**:**パスワードを入力** \
(ユーザーを変更の初回のみパスワードを聞いてくる) \
sudo rm /var/lib/dpkg/lock \
sudo apt -y update \
sudo apt -y dist-upgrade \

## ③Gitをインストール
sudo apt install git

## ④Gitからファイルをダウンロード
git clone https://github.com/YAN198711/serversetup_ubntu.git
chmod -R 755 serversetup_ubntu