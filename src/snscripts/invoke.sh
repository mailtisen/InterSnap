#!/bin/sh
export PATH=$PATH:/usr/local/go/bin
export PATH=${PWD}/../../bin:$PATH
export FABRIC_CFG_PATH=${PWD}/../../config/
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/../organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/../organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051
d="$(date +"%d-%m-%Y")"
#go run /home/workspace/snapshotwork_code/copySnapshotFromPeer.go
peer channel getinfo -c mychannel
peer snapshot submitrequest -c mychannel -b 0 --peerAddress localhost:7051 --tlsRootCertFile ${PWD}/../organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
docker cp peer0.org1.example.com:/var/hyperledger/production/snapshots/completed/mychannel/ ${PWD}/archive/$d
cp ${PWD}/archive/txnlist.dat ${PWD}/archive/$d
touch  ${PWD}/archive/filead120.txt

chmod 777 -R ${PWD}/archive/
