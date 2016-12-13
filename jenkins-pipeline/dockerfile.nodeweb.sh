Dockerfile
total 13788
-rw-r--r-- 1 root root      580 Dec 10 13:35 Dockerfile
-rw-r--r-- 1 root root    24838 Dec  5 03:54 favicon.ico
drwxrwxr-x 6  500  500     4096 Oct 19 17:52 node
-rw-r--r-- 1 root root      117 Dec  8 23:02 node.sh
-rw-r--r-- 1 root root 13939290 Oct 19 17:52 node-v6.9.1-linux-x64.tar.gz
drwxr-xr-x 3 root root     4096 Dec  9 10:27 node-web
-rw-r--r-- 1 root root      931 Dec 10 15:36 node-web.yaml
-rw-r--r-- 1 root root   118953 Dec  8 21:27 node-web.zip
-rw-r--r-- 1 root root       43 Dec  8 23:03 npmrc
root@192:~/node# cat Dockerfile
FROM ubuntu:latest

ADD node      /usr/local/node
ADD node-web  /opt/node-web
ADD node.sh   /etc/profile.d/node.sh
ADD npmrc     ~/.npmrc

ENV NODE_HOME /usr/local/node
ENV NODE_PATH ${NODE_HOME}/lib/node_modules
ENV PATH      ${PATH}:${NODE_HOME}/bin


RUN npm install -g babel-cli
RUN npm install -g express
RUN npm install -g mocha
RUN npm install -g mocha-cli
RUN npm install -g should
RUN npm install -g webpack

WORKDIR /opt/node-web/jw-web
RUN npm i
RUN npm run dll
RUN npm run pro
ADD favicon.ico   /opt/node-web/jw-web/build/media/favicon.ico

CMD ["npm","run","server"]
root@192:~/node# cat node.sh
export NODE_HOME=/usr/local/node
export NODE_PATH=${NODE_HOME}/lib/node_modules
export PATH=${PATH}:${NODE_HOME}/bin
root@192:~/node#
