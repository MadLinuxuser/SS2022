#!/bin/bash

apt update && apt upgrade -y
apt install bind9 monit -y
tar -xvzf safesquid-2022.0127.1733.3-swg-concept.tar.gz
_mkappliance/installation/setup.sh
ldd /opt/safesquid/bin/safesquid
/etc/init.d/safesquid start
netstat -tulnp | grep "safesquid"
echo
echo
echo " safe squid has installed!! "



