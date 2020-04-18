#!/bin/bash
cd ~

# 1行目末に改行を入れる
sed -i -e '$s/$/\n/' /home/user/.ngrok2/ngrok.yml
# 2行目に改行を入れる
sed -i -e '$s/$/\n/' /home/user/.ngrok2/ngrok.yml
# 3行目に'tunnels:'を入れる
sed -i -e '3a\tunnels:' /home/user/.ngrok2/ngrok.yml

# 4行目に'devapp:'を入れる
sed -i -e '4a\  tv1:' /home/user/.ngrok2/ngrok.yml
# 5行目に'addr: 80'を入れる
sed -i -e '5a\    addr: 80' /home/user/.ngrok2/ngrok.yml
# 6行目に'proto: http'を入れる
sed -i -e '6a\    proto: http' /home/user/.ngrok2/ngrok.yml

# 7行目に'devapp:'を入れる
sed -i -e '7a\  tv2:' /home/user/.ngrok2/ngrok.yml
# 8行目に'addr: 81'を入れる
sed -i -e '8a\    addr: 81' /home/user/.ngrok2/ngrok.yml
# 9行目に'proto: http'を入れる
sed -i -e '9a\    proto: http' /home/user/.ngrok2/ngrok.yml

# 10行目に'devapp:'を入れる
sed -i -e '10a\  tv3:' /home/user/.ngrok2/ngrok.yml
# 11行目に'addr: 82'を入れる
sed -i -e '11a\    addr: 82' /home/user/.ngrok2/ngrok.yml
# 12行目に'proto: http'を入れる
sed -i -e '12a\    proto: http' /home/user/.ngrok2/ngrok.yml

# 13行目に'devapp:'を入れる
sed -i -e '10a\  tv4:' /home/user/.ngrok2/ngrok.yml
# 14行目に'addr: 83'を入れる
sed -i -e '11a\    addr: 83' /home/user/.ngrok2/ngrok.yml
# 15行目に'proto: http'を入れる
sed -i -e '12a\    proto: http' /home/user/.ngrok2/ngrok.yml