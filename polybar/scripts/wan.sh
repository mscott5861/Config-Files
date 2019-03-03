#! /bin/bash

IP=$(curl -sS ifconfig.me/ip)

if pgrep -x openvpn > /dev/null; then
    echo "OPENVPN   >>   "$IP
else
    echo $IP
fi

