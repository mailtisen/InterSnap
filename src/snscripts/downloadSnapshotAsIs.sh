#!/bin/bash
#  ssh -i "/home/user/Work_TS/AWS_KeyPair_For_Latest/test3keypair.pem" ubuntu@ec2-13-232-237-74.ap-south-1.compute.amazonaws.com
# export PATH=$PATH:/usr/local/go/bin
# export PATH=${PWD}/../../bin:$PATH
# export FABRIC_CFG_PATH=${PWD}/../../config/
# export CORE_PEER_TLS_ENABLED=true
# export CORE_PEER_LOCALMSPID="Org1MSP"
# export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/../organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
# export CORE_PEER_MSPCONFIGPATH=${PWD}/../organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
# export CORE_PEER_ADDRESS=localhost:7051
# d="$(date +"%d-%m-%Y")"
# peer snapshot submitrequest -c mychannel -b 0 --peerAddress localhost:7051 --tlsRootCertFile ${PWD}/../organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
# docker cp peer0.org1.example.com:/var/hyperledger/production/snapshots/completed/mychannel/ ${PWD}/../AWS_Snapshots/$d
# chmod 777 -R ${PWD}/../AWS_Snapshots/
# rm -rf ${PWD}/../AWS_Snapshots/
# #scp -i "/home/user/Work_TS/AWS_KeyPair_For_Latest/test3keypair.pem" ubuntu@ec2-13-232-237-74.ap-south-1.compute.amazonaws.com:/ubuntu@ubuntu@ec2-13-126-57-23.ap-south-1.compute.amazonaws.com:/home/ubuntu/ts/fabric-samples/test-network/snapshotscripts/archive/ ./AWS_Snapshots
# exit
scp -r -i "/home/user/Work_TS/AWS_KeyPair_For_Latest/test3keypair.pem" ubuntu@ec2-65-1-133-234.ap-south-1.compute.amazonaws.com:/home/ubuntu/ts/fabric-samples/test-network/AWS_Snapshots/ ./AWS_Snapshots
