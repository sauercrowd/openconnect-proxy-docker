#!/bin/bash

sed "s/port: .*$/port: $PROXY_PORT/" -i /etc/squid/squid.conf
cat /etc/squid/squid.conf

#restart squid
service squid restart

#start openconnect
echo "$OPENCONNECT_PASSWORD" | openconnect -u $OPENCONNECT_USER --passwd-on-stdin --no-cert-check $OPENCONNECT_URL
