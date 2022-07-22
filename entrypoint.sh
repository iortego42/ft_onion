#!/bin/bash

service tor start
service ssh start
echo "------------------------------------"
echo "TOR LINK"
echo "------------------------------------"
cat var/lib/tor/hidden_service/hostname
echo "------------------------------------"
nginx -g "daemon off;"
#/bin/bash
