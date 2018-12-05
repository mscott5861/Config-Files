#! /bin/bash

IP=$(dig +short myip.opendns.com @resolver1.opendns.com)

if pgrep -x openvpn > /dev/null; then
    echo "OPENVPN   >>   "$IP
else
    echo $IP
fi

