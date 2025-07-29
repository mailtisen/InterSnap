#!/bin/bash
REQ_JSON="interop_exchange/request-N1.json"
TXID=$(jq -r '.txId' "$REQ_JSON")
SRC_NET=$(jq -r '.sourceNetwork' "$REQ_JSON")
DATA=$(jq -r '.testData' "$REQ_JSON")
REQ_STR="REQ_${TXID}_${SRC_NET}_${DATA}"
./bin/fabric-cli interop --local-network=network1 --requesting-org=Org1MSP "relay-network2:9083/network2/mychannel:simplestate:Create:$REQ_STR"
