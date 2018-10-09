#!/bin/bash
# Author: Adam Bull
# Date: 09/10/2018
# Description: This script downloads the ethereum blockchain data
# to presto-db hive worker nodes in a coordinator cluster 
# or for use as a single presto-db co-ordinator and worker server
# it saves users having to generate this CSV data themselves since
# the only way to do that is to run an ethereum fullnode and RPC which is quite time consuming
# and costs money. The goal of this project is to create a lightweight blockchain manager prototype for the means
# of synchronising blockchain data easily and making it accessible to all


# Retrieve ethereum-etl blockchain data
# prototype for a larger system

echo "Ethereum Blockchain Repository Manager v0.01"
sleep 2;

# Directory ran locally at marketwizards for the process to create manifests
cd ~
wget http://repo.marketwizards.io/manifest/all.manifest -P .marketwizards/manifest

while IFS='' read -r line || [[ -n "$line" ]]; do

filename="$line"
dirname=${filename%/*}
wget "http://repo.marketwizards.io/$line" -P ".marketwizards/$dirname"
done < .marketwizards/manifest/all.manifest

