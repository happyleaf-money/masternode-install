#!/bin/bash
apt-get update --yes && apt-get install --yes build-essential libtool autotools-dev autoconf pkg-config libssl-dev libboost-all-dev libevent-dev wget software-properties-common
add-apt-repository --yes ppa:bitcoin/bitcoin && apt-get update
apt-get install --yes libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libzmq3-dev git jq

wget https://github.com/happyleaf-money/happyleaf/releases/download/4.3.1.0/happyleafd && chmod 744 happyleafd
wget https://github.com/happyleaf-money/happyleaf/releases/download/4.3.1.0/happyleaf-cli && chmod 744 happyleaf-cli


rpcuser="happyleaf"
rpcpassword="oY06p4d$UI"

clear
if [ -z "$1" ]; then 
   #if empty => ask
   read -p "PLESE ENTER MASTERNODE PRIVATE KEY: "  mnkey
else
   mnkey=$1
fi
mnNUMBER=$NUMBER
./happyleafd --daemon --masternode=1 --masternodeprivkey=${mnkey} --rpcuser=${rpcuser} --rpcpassword=${rpcpassword}

