#!/bin/bash
RESP_JSON="interop_exchange/response-N2.json"
TXID=$(jq -r '.txId' "$RESP_JSON")
REF_TXID=$(jq -r '.refTxIdFromN1' "$RESP_JSON")
RESP_VAL=$(jq -r '.testResponse' "$RESP_JSON")
peer chaincode invoke -n interop_cc_n2 -C mychannel -c "{\"function\":\"SaveResponse\",\"Args\":[\"$TXID\", \"$REF_TXID\", \"$RESP_VAL\"]}"
