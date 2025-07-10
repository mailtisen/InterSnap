#!/bin/bash

#scp -r -i "/home/user/Work_TS/AWS_KeyPair_For_Latest/test3keypair.pem" ubuntu@ec2-13-232-237-74.ap-south-1.compute.amazonaws.com:/home/ubuntu/ts/fabric-samples/test-network/AWS_Snapshots/ ./AWS_Snapshots
cp -r -i "/home/user/Work_TS/AWS_KeyPair_For_Latest/test3keypair.pem"  ./AWS_Snapshots/*.* ubuntu@ec2-13-232-237-74.ap-south-1.compute.amazonaws.com:/home/ubuntu/ts/fabric-samples/test-network/AWS_SnapshotsUplod