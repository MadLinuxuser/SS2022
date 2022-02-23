#!/bin/bash

apt update && apt upgrade -y
apt install bind9 monit -y
/etc/init.d/monit stop
/etc/init.d/safesquid stop
tar -xvzf safesquid-2022.0127.1733.3-swg-concept.tar.gz
/usr/local/src/_mkappliance/installation/setup.sh
ldd /opt/safesquid/bin/safesquid
/etc/init.d/safesquid start
netstat -tulnp | grep "safesquid"
echo
echo 
echo " safe squid has installed!! "