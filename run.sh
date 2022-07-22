#!/bin/bash
ps=$(docker ps -a | grep test |sed 's/.*test.*/test/')
if [ $ps=='test' ]
	then docker rm -vf test
	fi
docker run -it -p 80:80 -p 4242:4242 -v $PWD"/nginx.conf":/etc/nginx/nginx.conf \
	-v $PWD"/index.html":/usr/share/nginx/html/index.html \
	-v $PWD"/torrc":/etc/tor/torrc \
	-v $PWD"/sshd_config":/etc/ssh/sshd_config \
	--name test debian
