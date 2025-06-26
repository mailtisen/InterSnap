#!/bin/bash
export PATH=$PATH:/usr/local/go/bin
export PATH=${PWD}/../../bin:$PATH
export FABRIC_CFG_PATH=${PWD}/../../config/
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/../organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/../organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051
#peer channel getinfo -c mychannel
# pushd ${PWD}/../../fabcar/javascript/

# node ${PWD}/../../fabcar/javascript/invoke.js

max=5
# for i in {1..$max}
# do
#    pushd ${PWD}/../../fabcar/javascript/
#    node ${PWD}/../../fabcar/javascript/invoke.js
  
# done
pushd ${PWD}/../../fabcar/javascript/
for (( i=1; i <= $max; i++ ))
do
  
   node ${PWD}/../../fabcar/javascript/invoke.js
done

node ${PWD}/../../fabcar/javascript/query.js > txnlist.dat

cp txnlist.dat /home/user/Work_TS/SnapshotWork/fabric-samples/test-network/snapshotscripts/archive/
popd



