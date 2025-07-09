#!/bin/bash
export PATH=$PATH:/usr/local/go/bin
export PATH=${PWD}/../../bin:$PATH
export FABRIC_CFG_PATH=${PWD}/../../config/
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/../organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/../organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051
d="$(date +"%d-%m-%Y")"
#go run /home/user/Work_TS/SnapshotWork/snapshotwork_code/copySnapshotFromPeer.go
#peer channel getinfo -c mychannel
#peer channel getinfo -c mychannel| grep '{"height":' >> ${PWD}/../archive/filead120.txt
#peer channel getinfo -c mychannel | cut -d':' -f3 |cut -d',' -f1 >> ${PWD}/../archive/snapheight.txt
typeset -i curval=$(peer channel getinfo -c mychannel | cut -d':' -f3 |cut -d',' -f1)

typeset -i snapval=$(cat ${PWD}/../archive/snapheight.txt)
#$thsval=10

difval=$(($curval - $snapval))
echo "$difval"
# if ($difval>3)
if [ "$difval" -gt "$thsval" ];
then
{

peer snapshot submitrequest -c mychannel -b 0 --peerAddress localhost:7051 --tlsRootCertFile ${PWD}/../organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
docker cp peer0.org1.example.com:/var/hyperledger/production/snapshots/completed/mychannel/ ${PWD}/../archive/$d
chmod 777 -R ${PWD}/../archive/
echo "$curval" > ${PWD}/../archive/snapheight.txt

}
fi
docker exec peer0.org1.example.com rm -rf /var/hyperledger/production/snapshots/completed/mychannel/5008
#docker exec peer0.org1.example.com rm -rf /var/hyperledger/production/snapshots/completed/mychannel/*.*

