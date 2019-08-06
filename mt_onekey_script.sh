#!/bin/bash
wget https://npm.taobao.org/mirrors/node/v10.16.0/node-v10.16.0-linux-x64.tar.xz;tar -Jxf node-v10.16.0-linux-x64.tar.xz;
tar -Jxf node-v10.16.0-linux-x64.tar.xz;
ln -s /root/node-v10.16.0-linux-x64/bin/node /usr/local/bin/node;
ln -s /root/node-v10.16.0-linux-x64/bin/npm /usr/local/bin/npm;
npm i pm2 -g;
ln -s /root/node-v10.16.0-linux-x64/bin/pm2 /usr/local/bin/pm2;
sudo apt-get update;
sudo apt-get install expect -y;
apt install git;
git clone https://gitee.com/Eric_HSBC/mt_update_bynodejs.git;
cp /root/mt_update_bynodejs/expect.sh  /root/expect.sh && chmod +x expect.sh
cd mt_update_bynodejs && npm i;
pm2 start bin/www -- name mt;
wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubiBackup/doubi/master/mtproxy_go.sh && chmod +x mtproxy_go.sh && bash mtproxy_go.sh
