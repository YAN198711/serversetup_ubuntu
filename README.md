# 使い方
Tera Termを起動、下記をコピー&ペースト

# はじめに
## ①ユーザー追加
sudo adduser *newuser*

> Enter new UNIX password:*パスワードを入力*
> Retype new UNIX password:*同じパスワードを入力*
>　~中略~
>       Full Name[]: *そのままエンターキー*
>       Room Number[]: *そのままエンターキー*
>       Work Phone[]: *そのままエンターキー*
>       Home Phone[]: *そのままエンターキー*
>       Other[]: *そのままエンターキー*
> Is the information correct? [Y/n] *Y +エンターキー*

sudo gpasswd -a *newuser* sudo