2  apt-get install ntpdate
  3  apt-get install telnet
  4  apt-get install lrzsz
  5  apt-get -y install lrzsz curl wget dstat vim
  6  apt-get -y install lrzsz curl wget dstat vim tree
  7  apt-get update
  8  apt-get -y install ntpdate
  9  crontab -e
 10  crontab -l
 11  /usr/sbin/ntpdate  cn.pool.ntp.org
 12  date
 13  cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
 14  /usr/sbin/ntpdate  cn.pool.ntp.org
 15  hostname
 16  ip add
 17  echo 192.168.15.114 > /etc/hostname
 18  hostname 192.168.15.114
 19  exit
 20  cp /etc/apt/{sources.list,sources.list.bak}
 21  vim /etc/apt/sources.list
 22  apt-get clean
 23  apt-get update
 24  apt-get -y install lrzsz curl wget dstat vim tree
 25  apt-get -y install lrzsz curl wget dstat vim tree git
 26  uname -r
 27  apt-get -y install apt-transport-https ca-certificates
 28  apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
 29  echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
 30  apt-get update
 31  apt-cache policy docker-engine
 32  apt-get -y install linux-image-extra-$(uname -r) linux-image-extra-virtual
 33  apt-cache madison docker-engine
 34  apt-get -y install linux-image-extra-$(uname -r) linux-image-extra-virtual
 35  apt-get -y install docker-engine
 36  ifconfig
 37  apt-get -y upgrade docker-engine
 38  exit
 39  /opt/bin/etcd --data-dir '/opt/data/etcd' --listen-peer-urls 'http://0.0.0.0:2380,http://0.0.0.0:7001' --listen-client-urls 'http://0.0.0.0:2379,http://0.0.0.0:4001' --initial-advertise-peer-urls 'http://0.0.0.0:2380,http://0.0.0.0:7001' --initial-cluster 'default=http://0.0.0.0:2380,default=http://0.0.0.0:7001' --advertise-client-urls 'http://0.0.0.0:2379,http://0.0.0.0:4001' &
 40  ps -ef|grep etcd
 41  ip add
 42  /opt/bin/etcdctl set /coreos.com/network/config '{"Network":"172.16.0.0/16"}'
 43  ifconfig
 44  /opt/bin/flanneld --etcd-endpoints="http://127.0.0.1:4001" -iface=ens160 &
 45  cat /run/flannel/subnet.env
 46  source /run/flannel/subnet.env
 47  ifconfig docker0 ${FLANNEL_SUBNET}
 48  /usr/bin/dockerd --bip=${FLANNEL_SUBNET} --mtu=${FLANNEL_MTU} &
 49  docker ps
 50  exit
 51  /opt/bin/kube-apiserver --address=0.0.0.0 --port=8080 --etcd_servers=http://127.0.0.1:4001 --portal_net=172.16.1.0/24 --allow_privileged=false --kubelet_port=10250 --v=0  &
 52  /opt/bin/kube-controller-manager --address=0.0.0.0 --master=127.0.0.1:8080  --v=0 &
 53  /opt/bin/kube-scheduler --address=0.0.0.0 --master=127.0.0.1:8080 --v=0 &
 54  ps -ef|grep kube
 55  history
 56  ip add
 57  /opt/bin/kubectl get nodese
 58  /opt/bin/kubectl get nodes
 59  /opt/bin/kubectl get config view
 60  /opt/bin/kubectl get nodes
 61  history
 62  ifconfig
 63  /usr/bin/dockerd --bip=${FLANNEL_SUBNET} --mtu=${FLANNEL_MTU} &
 64  source /run/flannel/subnet.env
 65  /opt/bin/etcd --data-dir '/opt/data/etcd' --listen-peer-urls 'http://0.0.0.0:2380,http://0.0.0.0:7001' --listen-client-urls 'http://0.0.0.0:2379,http://0.0.0.0:4001' --initial-advertise-peer-urls 'http://0.0.0.0:2380,http://0.0.0.0:7001' --initial-cluster 'default=http://0.0.0.0:2380,default=http://0.0.0.0:7001' --advertise-client-urls 'http://0.0.0.0:2379,http://0.0.0.0:4001' &
 66  history
 67  /opt/bin/etcdctl set /coreos.com/network/config '{"Network":"172.16.0.0/16"}'
 68  /opt/bin/flanneld --etcd-endpoints="http://127.0.0.1:4001" -iface=ens160 &
 69  cat /run/flannel/subnet.env
 70  source /run/flannel/subnet.env
 71  ifconfig docker0 ${FLANNEL_SUBNET}
 72  /usr/bin/dockerd --bip=${FLANNEL_SUBNET} --mtu=${FLANNEL_MTU} &
 73  rm -f /var/run/docker.pid
 74  /usr/bin/dockerd --bip=${FLANNEL_SUBNET} --mtu=${FLANNEL_MTU} &
 75  ps -ef|grep docker
 76  kill -9 1208
 77  ps -ef|grep docker
 78  kill -9 1058
 79  ps -ef|grep docker
 80  rm /var/run/docker.sock
 81  /usr/bin/dockerd --bip=${FLANNEL_SUBNET} --mtu=${FLANNEL_MTU} &
 82  docker ps
 83  history
 84  /opt/bin/kube-apiserver --address=0.0.0.0 --port=8080 --etcd_servers=http://127.0.0.1:4001 --portal_net=172.16.1.0/24 --allow_privileged=false --kubelet_port=10250 --v=0  &
 85  history
 86  /opt/bin/kube-controller-manager --address=0.0.0.0 --master=127.0.0.1:8080  --v=0 &
 87  history
 88  /opt/bin/kube-controller-manager --address=0.0.0.0 --master=127.0.0.1:8080  --v=0 &
 89  ps -ef|grep kube
 90  history
 91  /opt/bin/kube-scheduler --address=0.0.0.0 --master=127.0.0.1:8080 --v=0 &
 92  ps -ef|grep scheduler
 93  kill -9 1790
 94  ps -ef|grep scheduler
 95  /opt/bin/kube-scheduler --address=0.0.0.0 --master=127.0.0.1:8080 --v=0 &
 96  history
 97  netstat -lntp
 98  ps -ef|grep kube
 99  /opt/bin/kubectl get nodes
