#!/bin/bash
# build manifest

# local process to build manifest

echo "Building Ethereum Blocks Manifest File"
sleep 2
find blocks/ -type f | grep csv | sort -n > manifest/block.manifest
find contract_addresses/ -type f | sort -n > manifest/contract_addresses.manifest
find contracts/ -type f | grep csv | sort -n > manifest/contracts.manifest
find logs/ -type f | grep csv | sort -n > manifest/logs.manifest
find receipts/ -type f | grep csv | sort -n > manifest/receipts.manifest
find token_addresses/ -type f |  sort -n > manifest/token_addresses.manifest
find tokens/ -type f | grep csv | sort -n > manifest/tokens.manifest
find token_transfers/ -type f | grep csv | sort -n > manifest/token_transfers.manifest
find transaction_hashes/ -type f | grep csv | sort -n > manifest/transaction_hashes.manifest
find transactions/ -type f | grep csv | sort -n > manifest/transactions.manifest

# We will in future versions offer synchronising partial tables, however
# for now we will bulk the manifests into a single file for simplicity
# and alter the mwserver and mwclient shellscript prototypes to use
# an all.manifest instead in the meantime

rm manifest/all.manifest
cat manifest/*.manifest > manifest/all.manifest

