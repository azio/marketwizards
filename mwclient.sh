#!/bin/bash
# Retrieve ethereum-etl blockchain data
# prototype for a larger system

echo "Ethereum Blockchain Repository Manager v0.01"
sleep 2;

# Directory ran locally at marketwizards for the process to create manifests
cd ~
wget http://repo.marketwizards.io/manifest/block.manifest -P .marketwizards/manifest

while IFS='' read -r line || [[ -n "$line" ]]; do

filename="$line"
dirname=${filename%/*}
wget "http://repo.marketwizards.io/$line" -P ".marketwizards/$dirname"
done < .marketwizards/manifest/block.manifest