100  kubectl create -f https://rawgit.com/kubernetes/dashboard/master/src/deploy/kubernetes-dashboard.yaml
101  /opt/bin/kubectl create -f https://rawgit.com/kubernetes/dashboard/master/src/deploy/kubernetes-dashboard.yaml
102  /opt/bin/kubectl get pods
103  /opt/bin/kubectl get namespaces
104  /opt/bin/kubectl get pods --namespace=kube-system
105  /opt/bin/kubectl describe  pods kubernetes-dashboard-3095304083-d32lh --namespace=kube-system
106  /opt/bin/kubectl get pods --namespace=kube-system
107  /opt/bin/kubectl delete  pods kubernetes-dashboard-3095304083-d32lh --namespace=kube-system
108  /opt/bin/kubectl ge pods --namespace=kube-system
109  /opt/bin/kubectl get pods --namespace=kube-system
110  /opt/bin/kubectl get rc   --help
111  /opt/bin/kubectl get rc --namespace=kube-system
112  /opt/bin/kubectl get replicationcontroller --namespace=kube-system
113  /opt/bin/kubectl get rc --namespace=kube-system
114  /opt/bin/kubectl get -h
115  /opt/bin/kubectl get pods --namespace=kube-system
116  /opt/bin/kubectl get rc --namespace=kube-system
117  /opt/bin/kubectl get rc --namespace=default
118  /opt/bin/kubectl get rc
119  /opt/bin/kubectl get svc
120  /opt/bin/kubectl get --namespace=kube-system
121  /opt/bin/kubectl get svc --namespace=kube-system
122  /opt/bin/kubectl delete svc kubernetes-dashboard  --namespace=kube-system
123  /opt/bin/kubectl get svc --namespace=kube-system
124  /opt/bin/kubectl get pod --namespace=kube-system
125  /opt/bin/kubectl delete pod kubernetes-dashboard-3095304083-xg44y  --namespace=kube-system
126  /opt/bin/kubectl get pod --namespace=kube-system
127  clear
128  history
129  docker ps
130  docker pull ubuntu
131  docker images
132  docker pull node
133  docker pull ubuntu
134  /opt/bin/kubectl get pods
135  /opt/bin/kubectl get namespaces
136  /opt/bin/kubectl get pods --namespace=kube-system
137  /opt/bin/kubectl get rc --namespace=kube-system
138  /opt/bin/kubectl --help
139  /opt/bin/kubectl cluster-info
140  /opt/bin/kubectl get --help
141  kubectl get replicationcontroller
142  kubectl get replicationcontroller --namespace=kube-system
143  kubectl get rc --namespace=kube-system
144  kubectl get rc,services
145  /opt/bin/kubectl get rc,services
146  /opt/bin/kubectl get rc
147  /opt/bin/kubectl get rc --namespace=kube-system
148  /opt/bin/kubectl get pods --namespace=kube-system
149  /opt/bin/kubectl delete pods kubernetes-dashboard-3095304083-2w2r5  --namespace=kube-system
150  /opt/bin/kubectl get pods --namespace=kube-system
151  netstat -lntp
152  ps -ef
153  /opt/bin/kubectl get rc
154  /opt/bin/kubectl get rc --namespace=default
155  /opt/bin/kubectl get namespaces
156  /opt/bin/kubectl delete namespaces kube-system
157  /opt/bin/kubectl get namespaces
158  /opt/bin/kubectl get pods
159  /opt/bin/kubectl get pods --namespace=kube-system
160  /opt/bin/kubectl get pods
161  /opt/bin/kubectl get rc
162  /opt/bin/kubectl get namespace
163  docker images
164  docker run -it node:latest bash
165  docker pull node:6.9.1
166  docker images
167  docker images --help
168  docker images -a
169  ls
170  vim node.docker
171  mkdir node
172  mv node.docker node
173  cd node/
174  ls
175  mv node.docker Dockerfile
176  ls
177  rz
178  ls
179  apt-get install unzip
180  ls
181  du -sh *
182  rm j_cui_jw-web-243ff828321f0df0f27918a494eb173bf465a04f.tar.gz
183  ls
184  rz
185  ls
186  unzip node-web.zip
187  ls
188  ls node-web
189  cat node-web/pax_global_header
190  ls
191  vim Dockerfile
192  docker build -t node:6.9.1 .
193  ls
194  vim Dockerfile
195  docker images
196  docker pull registry:2.1.1
197  docker pull registry:2.2
198  ls
199  docker images
200  docker rmi 222b2facbd03
201  docker rmi  a4e55b65a162
202  docker images
203  docker -V
204  docker -v
205  cd
206  ls
207  docker images
208  ls
209  cd node/
210  ls
211  rz
212  ls
213  tar xzf node-v6.9.1-linux-x64.tar.gz
214  ls
215  ls node-v6.9.1-linux-x64
216  mv node-v6.9.1-linux-x64 node
217  ls
218  ls -l
219  docker images
220  pwd
221  ls
222  docker run -it -v /root/node:/mnt -bash
223  docker run -it -v /root/node:/mnt bash
224  docker run -it -v /root/node:/mnt ubuntu:latest bash
225  docker ps
226  docker ps -a
227  docker attach b92d179b26b0
228  docker start b92d179b26b0
229  docker ps
230  docker attach b92d179b26b0
231  ls
232  cd node-web/
233  ls
234  cd jw-web/
235  ls
236  vim startNodeServer.sh
237  cd
238  docker attach b92d179b26b0
239  docker ps
240  docker ps -a
241  docker start b92d179b26b0
242  docker attach b92d179b26b0
243  ls
244  docker ps
245  docker ps -a
246  docker start b92d179b26b0
247  docker images
248  docker ps -a
249  ls
250  cd node/
251  ls
252  cd ..
253  ls
254  cd node/
255  ls
256  vim Dockerfile
257  vim node.sh
258  docker ps
259  docker attach b92d179b26b0
260  ls
261  vim npmrc
262  ls
263  vim Dockerfile
264  ls -l
265  vim Dockerfile
266  ls /etc/profile.d/node.sh
267  vim Dockerfile
268  ls
269  cat node-web/jw-web/startNodeServer.sh
270  vim Dockerfile
271  ls
272  ls node-web/jw-web/
273  vim Dockerfile
274  cat Dockerfile
275  vim Dockerfile
276  ls
277  vim Dockerfile
278  docker images
279  docker build -t node-web:v1 .
280  ls
281  ls node-web
282  vim Dockerfile
283  docker build -t node-web:v1 .
284  vim Dockerfile
285  docker build -t node-web:v1 .
286  vim Dockerfile
287  docker build -t node-web:v1 .
288  vim Dockerfile
289  docker ps
290  docker ps -a
291  docker start b92d179b26b0
292  docker attach b92d179b26b0
293  vim Dockerfile
294  docker build -t node-web:v1 .
295  vim Dockerfile
296  docker build -t node-web:v1 .
297  vim Dockerfile
298  docker build -t node-web:v1 .
299  vim Dockerfile
300  ls
301  cat node.sh
302  vim Dockerfile
303  docker build -t node-web:v1 .
304  vim Dockerfile
305  docker build -t node-web:v1 .
306  ping www.baidu.com
307  docker build -t node-web:v1 .
308  ls
309  vim Dockerfile
310  docker build -t node-web:v1 .
311  vim Dockerfile
312  docker build -t node-web:v1 .
313  vim Dockerfile
314  docker build -t node-web:v1 .
315  wget https://rawgit.com/kubernetes/dashboard/master/src/deploy/kubernetes-dashboard.yaml
316  ls
317  vim kubernetes-dashboard.yaml
318  ping www.baidu.com
319  docker images
320  docker ps
321  docker attach b92d179b26b0
322  ls
323  cd node/
324  ls
325  rz
326  ls
327  docker attach b92d179b26b0
328  docker ps
329  docker ps -a
330  docker start b92d179b26b0
331  docker attach b92d179b26b0
332  history
333  ls
334  cd node/
335  ls
336  docker --help
337  docker search search registry
338  docker search registry
339  docker pull registry
340  docker search registry --automated=false
341  docker search registry --filter=automated=true
342  docker search registry --filter=automated=false
343  docker search --filter=automated=false  registry
344  docker search registry
345  docker pull registry
346  docker images
347  docker rmi  8c026bda7efb ff8ff7590163
348  docker rmi -f  8c026bda7efb ff8ff7590163
349  docker ps
350  docker ps -a
351  docker ps -a|awk '{print $1}'
352  docker ps -a|awk '{print $1}'|grep -v CON
353  docker ps -a|awk '{print $1}'|grep -v CON|tr '\n' ' '
354  docker rm c0836c54e47d 33a6533844fd 17cee3add5b8 658d4128a69a 8f32d8138559 46de263b8d65 b92d179b26b0 8f62b5ee0983
355  docker ps
356  docker ps -a
357  ls
358  rm kubernetes-dashboard.yaml
359  ls
360  /opt/bin/kubectl get nodes
361  hostname
362  cat /etc/hostname
363  /opt/bin/kubectl get nodes
364  /opt/bin/kubectl delete node 192.168.15.116 ubuntu
365  /opt/bin/kubectl get nodes
366  docker images
367  docker rmi  246027e8f3f3
368  ls
369  docker images
370  docker rmi 36dc1bb7a52b
371  docker images
372  docker run -it registry:latest bash
373  whereis docker
374  /usr/bin/docker run -it registry:latest bash
375  iptables -nvL
376  ls
377  pwd
378  df -h
379  ls /mnt/
380  mkdir /mnt/data/registry
381  mkdir -p /mnt/data/registry
382  docker images
383  docker run -it ubuntu:latest bash
384  docker run -d -p 5000:5000 --restart=always -v /mnt/data/registry/:/var/lib/registry/ registry:latest
385  docker images
386  docker ps
387  ip add
388  curl http://192.168.15.114:5000/v2/_catalog
389  whereis dockerd
390  /usr/bin/dockerd  --help
391  docker ps
392  history |grep docker
393  history |grep dockerd
394  ps -ef|grep docker
395  docker ps
396  docker stop 4c0e17c988bc
397  ps -ef|grep docker
398  kill -9  1668
399  ps -ef|grep docker
400  /usr/bin/dockerd --bip=${FLANNEL_SUBNET} --mtu=${FLANNEL_MTU} --insecure-registry=192.168.15.114:5000 &
401  echo ${FLANNEL_MTU}
402  source /var/run/flannel/subnet.env
403  echo ${FLANNEL_MTU}
404  /usr/bin/dockerd --bip=${FLANNEL_SUBNET} --mtu=${FLANNEL_MTU} --insecure-registry=192.168.15.114:5000 &
405  ps -ef|grep docker
406  docker images
407  docker tag ubuntu:latest 192.168.15.114:5000/ubuntu:latest
408  docker tag
409  docker images
410  docker push 192.168.15.114:5000/ubuntu:latest
411  curl  https://192.168.15.114:5000/v2/
412  curl  http://192.168.15.114:5000/v2/
413  ls /mnt/data/registry/docker/registry/v2/
414  ls /mnt/data/registry/docker/registry/v2/repositories/
415  ls /mnt/data/registry/docker/registry/v2/blobs/
416  ls
417  mkdir -p /mnt/data/registry-auth
418  docker run --entrypoint htpasswd registry:latest -Bbn zhonghui zhonghui123  >>  /mnt/data/registry-auth/htpasswd
419  cat /mnt/data/registry-auth/htpasswd
420  docker images
421  docker ps
422  docker stop 4c0e17c988bc
423  docker ps
424  docker rm 4c0e17c988bc
425  docker ps
426  docker ps -a
427  docker ps
428  docker run -d -p 5000:5000 --restart=always -v /mnt/data/registry-auth/:/auth/ -e "REGISTRY_AUTH=htpasswd" -e "REGISTRY_AUTH_HTPASSWD_REALM=Registry Realm" -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd -v /mnt/data/registry/:/var/lib/registry/ registry:latest
429  docker images
430  docker ps
431  docker ps -a
432  docker rm a46ab8836720  57f657204d09 2de53d7e1766 bc8844896c46
433  docker ps -a
434  docker ps
435  docker images
436  docker rmi 192.168.15.114:5000/ubuntu
437  docker images
438  docker pull 192.168.15.114:5000/ubuntu
439  docker login 192.168.15.114:5000/ubuntu
440  docker pull 192.168.15.114:5000/ubuntu
441  docker pull 192.168.15.114:5000/ubuntu:latest
442  docker images
443  docker rmi 192.168.15.114:5000/ubuntu:latest
444  docker pull 192.168.15.114:5000/ubuntu:latest
445  ls ~/.
446  ls -la ~/
447  cat ~/.docker/config.json
448  docker login 192.168.15.114:5000
449  cat ~/.docker/config.json
450  cat /etc/ssl/openssl.cnf
451  apt-get install openssl openssl-devel
452  apt-cache search openssl
453  apt-get install openssl libssl-dev
454  vim  /etc/ssl/openssl.cnf
455  ls
456  mkdir /mnt/app
457  mkdir -p  /mnt/app/nginx_auth
458  cd /mnt/app/nginx_auth/
459  ip add
460  cd
461  ls /etc/ssl/
462  vim /etc/ssl/openssl.cnf
463  cd /etc/ssl/
464  mkdir -p demoCA/{certs,crl,newcerts,private}
465  touch /etc/ssl/demoCA/index.txt
466  echo 01 > /etc/ssl/demoCA/serial
467  cd /etc/ssl/demoCA
468  openssl req -newkey rsa:4096 -nodes -sha256 -keyout cakey.pem -x509 -days 365 -out cacert.pem
469  ls
470  mv cacert.pem certs/
471  mv cakey.pem private/
472  cd
473  ls
474  wget http://nginx.org/download/nginx-1.10.2.tar.gz
475  tar xzf nginx-1.10.2.tar.gz
476  cd nginx-1.10.2/
477  cd
478  useradd --help
479  ls /
480  tail /etc/passwd
481  useradd -s /usr/sbin/nologin nginx
482  tail /etc/passwd
483  ls /home/
484  apt-cache search pcre
485  perl -V
486  perl -v
487  apt-cache search pcre
488  apt-get install libpcre3 libpcre3-dev
489  ls
490  cd nginx-1.10.2/
491  ls
492  ./configure --help
493  ./configure --prefix=/opt/nginx --user=nginx --group=nginx --with-pcre --with-http_stub_status_module --with-http_ssl_module --with-http_addition_module --with-http_realip_module --with-http_flv_module
494  apt-get install gcc
495  ./configure --prefix=/opt/nginx --user=nginx --group=nginx --with-pcre --with-http_stub_status_module --with-http_ssl_module --with-http_addition_module --with-http_realip_module --with-http_flv_module
496  ls /usr/local/
497  ls /usr/local/go/
498  ls /opt/
499  make
500  apt-get install make
501  make
502  make install
503  ls /opt/nginx/
504  cd
505  mkdir /opt/nginx/ssl
506  cd /opt/nginx/ssl/
507  openssl genrsa -out nginx.key 4096
508  openssl req -new -key nginx.key -out nginx.csr
509  openssl ca -in nginx.csr -out nginx.crt
510  ls -l /etc/ssl/demoCA/cacert.pem
511  ls /etc/ss
512  ls /etc/ssl/demoCA/caec
513  ls /etc/ssl/demoCA/
514  cd /etc/ssl/demoCA/
515  cp certs/cacert.pem .
516  cp private/cakey.pem .
517  cd -
518  ls
519  openssl ca -in nginx.csr -out nginx.crt
520  cd
521  whereis htpasswd
522  find / -name htpasswd
523  find /opt/ -name htpasswd
524  docker images
525  ls
526  mv nginx-1.10.2.tar.gz /srv/
527  rm -rf /opt/nginx/
528  rm nginx-1.10.2/ -r
529  ls
530  cd node/
531  ls
532  ls -l
533  vim Dockerfile
534  ls node-web/jw-web/
535  ls node-web/jw-web/build/
536  ls node-web/jw-web/build/media/
537  ls
538  ls -l
539  cat Dockerfile
540  docker build -t nodeweb:v1 .
541  ls
542  vim Dockerfile
543  docker build -t nodeweb:v1 .
544  ls
545  ls node-web
546  ls node-web/jw-web/
547  vim Dockerfile
548  docker build -t nodeweb:v1 .
549  ls
550  docker images
551  docker rmi 01791ce8e3bd 094b222ff4fb  4ca3a192ff2a
552  docker rmi -f 01791ce8e3bd 094b222ff4fb  4ca3a192ff2a
553  docker images
554  docker rmi ubuntu:latest
555  docker tag registry:latest 192.168.15.114:5000/registry:latest
556  docker images
557  docker push 192.168.15.114:5000/registry:latest
558  docker rmi registry:latest
559  docker images
560  docker run -it nodeweb:v1 bash
561  ls
562  vim Dockerfile
563  ls -l
564  mv node-v6.9.1-linux-x64.tar.gz ../
565  mv ../node-v6.9.1-linux-x64.tar.gz .
566  ls -l
567  history |grep build
568  docker build -t nodeweb:v1 .
569  docker run -it nodeweb:v1 bash
570  ls
571  ps -ef|grep docker
572  docker iamges
573  docker images
574  docker rmi  23c5d9907f2c
575  docker images
576  docker rmi  23c5d9907f2c  -f
577  docker images
578  cat Dockerfile
579  ls
580  docker images
581  docker tag nodeweb:v1 192.168.15.114:5000/node-web:latest
582  docker push 192.168.15.114:5000/node-web:latest
583  ls
584  /opt/bin/kubectl get namespace
585  /opt/bin/kubectl get pod --namespace=kube-system
586  /opt/bin/kubectl delete namespace kube-system
587  /opt/bin/kubectl get namespace
588  /opt/bin/kubectl create namespace online
589  /opt/bin/kubectl get namespace
590  ls
591  vim node-web.yaml
592  vim node-web.yaml
593  docker images
594  vim node-web.yaml
595  ls
596  cat Dockerfile
597  vim node-web.yaml
598  /opt/bin/kubectl get nodes
599  /opt/bin/kubectl label node 192.168.15.115 online=true
600  /opt/bin/kubectl label node 192.168.15.116 online=true
601  /opt/bin/kubectl get nodes
602  ls
603  mv node-web.yaml
604  vim node-web.yaml
605  ip add
606  vim node-web.yaml
607  vim a.yaml
608  /opt/bin/kubectl create -f a.yaml
609  /opt/bin/kubectl get service --namespace=online
610  /opt/bin/kubectl delete -f a.yaml
611  /opt/bin/kubectl get service --namespace=online
612  /opt/bin/kubectl delete -f a.yaml
613  /opt/bin/kubectl create -f a.yaml
614  /opt/bin/kubectl delete -f a.yaml
615  vim a.yaml
616  cat node-web.yaml
617  vim a.yaml
618  /opt/bin/kubectl delete -f a.yaml
619  vim a.yaml
620  /opt/bin/kubectl delete -f a.yaml
621  vim a.yaml
622  /opt/bin/kubectl delete -f a.yaml
623  ls
624  vim a.yaml
625  /opt/bin/kubectl create  -f a.yaml
626  vim a.yaml
627  /opt/bin/kubectl create  -f a.yaml
628  vim a.yaml
629  /opt/bin/kubectl create  -f a.yaml
630  /opt/bin/kubectl delete   -f a.yaml
631  rm a.yaml
632  ls
633  vim node-web.yaml
634  /opt/bin/kubectl create -f node-web.yaml
635  /opt/bin/kubectl get pod --namespace=online
636  /opt/bin/kubectl get pod --namespace=online -o wide
637  /opt/bin/kubectl delete -f node-web.yaml
638  vim node-web.yaml
639  /opt/bin/kubectl create -f node-web.yaml
640  /opt/bin/kubectl get pod --namespace=online -o wide
641  /opt/bin/kubectl describe  pod node-web-jgzdk --namespace=online
642  docker images
643  /opt/bin/kubectl delete -f node-web.yaml
644  docker pull registry.cn-hangzhou.aliyuncs.com/archon/pause-amd64
645  docker pull registry.cn-hangzhou.aliyuncs.com/google-containers/pause-amd64
646  docker images
647  docker pull node
648  docker ps
649  ps -ef|grep docker
650  kill -9 11326
651  ps -ef|grep docker
652  history |grep dockerd
653  source /var/run/flannel/subnet.env
654  /usr/bin/dockerd --bip=${FLANNEL_SUBNET} --mtu=${FLANNEL_MTU} &
655  docker pull registry.cn-hangzhou.aliyuncs.com/archon/pause-amd64
656  ps -ef|grep docker
657  kill -9 27294
658  ps -ef|grep docker
659  kill -9  27288
660  ps -ef|grep docker
661  source /var/run/flannel/subnet.env
662  history |grep dockerd
663  docker pull registry.cn-hangzhou.aliyuncs.com/archon/pause-amd64
664  docker images
665  source /var/run/flannel/subnet.env
666  /usr/bin/dockerd --bip=${FLANNEL_SUBNET} --mtu=${FLANNEL_MTU} --insecure-registry=192.168.15.114:5000 &
667  docker ps
668  docker pull registry.cn-hangzhou.aliyuncs.com/archon/pause-amd64
669  docker pull registry.cn-hangzhou.aliyuncs.com/archon/pause-amd64:3.0
670  docker images
671  docker tag registry.cn-hangzhou.aliyuncs.com/archon/pause-amd64:3.0 192.168.15.114:5000/pause-amd64:3.0
672  docker push 192.168.15.114:5000/pause-amd64:3.0
673  ls
674  /opt/bin/kubectl create -f node-web.yaml
675  docker images
676  /opt/bin/kubectl delete -f node-web.yaml
677  ls
678  vim node-web.yaml
679  /opt/bin/kubectl create -f node-web.yaml
680  /opt/bin/kubectl get pod --namespace=online
681  /opt/bin/kubectl describe node-web-wc8nv  --namespace=online
682  /opt/bin/kubectl logs  node-web-wc8nv  --namespace=online
683  /opt/bin/kubectl get pod --namespace=online
684  /opt/bin/kubectl describe  pod node-web-wc8nv  --namespace=online
685  docker ps
686  docker images
687  docker push 192.168.15.114:5000/node-web:latest
688  /opt/bin/kubectl describe  pod node-web-wc8nv  --namespace=online
689  /opt/bin/kubectl delete -f node-web.yaml
690  /opt/bin/kubectl create -f node-web.yaml
691  /opt/bin/kubectl get pod --namespace=online
692  /opt/bin/kubectl delete -f node-web.yaml
693  ls /etc/ssl/
694  ls /etc/ssl/demoCA/
695  wget http://nginx.org/download/nginx-1.9.4.tar.gz
696  ls
697  rm nginx-1.9.4.tar.gz
698  cp /srv/nginx-1.10.2.tar.gz .
699  ls
700  apt-cache search httpd-tools
701  apt-cache search htpasswd
702  apt-get install libauthen-htpasswd-perl libapache-htpasswd-perl
703  apt-cache search htpasswd
704  apt-get install libauthen-htpasswd-perl libapache-htpasswd-perl apache2-utils
705  ls
706  tar xzf nginx-1.10.2.tar.gz
707  cd nginx-1.10.2/
708  ls
709  ./configure --prefix=/opt/nginx --user=nginx --group=nginx --with-pcre --with-http_stub_status_module --with-http_ssl_module --with-http_addition_module --with-http_realip_module --with-http_flv_module
710  make
711  make install
712  cd
713  mkdir /opt/nginx/ssl
714  cd /opt/nginx/ssl/
715  ls
716  openssl genrsa -out nginx.key 4096
717  openssl req -new -key nginx.key -out nginx.csr
718  openssl ca -in nginx.csr -out nginx.crt
719  htpasswd -cb /opt/nginx/conf/.htpasswd admin admin
720  ls
721  cd l..
722  cd ..
723  ls
724  cd conf/
725  ls
726  vim nginx.conf
727  cd ..
728  cd ssl/
729  ls
730  rm *
731  ls
732  openssl req -newkey rsa:4096 -nodes -sha256 -keyout nginx.key -x509 -days 365 -out nginx.crt
733  rm ../conf/.htpasswd
734  htpasswd -cb /opt/nginx/conf/.htpasswd admin admin
735  cd
736  df -h
737  ls
738  cd /etc/ssl/demoCA/
739  ls
740  ls -l
741  rm *
742  ls
743  rm -rf *
744  ls
745  openssl genrsa -out private/cakey.pem 2048
746  cd ..
747  ls
748  vim /etc/ssl/openssl.cnf
749  cd
750  cd /etc/ssl/
751  mkdir demoCA demoCA/certs demoCA/crl demoCA/newcerts demoCA/private
752  ls
753  rm -rm demoCA/
754  rm -rf demoCA/
755  ls
756  mkdir demoCA demoCA/certs demoCA/crl demoCA/newcerts demoCA/private
757  cd demoCA/
758  openssl genrsa -out private/cakey.pem 2048
759  openssl req -new -x509 -key private/cakey.pem -out cacert.pem
760  ls
761  ls certs/
762  ls crl/
763  ls newcerts/
764  ls private/
765  cd
766  ls
767  cd nginx-1.10.2/
768  history |grep config
769  cd /opt/nginx/ssl/
770  ls
771  rm *
772  ls
773  openssl genrsa -out nginx.key 2048
774  openssl req -new -key nginx.key -out nginx.csr
775  ls
776  cd /etc/ssl/
777  ls
778  cd demoCA/
779  ls
780  cd ..
781  touch demoCA/index.txt
782  echo 01 > demoCA/serial
783  cd /etc/
784  ls
785  cd /opt/nginx/ssl/
786  ls
787  openssl ca -in nginx.csr -out nginx.crt
788  htpasswd -cb /opt/nginx/conf/.htpasswd admin admin
789  ls
790  cd ..
791  ls
792  cd /opt
793  ls
794  docker images
795  docker ps
796  netstat -ntlp
797  cd ~
798  pwd
799  ls
800  cd node
801  ls
802  ls -ll
803  cd node
804  ls
805  cd ..
806  ls
807  cd node-
808  cd node-web
809  ls
810  cd jw-web/
811  ls
812  ls -ll
813  cd ..
814  ls
815  cd ..
816  ls
817  ls -ll
818  cat node-web.yaml
819  clear
820  ls -ll
821  cat Dockerfile
822  cat node.sh
823  history
