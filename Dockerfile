#FROM node
#
## Create app directory
#RUN mkdir -p /home/Service
#WORKDIR /home/Service
#
## Bundle app source
#COPY . /home/Service
#RUN npm install
#
#EXPOSE 3000
#CMD [ "npm", "start" ]

# 基于Ubuntu
FROM ubuntu
# 安装node v6.10.3
RUN sudo apt-get update && sudo apt-get install -y wget
# 使用淘宝镜像安装Node.js v6.10.3
RUN wget https://npm.taobao.org/mirrors/node/v6.10.3/node-v6.10.3-linux-x64.tar.gz && \
    tar -C /usr/local --strip-components 1 -xzf node-v6.10.3-linux-x64.tar.gz && \
    rm node-v6.10.3-linux-x64.tar.gz

# 使用淘宝的npm镜像
RUN npm install --production -d --registry=https://registry.npm.taobao.org && npm install pm2 -g
EXPOSE 3000