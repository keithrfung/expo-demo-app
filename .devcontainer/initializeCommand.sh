#!/bin/bash
echo "Gathering you ip for dev container"

##############################################################################################
# en (Ethernet) - ib (InfiniBand) - sl (Serial line IP (slip)) - wl (Wireless local area network (WLAN)) - ww (Wireless wide area network (WWAN))
#############################################################################################
# if darwin or windows use ipconfig
# if linux use ifconfig

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    ip=`ifconfig getifaddr en0`
elif [[ "$OSTYPE" == "darwin"* ]]; then
    ip=`ipconfig getifaddr en0`
else
    ip=`ip -o route get to 8.8.8.8 | sed -n 's/.*src \([0-9.]\+\).*/\1/p'`
fi

echo "REACT_NATIVE_PACKAGER_HOSTNAME=$ip" > .devcontainer/.env
